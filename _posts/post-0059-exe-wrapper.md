% 封装说明
% TANG ZhiXiong
% 2015-08-11

封装说明
========

<div style="background-color: violet; text-align:center;color:white;font-size:24px">UI -- Wrapper(Class) -- TCP/IP -- Wrapper(Class)</div>

```seq
title: 封装示意图（忽略了界面同步部分）
主UI->主Wrapper: 所有 UI 操作\n由 Wrapper 接管
note right of 主Wrapper: 本机执行？\n是
主Wrapper->主Class: 直接调用
主Class->主Wrapper: 捕获结果
主Wrapper->主UI: 在界面上有所反映
note right of 主Wrapper: 本机执行？\n否
主Wrapper->主Socket: 把调用函数和参数\n传递到另一台电脑
主Socket->从Socket: TCP 通讯\n程序运行时\n已经建立连接
从Socket->从Wrapper: 还原函数和参数，\n调用 Wrapper
从Wrapper->从Class: 直接调用
从Class->从Wrapper: 捕捉结果
note left of 从Wrapper: 异地反映？\n是\n（序列图里忽略\n了本地反映）
从Wrapper->从Socket: 回传
从Socket->主Socket:
主Socket->主Wrapper: 解析给 Wrapper
主Wrapper->主UI: 在界面上有所反映
```

<div class="sequence-diagram theme theme-white" data-anchor-id="fkxg"><svg height="940.109375" version="1.1" width="864" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.2</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><path stroke-linecap="round" d="M5,0 0,2.5 5,5z" id="raphael-marker-block" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><marker id="raphael-marker-endblock55" markerHeight="5" markerWidth="5" orient="auto" refX="2.5" refY="2.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 2.5 2.5) scale(1,1)" stroke-width="1.0000" fill="#000" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker></defs><rect x="10" y="10" width="266" height="26" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="15" y="15" width="256" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="143" y="23" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">封装示意图（忽略了界面同步部分）</tspan></text><rect x="10" y="46" width="52" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="20" y="56" width="32" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="36" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主UI</tspan></text><rect x="10" y="884.109375" width="52" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="20" y="894.109375" width="32" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="36" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主UI</tspan></text><path fill="none" stroke="#000000" d="M36,82L36,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="138" y="46" width="92" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="148" y="56" width="72" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="184" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主Wrapper</tspan></text><rect x="138" y="884.109375" width="92" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="148" y="894.109375" width="72" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="184" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主Wrapper</tspan></text><path fill="none" stroke="#000000" d="M184,82L184,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="276" y="46" width="76" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="286" y="56" width="56" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="314" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主Class</tspan></text><rect x="276" y="884.109375" width="76" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="286" y="894.109375" width="56" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="314" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主Class</tspan></text><path fill="none" stroke="#000000" d="M314,82L314,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="372" y="46" width="84" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="382" y="56" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="414" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主Socket</tspan></text><rect x="372" y="884.109375" width="84" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="382" y="894.109375" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="414" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">主Socket</tspan></text><path fill="none" stroke="#000000" d="M414,82L414,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="488" y="46" width="84" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="498" y="56" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="530" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">从Socket</tspan></text><rect x="488" y="884.109375" width="84" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="498" y="894.109375" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="530" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">从Socket</tspan></text><path fill="none" stroke="#000000" d="M530,82L530,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="646" y="46" width="92" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="656" y="56" width="72" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="692" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">从Wrapper</tspan></text><rect x="646" y="884.109375" width="92" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="656" y="894.109375" width="72" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="692" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">从Wrapper</tspan></text><path fill="none" stroke="#000000" d="M692,82L692,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="758" y="46" width="76" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="768" y="56" width="56" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="796" y="64" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">从Class</tspan></text><rect x="758" y="884.109375" width="76" height="36" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="768" y="894.109375" width="56" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="796" y="902.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">从Class</tspan></text><path fill="none" stroke="#000000" d="M796,82L796,884.109375" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="50" y="89.390625" width="120" height="35.21875" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="110" y="107" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-3.6015625">所有 UI 操作</tspan><tspan dy="19.2" x="110" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">由 Wrapper 接管</tspan></text><path fill="none" stroke="#000000" d="M36,137.21875C36,137.21875,153.13820266723633,137.21875,178.99097005277872,137.21875" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="204" y="157.21875" width="90" height="45.21875" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="209" y="162.21875" width="80" height="35.21875" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="249" y="179.828125" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-3.6015625">本机执行？</tspan><tspan dy="19.2" x="249" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">是</tspan></text><rect x="217" y="219.4375" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="249" y="227.4375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">直接调用</tspan></text><path fill="none" stroke="#000000" d="M184,238.4375C184,238.4375,285.1484843492508,238.4375,309.0033270937274,238.4375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="217" y="255.4375" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="249" y="263.4375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">捕获结果</tspan></text><path fill="none" stroke="#000000" d="M314,274.4375C314,274.4375,212.8515156507492,274.4375,188.99667290627258,274.4375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="46" y="291.4375" width="128" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="110" y="299.4375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">在界面上有所反映</tspan></text><path fill="none" stroke="#000000" d="M184,310.4375C184,310.4375,66.86179733276367,310.4375,41.00902994722128,310.4375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="204" y="330.4375" width="90" height="45.21875" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="209" y="335.4375" width="80" height="35.21875" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="249" y="353.046875" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-3.6015625">本机执行？</tspan><tspan dy="19.2" x="249" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">否</tspan></text><rect x="235" y="383.046875" width="128" height="35.21875" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="299" y="400.65625" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-3.6015625">把调用函数和参数</tspan><tspan dy="19.2" x="299" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">传递到另一台电脑</tspan></text><path fill="none" stroke="#000000" d="M184,430.875C184,430.875,375.44945561885834,430.875,409.0091990598594,430.875" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="424" y="428.671875" width="96" height="54.40625" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="472" y="455.875" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-13.203125">TCP 通讯</tspan><tspan dy="19.2" x="472" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">程序运行时</tspan><tspan dy="19.2" x="472" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">已经建立连接</tspan></text><path fill="none" stroke="#000000" d="M414,505.28125C414,505.28125,502.7629463672638,505.28125,524.9970242414856,505.28125" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="547" y="512.671875" width="128" height="35.21875" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="611" y="530.28125" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-3.6015625">还原函数和参数，</tspan><tspan dy="19.2" x="611" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">调用 Wrapper</tspan></text><path fill="none" stroke="#000000" d="M530,560.5C530,560.5,659.7009259462357,560.5,686.9963844827726,560.5" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="712" y="577.5" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="744" y="585.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">直接调用</tspan></text><path fill="none" stroke="#000000" d="M692,596.5C692,596.5,770.2535157203674,596.5,791.0013961091172,596.5" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="712" y="613.5" width="64" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="744" y="621.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">捕捉结果</tspan></text><path fill="none" stroke="#000000" d="M796,632.5C796,632.5,717.7464842796326,632.5,696.9986038908828,632.5" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="550" y="652.5" width="122" height="83.609375" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="555" y="657.5" width="112" height="73.609375" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="611" y="694.3046875" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="-22.796875">异地反映？</tspan><tspan dy="19.2" x="611" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">是</tspan><tspan dy="19.2" x="611" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">（序列图里忽略</tspan><tspan dy="19.2" x="611" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">了本地反映）</tspan></text><rect x="595" y="753.109375" width="32" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="611" y="761.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">回传</tspan></text><path fill="none" stroke="#000000" d="M692,772.109375C692,772.109375,562.2990740537643,772.109375,535.0036155172274,772.109375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="0" y="0" width="0" height="0" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="472" y="797.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="797.109375"></tspan></text><path fill="none" stroke="#000000" d="M530,792.109375C530,792.109375,441.2370536327362,792.109375,419.00297575851437,792.109375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="243" y="809.109375" width="112" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="299" y="817.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">解析给 Wrapper</tspan></text><path fill="none" stroke="#000000" d="M414,828.109375C414,828.109375,222.55054438114166,828.109375,188.99080094014062,828.109375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="46" y="845.109375" width="128" height="16" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="110" y="853.109375" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-size: 16px; line-height: normal; font-family: 'Andale Mono', monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">在界面上有所反映</tspan></text><path fill="none" stroke="#000000" d="M184,864.109375C184,864.109375,66.86179733276367,864.109375,41.00902994722128,864.109375" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path></svg></div>

* 主：Master，操作的界面（高性能平台）
* 从：Slave，另一台电脑（工控机）

程序只有一个，运行在两个电脑上，一个为 Master，一个为 Slave，TCP 连接建立后。操作 Master 的 UI，执行可能在

* 本机（Master），也可能在
* 另一台电脑（Slave）。

对 UI 而言，无所谓执行发生在哪台电脑（实现细节被 Wrappers 屏蔽）。

Wrapper 主要做了两件事：

#. 判断执行应该在**本机**还是**异地**，并调用本地或异地的**类执行实体**
#. 接受 Class 或者 Socket 传来的结果，并 emit 相应的信号（二传手）

> Wrapper 和 Class 有几乎相同的调用接口，
> 所以原来在单电脑上的程序只要简单修改即可。

对程序的要求：

#. 要避免直接获取 Class 的返回值（返回值难以跨电脑），而是采用 emit 信号的方式
#. Class 的信号由 Wrapper 完全接管，重新发射信号（信号名称保持不变）。
#. UI 的变化，都是通过接受 Wrapper 的信号。

---

# 新的预操作流程

![主程序运行后，先要选择自己是 Master（高性能平台）还是 Slave（工控机）](http://gnat.qiniudn.com/wrappers/master_slave.png)

![高性能平台要先打开，并打开 TCP 网络服务器：（点击 `Serve`）](http://gnat.qiniudn.com/wrappers/server.png)

![再运行程序，不过这次选择 Slave，然后将工控机连接到高性能平台：（点击 `Connect`）](http://gnat.qiniudn.com/wrappers/client.png)

现在两者连接上后，界面发生变化（一些按钮可以使用，一些按钮不再能使用）。现在点击下方大按钮，可以同步两者的颜色（在红和绿直接切换）。

![关闭这两个界面会弹出一个 demo 界面，展示的如何同步两者的 UI 以及运算如何分布在两台电脑上](http://gnat.qiniudn.com/wrappers/sync.png)

可以看到，

#. “加法”运行在高性能平台上，
#. “乘法”运行在工控机上。

同时，界面是同步的。下面介绍如何将原有类改善，实现跨主机通讯、UI 同步。

具体的操作指南（如何修改类和 UI）
--------------------------------

先明确几个概念，

类（Class）
:   实际的执行实体

包装（Wrapper）
:   封装了类，提供几乎一致的接口，屏蔽了跨主机的一些操作。

界面类（UI）
:   界面上，调用的虽然是 Wrappers，但和调用 Classes 的方式一致。

这里的修改指南指导了如何在 `Class 和 UI 之间插入一个封装`，在不改变（几乎）原有类的基础上实现跨主机通信。

比如从 `ui->pushButton->setText( class->getString() )`{.cpp} 改起。

首先，在 `QString Class::getString( args )`{.cpp} 中 emit 一个信号：

```cpp
emit wrp_getString( returnValue ) // 要提前定义（signals: void wrp_getString( QString text );）
```

然后参照 Class 定义一个 Wrapper，提供 ``void Wrapper::getString( args )`` 函数（几乎和原有类 Class 一模一样），

把 Class 的信号和 Wrapper 的槽连接：

```cpp
connect( class,   SIGNAL(wrp_getString(QString)),
         wrapper, SLOT(onWrp_getString(QString)) );
```

Wrapper 构造的时候会传入 Class 类实体指针，
如果 Class 在本机运行，`Wrapper::getString( args )`{.cpp} 会直接调用 `Class::getString( args )`{.cpp}，
如果 Class 在异地运行，经过判断 `Wrapper::getString( args )`{.cpp} 会把 `函数名 ID` 和参数 `args` 传到另一台电脑，
由另一台电脑的对应的 Wrapper 的 Class 实体执行 `Class::getString( args )`{.cpp}。

不管哪个电脑上执行了 Class 函数，信号都会被那个电脑的 Wrapper 捕获，然后 emit 一个同样的信号，并让另一台电脑 emit 这个信号。
即 `Wrapper::getString( args )`{.cpp} 的大致逻辑为：

```cpp
// Class 函数对应的 Wrapper 函数
void Wrapper::getString( args )
{
    if ( Class registered on THIS_COMPUTER )
    {
        // 本机执行
        this->class->getString();
    }
    else
    {
        // 异地执行（把函数名和参数传到另一台电脑）
        send `Class::getString' + `args' to the other computer
        tell THE_OTHER_COMPUTER to run: class->getString()
    }
}

// 信号所连接的槽
void onWrp_getString( QString returnValue )
{
    // 本机释放信号
    emit wrp_getString( returnValue );
    // 让异地电脑释放信号
    tell THE_OTHER_COMPUTER to: emit Wrapper::wrp_getString( returnValue )
}
```

现在，两台电脑上，有**一台**电脑执行了操作（可能是你通过 UI 交互的那一台，或者是另一台），
释放了**两个**同样的信号，只要把这个信号绑定到各自的 UI，界面就同步了：

```cpp
connect( wrapper, SIGNAL(wrp_getString(QString)),
         ui,      SLOT(onWrp_getString(QString)) );
```

最后 UI 得到这个信号，在界面上有所反映：

```cpp
void Ui::onWrp_getString( QString returnValue )
{
    ui->pushButton->setText( returnValue );
}
```

现在，<span style="color:red">UI 不再直接调用 Class，而是调用 Wrapper 的函数，</span>

需把原来的 `ui->pushButton->setText( class->getString() )`{.cpp} 换成 `wrapper->getString()`{.cpp}。

**总结一下**，原来的一句之间的 `setText`{.cpp}，变成了间接的：

#. **某一台**电脑界面的操作，导致**某一台**电脑执行 `Class` 函数
#. `Class`{.cpp} emit 信号给 `Wrapper`{.cpp}
#. `Wrapper`{.cpp} 在两台电脑 emit 信号给 `UI`{.cpp}
#. 两个 `UI`{.cpp} 得到信号，同步更新界面

其他
----

**Bundle**

所有的 Wrappers 和 UI 都在一个全局的 Bundle 中绑定。（源码位于 `Src/Wrappers/Wrappers.h`）

```cpp
/*
 * 获得实例
 */

Bundle::getInstance(); // 获得唯一的、静态的一个实例，包含了所有的大的类实例，UIs，Wrappers（Classes）

/*
 * 本机是高性能平台（Master）还是工控机（Slave）？
 */

// who am I?
Bundle::whoAmI(); // 我是谁？MASTER 还是 SLAVE？

// 可以进行判断
if ( Bundle::whoAmI() == MASTER ) {
    qDebug() << "我是高性能平台（Master）";
}

/*
 * Bundle 的东西有
 */

// 主要模块的“封装”
Bundle::getInstance()->lms              // LMS Wrapper
Bundle::getInstance()->lmsAgent         // Wrapper 用到的界面
Bundle::getInstance()->server           // 网络通信接口
Bundle::getInstance()->client           // 网络通信接口
...

// 也可以获得主要模块的“类实体”（不推荐直接调用）
Bundle::getInstance()->lms->kernel      // LMSReader 实体，可能为 NULL（如果不在本机注册）
...

/*
 * Bundle 的一些函数
 */

// 向另一台电脑发数据
Bundle::getInstance()->send( const QByteArray &msg );  // 发送数据到另一台电脑

// 数据需要满足一定的格式，可通过一个 Moderator（“翻译”）静态类/函数进行转化，如：
// 要在另一台电脑上运行 LMSReader::genNewPath( "D://tmp/" ); （LMS 注册在那台电脑上）
Bundle::getInstance()->send( Moderator::lms_genNewPath( "D://tmp/" ) );
```

**类的注册**

很简单，修改 Moderator 的一个 HashMap 即可：
```
// Master: 高性能平台
// Slave : 工控机
wss.insert(  BCD::TYPE_LMS,                             SLAVE  );
wss.insert(  BCD::TYPE_MCU,                             SLAVE  );
wss.insert(  BCD::TYPE_UR,                              SLAVE  );
wss.insert(  BCD::TYPE_ARM,                             SLAVE  );
wss.insert(  BCD::TYPE_SP20000C,                        MASTER );
wss.insert(  BCD::TYPE_MULTIPLICATION_ON_SLAVE,         SLAVE  );
wss.insert(  BCD::TYPE_ADDITION_ON_MASTER,              MASTER );
```

**How to Wrapping (live example)**

UR0 封装了 URController，源码位于 `Src/Wrappers/UR0.h`。

```cpp
class UR0 : public QObject
{
    Q_OBJECT

public:
    URController *kernel;  // kernel 变量为封装的对象

private:
    bool doItYourself;

public:
    UR0( URController *ur0 = NULL );
```

构造函数基本如下：

```cpp
UR0::UR0( URController *ur0 /* = NULL */ )
{
    // 类执行实体
    kernel = ur0;

    // 判断是否在本机执行
    doItYourself = Moderator::wss.value( BCD::TYPE_UR ) == Bundle::whoAmI();

    /*
     * 说明：
     *          Moderator::wss: 记录了所有模块的注册信息（在高性能执行，还是在工控机），
     *                          新加的模块也要去注册，源码在 `Src/Utils/moderator.cpp'
     *          Bundle::whoAmI(): 本机是高性能还是工控机？
     */

    // 如挂在本机执行，但执行实体为 NULL，说明没有正确初始化
    if ( doItYourself && NULL == kernel ) {
        Logger::log() << "Fatal Error";
        exit( EXIT_FAILURE );
    }

    // 连接“实体”原有的信号到“封装”的槽，重新 emit 信号 & 分发到两台电脑
    connect ( kernel, SIGNAL(wrp_getLocalAddress(QString)),
              this,   SLOT(onWrp_getLocalAddress(QString)) );
}
```

这个 `wrp_getLocalAddress(QString)`{.cpp} 信号是对 `QString URControllor::getLocalAddress()`{.cpp} 的封装，
在保持原有类返回值的情况下，在函数内部 emit 信号，这里连接后被 UR0 捕捉，重新发射信号（在两台电脑）：

```cpp
void UR0::onWrp_getLocalAddress( QString addr )
{
    // 在本机 emit 信号（本机界面可以捕获）
    emit wrp_getLocalAddress( addr );
    // 在异地 emit 信号（异地界面可以捕获）
    Bundle::send( Moderator::sig_ur_wrp_getLocalAddress( addr ) );
}
```

`Bundle::send`{.cpp} 会把函数和参数传到另一台电脑，再次发射信号。

所有的 Moderator 的函数（如这里的 `Moderator::sig_ur_wrp_getLocalAddress( QString )`{.cpp}）
要现在 Moderator 里指定一个函数 ID（用于区分不同函数），ID 命名规则为：`模块名__FUNCTION_NAME__TYPE1_TYPE2`

举例：

```plain
// ur 模块，genNewPath 函数，QString 类型参数
UR__GEN_NEW_PATH__QSTRING

// ur 模块，genNewPath 函数，无类型参数也要显式地表明 VOID
UR__GEN_NEW_PATH__VOID

// 信号的模块名为 SIG_模块名__函_数_名__参_数_名，如
SIG_UR__WRP_GET_LOCAL_ADDRESS__QSTRING

// lms 模块，setFrequencyAngleresolution 函数，参数为 int、double
LMS__SET_FREQUENCY_ANGLERESOLUTION__INT_DOUBLE

// 上面的函数 ID 对应的函数依次为：
//
//     static QByteArray ur_genNewPath( const QString &path );
//     static QByteArray ur_genNewPath( )
//     static QByteArray sigUR_wrp_getLocalAddress( const QString &addr )
//     static QByteArray lms_setFrequencyAngleresolution( const int i, const double &d )
```

指定了函数 ID 后要把对应的函数和参数序列化为一串字节，需要定义一个静态函数，返回值为 QByteArray，
比如上面的 `UR__GEN_NEW_PATH__QSTRING`{.cpp}，对应的函数为：

```cpp
// .h 文件中申明
static QByteArray ur_genNewPath( const QString &path );

// .cpp 文件中实现
QByteArray Moderator::ur_genNewPath( const QString &path )
{
    TX_OUT << (int)UR__GEN_NEW_PATH__QSTRING  // 传入函数 ID，强制转化为 int 型
           << path;                           // 传入调用的参数
    return tx;                                // 这里的宏 TX_OUT 和 return tx 不必深究
}
```

这样就能顺利地用 `Bundle::send( Moderator::ur_genNewPath( path ) )`{.cpp} 把信息传递到另一台电脑。

不过，还得写解析部分。对收到的网络数据，要分析是**要调用什么函数**，还要还原**参数**，
这部分在 `void Moderator::dispatch( QByteArray &msg )`{.cpp} 函数中定义，
比如上面的 `Moderator::ur_genNewPath( const QString &path )`{.cpp} 在 dispatch 函数中就是：

```cpp
// 已经提取了函数 ID 到 flag
// 如果函数 ID 为 UR__GEN_NEW_PATH__QSTRING
else if ( UR__GEN_NEW_PATH__QSTRING == flag )
{
    // 参数为 QString，那就定义一个 QString
    QString path;
    // 从网络中取出 QString 类型的路径
    in >> path;
    // 让本地的“类执行”实体去调用这个函数
    Bundle::getInstance()->ur->genNewPath( path );

    /*
     * 补充说明：
     *     这里也可直接调用 `Bundle::getInstance()->ur->kernel->genNewPath( path )'
     *     但并不推荐这样做（Wrapper 为判断调用是否合法，kernel 不会）。
     */
}
```

然后，把模块加到 Bundle 里，比如 UR，则到 `Bundle` 类中加入变量：

```cpp
// 加入变量
class Bundle
{
    ...

    UR0 *ur;

    ...
};

// 初始化，在
Bundle Bundle::initInstance( )
{
    Bundle bundle;
    ...

    bundle.ur = NULL;

    ...

    return bundle;
}

// 在 main.cpp 中初始化（参考 `Src/MasterSlave/main.cpp'）
Bundle::getInstance()->ur = Bundle::whoAmI() == Moderator::wss.value( BCD::TYPE_UR )
                          ? new UR0( new URController )
                          : new UR0;
```

封装流程完毕。总结，需要做的事情有：

#. 注册 Class 的执行（在高性能平台还是公共机？）
#. 对 Class 封装一个 Wrapper，把原来带返回值的函数变成 emit 信号的方式
#. 把 Wrapper 所有的函数，都在 Moderator 中 `定义函数 ID`、`序列化函数`、`解析和 dispatch`
#. 把 Wrapper 型指针加到 Bundle 中，并写好初始化函数。