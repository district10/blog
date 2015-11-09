/*
ToDo: 
FILTER: correct handling of non-alpha characters
STM: weird behavior when using double shift chars as in JJA-JJANG-MYEON
STM: immediately after backspace, STM seems to be in wrong state to produce new character (or maybe just the pke is missing)
STM: numerals are seemingly interpreted as characters sometimes...this is problematic :/
STM: what to do when actual character button is pressed together wirth alt or something to create a new character? allow it?
STM: allow normal processing as hangul only if alpha or alpha + shift. 
STM: control keys, numerals, symbols cause symbol termination and backspace delete or something is passed through to system
POP: Check if previous character is hangul, otherwise dont pop! 
     (or instead check if 
FILTER: keymap doesnt account for simultaneously pressed keys!
GENERAL: BEAT GOOGLE's 3911 bytes

*/

var hangul = (function () {
	var ini="", mid="", fin="",tmp=""; //three parts to a letter
	var _; //This will be our  input element

	var s; //new state variable
	function init(id){
				_ = document.getElementById(id);
				_.addEventListener("keydown", keyFilter, false);
				s=0;
		
	}
	
	var lut = {	q:"ㅂ",w:"ㅈ", e:"ㄷ",r:"ㄱ",t:"ㅅ",y:"ㅛ",u:"ㅕ",i:"ㅑ",o:"ㅐ",p:"ㅔ",
				a:"ㅁ",s:"ㄴ",d:"ㅇ",f:"ㄹ", g:"ㅎ", h:"ㅗ",j:"ㅓ", k:"ㅏ", l:"ㅣ",
				z:"ㅋ",x:"ㅌ",c:"ㅊ",v:"ㅍ",b:"ㅠ", n:"ㅜ", m:"ㅡ",
				Q:"ㅃ",W:"ㅉ",E:"ㄸ", R:"ㄲ", T:"ㅆ", Y:"ㅛ", U:"ㅕ", I:"ㅑ", O:"ㅒ", P:"ㅖ",
				A:"ㅁ", S:"ㄴ", D:"ㅇ", F:"ㄹ", G:"ㅎ", H:"ㅗ", J:"ㅓ", K:"ㅏ", L:"ㅣ",
				Z:"ㅋ", X:"ㅌ", C:"ㅊ", V:"ㅍ", B:"ㅠ", N:"ㅜ", M:"ㅡ",
				};

	var lutI = {q:8,w:13, e:4,r:1,t:10,
				a:7,s:3,d:12,f:6, g:19,
				z:16,x:17,c:15,v:18,
				Q:9,W:14,E:5, R:2, T:11, 
				A:7, S:3, D:12, F:6, G:19,
				Z:16, X:17, C:15, V:18
				};	
				
	var lutM = { //$ sign denotes space / no 2nd vowel
				$:1,
				//plain vowels
				y:13,u:7,i:3,o:2,p:6,
	 			h:9,j:5, k:1, l:21,
	 			b:18, n:14, m:19,
				Y:13, U:7, I:3, O:4, P:8,
	  			H:9, J:5, K:1, L:21,
	   			B:18, N:14, M:19,
				//complex vowels
				hk:10, hK:10, Hk:10 ,HK:10,
				ho:11, Ho:11,
				hl:12, hL:12, Hl:12,HL:12,
				nj:15, Nj:15, nJ:15,NJ:15,
				np:16, Np:16,
				nl:17, Nl:17, nL:17, NL:17,
				ml:20, Ml:20, mL:20, ML:20
				};	
				
	var lutF = { //$ sign denotes space / no final 
				$:0,
				//plain vowels
				r:1,
				s:4, S:4,
				e:7,
				f:8,F:8,
				a:16, A:16,
				q:17,Q:17,
				t:19,
				d:21,D:21,
				w:22,
				c:23,C:23,
				z:24,Z:24,
				x:25,X:25,
				v:26,V:26,
				g:27,G:27,
				
				//complex finals
				R:2,
				rt:3,
				sw:5, sw:5,
				sg:6, Sg:6, sG:6, SG:6,
				fr:9, Fr:9,
				fa:10, Fa:10, fA:10, FA:10,
				fq:11, Fq:11,
				ft:12, Ft:12, 
				fx:13, Fx:13, fX:13, FX:13,
				fv:14, Fv:14, fV:14, FV:14,
				fg:15, Fg:15, fG:15, FG:15,
				qt:18,
				T:20
				};
				
	
	
	//transfer table mid2elevation(m2e) to check for transfer of states MID1->MID2
	var m2e = {h:"kKolL",H:"kKolL",n:"lLjJp",N:"lLjJp", m:"Ll", M:"Ll"}; //meaning on h(ㅗ) and H(ㅗ) there may follow kKolL (ㅏㅏㅐㅣㅣ) 
	//transfer table fin2elevation(f2e) to check for transfer of states FIN1->FIN2
	var f2e = {r:"t",s:"wgG", S:"wgG", f:"raAqtxXgG", F:"raAqtxXgG", q:"t"}
	
	//This shall filter events such as shift, alt, enter, backspace and let only alphanumeric pass through
	function keyFilter(e){
		//get keymappings for alpha and backspace, passthrough everything else
		//1: consonants,
		//2: vowels
		//3: passthrough keys that should finalize the character
		// 4: backspace
		//5: passthrough keys that should not go to STM
		var t = e.keyCode in keymap ? keymap[e.keyCode] : 3; 
		var c = !e.shiftKey ? String.fromCharCode(e.keyCode).toLowerCase() : String.fromCharCode(e.keyCode);
		var z;
			
		
		
		//lutM and lutF can be simplified by lowercasing them before insertion 
		//DRAW CURRENT STATEMACHINE ON PAPER AND FIGURE OUT IF IT CANT BE SIMPLIFIED
		//(ESPECIALLY THOSE TWO TEMPORARY VARS AND FINX FINY states (maybe can be removed by adding additional state transfer functions)
		//lut can be eliminated if we manage to  calculate build (initial only without the table)
	
		
		//if key was alpha or backspace, pass into stm
		if(t != 5)
		{
			console.log("state before:"+s + "event:"+t );
		
			z = stm[s][t][1](c);
			s = (z == null) ? stm[s][t][0] : z; //if state transfer func returned something, discard transition table result
			console.log("state after :"+s+"event:"+t +" ini:" + ini + " mid:" + mid +" fin:"+fin+ " ("+build(ini,mid,fin)+")");
		}
		//prv();
  		//prevent default if keypress was alpha
		if(t == 0 || t == 1 || t==2)
			e.preventDefault();
				
		return false;
  	}
  	//Mapping function for input keys (use keycodes instead of alpha chars, so it'll be internationally compatible without additional mapping
	//EVENT: N(0)ALPHA NIEUNG 
	//EVENT: V(1) ALPHA VOWEL
	//EVENT: C(2) ALPHA CONSONANT
	//EVENT: P(3) Passthrough key(every non alpha except backspace)
	//EVENT: B(4) BACKSPACE
	
	var keymap = {	81:2,87:2, 69:2,82:2,84:2,89:1,85:1,73:1,79:1,80:1, //q..p
					65:2,83:2,68:0,70:2, 71:2, 72:1,74:1, 75:1, 76:1,  //a...l
					90:2,88:2,67:2,86:2,66:1, 78:1, 77:1,				//z...m
					8:4,
					//we need to differentiate between ctrl,shift,alt (which shall NOT be passed into the statemachine!)
					//Those will cancel/finalize the character prematurely 
					16:5, //Shift
					18:5, //Alt
					17:5, //Ctrl
					91:5, //CMDL
					93:5  //CMDR
				 }
				 				 
	//finalize char (output and clear)
  	function put(){	_.value = _.value + build(ini,mid,fin);ini = "";mid = "";fin = "";}
  	//finalize char (output)
  	function pke(){_.value = _.value + build(ini,mid,fin);}
  	function pke2(){_.value = _.value + build(ini,mid,fin+tmp);}
  	//remove last char from input element
  	function pop(){_.value = _.value.length > 0? _.value.substring(0,_.value.length-1) : _.value;}
  	//preview character
  	function prv(){pop();pke();}
  	//preview char (build, overwrite last if and output);
  	//checks if the already is one, otherwise error on first inser
  	//function prv(){_.value = _.value.length > 0? _.value.substring(0,_.value.length-1) +  build(ini,mid,fin) : build(ini,mid,fin) }
  	//function prv2(){_.value = _.value +  build(ini,mid,fin)};
  	//throw away current char
  	//vf2 : //Case when typing  ㄱ ㅏ ㄴ ㅏ (ㄱ,가,간,가나 )
  	//cf2: important to spell for example ibnida right
  	/*
  	function clr(){ini = "";mid = "";fin = "";tmp = "";}
	function nul(c){}
	function vm2(c){if(allowedM(c))mid +=c; } // delete last preview, preview
	function cm1(c){mid+="$"; fin+="$";put();ini=c;} //delete last preview, preview
	function pm1(c){mid+="$"; fin+="$";put();} // delete last preview, put, do nothing
	function nf2(c){put();ini+=c;} //delete last preview, put, preview 
	function vf2(c){var kx=fin;fin="$";put();ini=kx;mid=c;}  //delete last preview, put, preview next
	function cf2(c){if(allowedF(c)){tmp=c;return 6;}else{put();ini=c;return 1;}}  // build preview out of ini mid and final+tmp as final
	function vfx(c){fin="$";put();ini+=tmp;mid+=c;} //delete last preview, put, preview
	function cfx(c){fin+=tmp;put();ini+=c;} //delete last preview, put, preview 
	function vfy(c){put();ini+=tmp;mid+=c;} //delete preview, put, preview
	function vm1(c){mid+=c;} //delete last preview, preview
	function c1(c){ini+=c;}
	function c2(c){fin+=c;}
	function c3(c){fin+=c;}
	function bm2(c){}
	function bf1(c){}
	function bf2(c){}
	function bfx(c){}
	function bm1(c){}
	function bfy(c){}
	function c4(c){fin+="$";put();}
	function c5(c){put();}
	function c6(c){tmp=c;}
	function c7(c){fin+=tmp;put();ini+=c;} 
	function c8(c){fin+=tmp;put();}
	*/
	function clr(){ini = "";mid = "";fin = "";tmp = "";}
	function nul(c){}
	function vm2(c){if(allowedM(c)){pop();mid +=c;pke();} } // delete last preview, preview
	function cm1(c){pop();mid+="$"; fin+="$";put();ini=c;pke();} //delete last preview, put, preview
	function pm1(c){pop();mid+="$"; fin+="$";put();} // delete last preview, put, do nothing
	function nf2(c){pop();put();ini+=c;pke();} //delete last preview, put, preview 
	function vf2(c){pop();var kx=fin;fin="$";put();ini=kx;mid=c;pke();}  //delete last preview, put, preview next
	function cf2(c){if(allowedF(c)){pop();tmp=c;pke2();return 6;}else{pop();put();ini=c;pke();return 1;}}  // build preview out of ini mid and final+tmp as final
	function vfx(c){pop();fin="$";put();ini+=tmp;mid+=c;pke();} //delete last preview, put, preview
	function cfx(c){pop();fin+=tmp;put();ini+=c;pke();} //delete last preview, put, preview 
	function vfy(c){pop();put();ini+=tmp;mid+=c;pke();} //delete preview, put, preview
	function vm1(c){pop();mid+=c;pke();} //delete last preview, preview
	function c1(c){ini+=c;pke();}
	function c2(c){pop();fin+=c;pke();}
	//function c3(c){pop();fin+=c;pke();}
	function c3(c){pop();}
	function bm2(c){}
	function bf1(c){}
	function bf2(c){}
	function bfx(c){}
	function bm1(c){}
	function bfy(c){}
	//function c4(c){pop();fin+="$";put();pke();}
	function c4(c){pop();fin+="$";put();}
	function c5(c){pop();put();}
	function c6(c){pop();tmp=c;pke2();}
	function c7(c){pop();fin+=tmp;put();ini+=c;pke();} 
	function c8(c){pop();fin+=tmp;put();}
	
	
	
  	//EVENT: N(0) ALPHA NIEUNG 
	//EVENT: V(1) ALPHA VOWEL
	//EVENT: C(2) ALPHA CONSONANT
	//EVENT: P(3) Passthrough key(every non alpha except backspace)
	//EVENT: B(4) BACKSPACE
	//'x' for state number denotes that state is returned by transition function and isn't fixed.
	//we could always return it from the transition function, but then would use up too much space by writing 'return' over 
	//and over and not being able to merge functions as they'd have different returns albeit same code.
	//				  N       V       C         P       B
	var stm = 	[	[[1,c1], [0,nul],[1,c1],   [0,c3], [0,nul]],  //0 STATE_INIT
					[[0,c2], [2,vm1],[1,cm1],  [0,pm1],[0,bm1]],  //1 STATE_MID1
					[[5,c6], [3,vm2],[4,c2],   [0,c4], [0,bm2]],  //2 STATE_MID2
					[[5,c6], [0,c5], [4,c2],   [0,c4], [0,bf1]],  //3 STATE_FIN1
					[[1,nf2],[2,vf2],['x',cf2],[0,c5], [0,bf2]],  //4 STATE_FIN2
					[[1,c7], [2,vfx],[1,cfx],  [0,c8], [0,bfx]],  //5 STATE_FINX
					[[1,c7], [2,vfy],[1,c7],   [0,c8], [0,bfy]]   //6 STATE_FINY
				];	

  	function allowedM(c){
  		if(mid in m2e)
  			if(m2e[mid].indexOf(c) != -1)
  				return true;
  		return false;
  	}
  	function allowedF(c){
  		if(fin in f2e)
  			if(f2e[fin].indexOf(c) != -1)
  				return true;
  		return false;
  	}
  	//Build character preview for debugging
  	function build(i,m,f){
  		var hangul;
  		if(m=="")m="$";
  		if(f=="")f="$";
  		if(m=="$" && f == "$")
  			hangul = lut[i];
  		else
      		hangul = String.fromCharCode((lutI[i]-1)*588 + (lutM[m]-1)*28 + lutF[f]+44032);       
    
    	return hangul;
  	}  
  	
  	// Return an object containing pointers to private functions
    return {
        init: init
    };

})();
   
