---
title: C & C++ Notes
date: 2016-04-21
keywords:
tags:
    - c
    - cpp
...

C & C++ Notes
=============
[C (programming language) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/C_(programming_language))

:   nil.

[C++ - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/C%2B%2B)

:   C++ (pronounced as cee plus plus, `/ˈsiː plʌs plʌs/`) is a general-purpose
    programming language. It has imperative, object-oriented and generic
    programming features, while also providing facilities for low-level memory
    manipulation.

一定要到 [cppreference.com](http://en.cppreference.com/w/) 多看看，
上面有函数说明，有 demo 代码，还有 Possible implementation 什么的！
简直了。

Tips

:   ambiguity

    ```cpp
    Class::X *p;
    // X can be object of Class, or a nested class.
    // so ambi'guity occurs
    type::type   * p;       // declare
    type::object * p;       // multiplication
    ```

    vector

    :   ```cpp
        // c
        int **ary = new int*[row_num];
        for(int i = 0; i < row_num; ++i) {
            ary[i] = new int[col_num];
        }

        // cpp
        vector<vector<int> > ary(row_num, vector<int>(col_num, 0));
        ```

    使用 reserve 来避免不必要的重新分配

    :   ```cpp
        // std::vector, Defined in header <algorithm>
        void reserve( size_type new_cap );
        ```

    even *vs* odd

    :   ```cpp
        // even
        x % 2
        // odd
        x % 2 != 0
        x & 0x1
        ```

    equal?

    :   ```cpp
        // for int
        a == b
        // for double
        fabs(a-b) < 1e-9。
        ```

FILE

:   ```cpp
    FILE *fp = fopen(filename, "r");
    while( 2 == fscanf( fp, "%d %s", &index, buf ) ) {
        // ...
    }
    fclose(fp);
    ```

    ```cpp
    std::ifstream file(filename.c_str(), ifstream::in);
    if (!file) { exit(-1); }

    string line;
    while (getline(file, line)) {
        // ...
    }
    ```

    ```cpp
    std::string filebuf( filename );
    std::ifstream file( filebuf.c_str() );
    if ( !file || !file.is_open() ) { exit(-1); }

    std::string line;
    while ( getline( csv, line ) ) {
        // ...
    }
    ```

`T::iterator`{.cpp}, `T::const_iterator`{.cpp}, `begin`{.cpp}, `end`{.cpp}

:   - begin, end, cbegin, cend, rbegin, rend
    - iterator, const_iterator, reverse_iterator

    ```cpp
    template<typename Container, typename Function>
    void for_each(Container&& cont, Function f) {
        using std::begin;
        auto it = begin(cont);
        using std::end;
        auto end_it = end(cont);
        while (it != end_it) {
            f(*it);
            ++it;
        }
    }
    ```

    ```cpp
    #include <iostream>
    #include <vector>
    #include <iterator>

    int main()
    {
        std::vector<int> v = { 3, 1, 4 };
        auto vi = std::begin(v);
        std::cout << *vi << '\n';

        int a[] = { -5, 10, 15 };
        auto ai = std::begin(a);
        std::cout << *ai << '\n';
    }
    ```

`reverse_iterator`{.cpp}

:   ![](http://upload.cppreference.com/mwiki/images/3/39/range-rbegin-rend.svg)

    ```cpp
    #include <iostream>
    #include <string>
    #include <iterator>

    int main()
    {
        std::string s = "Hello, world";
        std::reverse_iterator<std::string::iterator> r = s.rbegin();
        r = 'O'; // replaces 'o' with 'O'
        r += 7; // iterator now points at 'O'
        std::string rev(r, s.rend());
        std::cout << rev << '\n'; // "OlleH"
    }
    ```

`std::min`, `std::max`, `std::minmax`

:   ```cpp
    // misc
    std::max(1, 9999)
    std::max('a', 'b')
    std::max( { "foo", "bar", "hello" },
            [](const std::string& s1, const std::string& s2) {
                return s1.size() < s2.size();
            });
    ```

    ```cpp
    template<class T, class Compare>
    std::pair<const T&, const T&> minmax( const T& a, const T& b, Compare comp )
    {
        return comp(b, a) ? std::pair<const T&, const T&>(b, a)
                          : std::pair<const T&, const T&>(a, b);
    }
    ```

    ```cpp
    #include <algorithm>
    #include <iostream>
    #include <vector>
    #include <cstdlib>
    #include <ctime>

    int main()
    {
        std::vector<int> v {3, 1, 4, 1, 5, 9, 2, 6};
        std::srand(std::time(0));
        std::pair<int, int> bounds = std::minmax(std::rand() % v.size(),
                                                 std::rand() % v.size());

        std::cout << "v[" << bounds.first << "," << bounds.second << "]: ";
        for (int i = bounds.first; i < bounds.second; ++i) {
            std::cout << v[i] << ' ';
        }
        std::cout << '\n';
    }

    /*
    Possible output:

    v[2,7]: 4 1 5 9 2
    */
    ```

`std::map`{.cpp}

:   `std::map`{.cpp} is a sorted associative container that contains key-value pairs
    with unique keys. Keys are sorted by using the comparison function Compare.
    Search, removal, and insertion operations have logarithmic complexity. Maps
    are usually implemented as red-black trees.

    ```cpp
    #include <iostream>
    #include <sstream>
    #include <iterator>
    #include <numeric>

    int main()
    {
        std::istringstream str("0.1 0.2 0.3 0.4");
        std::partial_sum(std::istream_iterator<double>(str),
                          std::istream_iterator<double>(),
                          std::ostream_iterator<double>(std::cout, " "));
    }
    ```

    Output: `0.1 0.3 0.6 1`

`std::partial_sum`

:   ```
    // Defined in header <numeric>
    *(d_first)   = *first;
    *(d_first+1) = *first + *(first+1);
    *(d_first+2) = *first + *(first+1) + *(first+2);
    *(d_first+3) = *first + *(first+1) + *(first+2) + *(first+3);
    ...
    ```

`std::equal_range`

:   Returns a range containing all elements equivalent to value in the range
    `[first, last)`.

    ```cpp
    template<class ForwardIt, class T, class Compare>
    std::pair<ForwardIt,ForwardIt>
        equal_range(ForwardIt first, ForwardIt last,
                    const T& value, Compare comp);
    {
        return std::make_pair(std::lower_bound(first, last, value, comp),
                              std::upper_bound(first, last, value, comp));
    }
    ```

    ```cpp
    #include <algorithm>
    #include <vector>
    #include <iostream>

    struct S
    {
        int number;
        char name;

        S ( int number, char name  )
            : number ( number ), name ( name )
        {}

        // only the number is relevant with this comparison
        bool operator< ( const S& s ) const
        {
            return number < s.number;
        }
    };


    int main()
    {
        // note: not ordered, only partitioned w.r.t. S defined below
        std::vector<S> vec = { {1,'A'}, {2,'B'}, {2,'C'}, {2,'D'}, {4,'G'}, {3,'F'} };

        S value ( 2, '?' );

        auto p = std::equal_range(vec.begin(),vec.end(),value);

        for ( auto i = p.first; i != p.second; ++i )
            std::cout << i->name << ' ';
    }
    ```

    ```cpp
    #include <cstddef>
    #include <new>
    #include <vector>
    #include <iostream>

    // minimal C++11 allocator with debug output
    template <class Tp>
    struct NAlloc {
        typedef Tp value_type;
        NAlloc() = default;
        template <class T> NAlloc(const NAlloc<T>&) {}
        Tp* allocate(std::size_t n) {
            n *= sizeof(Tp);
            std::cout << "allocating " << n << " bytes\n";
            return static_cast<Tp*>(::operator new(n));
        }
        void deallocate(Tp* p, std::size_t n) {
            std::cout << "deallocating " << n*sizeof*p << " bytes\n";
            ::operator delete(p);
        }
    };
    template <class T, class U>
    bool operator==(const NAlloc<T>&, const NAlloc<U>&) { return true; }
    template <class T, class U>
    bool operator!=(const NAlloc<T>&, const NAlloc<U>&) { return false; }

    int main()
    {
        int sz = 100;
        std::cout << "using reserve: \n";
        {
            std::vector<int, NAlloc<int>> v1;
            v1.reserve(sz);
            for(int n = 0; n < sz; ++n)
                v1.push_back(n);
        }
        std::cout << "not using reserve: \n";
        {
            std::vector<int, NAlloc<int>> v1;
            for(int n = 0; n < sz; ++n)
                v1.push_back(n);
        }
    }
    ```

    Possible output:

    ```tzx-bigquote
    using reserve:
    allocating 400 bytes
    deallocating 400 bytes
    not using reserve:
    allocating 4 bytes
    allocating 8 bytes
    deallocating 4 bytes
    allocating 16 bytes
    deallocating 8 bytes
    allocating 32 bytes
    deallocating 16 bytes
    allocating 64 bytes
    deallocating 32 bytes
    allocating 128 bytes
    deallocating 64 bytes
    allocating 256 bytes
    deallocating 128 bytes
    allocating 512 bytes
    deallocating 256 bytes
    deallocating 512 bytes
    ```

`upper_bound` & `lower_bound`

:   Returns an iterator pointing to the first element in the range [first,
    last) that is greater than value.

    ```cpp
    #include <algorithm>
    #include <iostream>
    #include <iterator>
    #include <vector>

    int main()
    {
        std::vector<int> data = { 1, 1, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 6 };

        auto lower = std::lower_bound(data.begin(), data.end(), 4);
        auto upper = std::upper_bound(data.begin(), data.end(), 4);

        std::copy(lower, upper, std::ostream_iterator<int>(std::cout, " "));
    }
    ```

    output: 4 4 4

    ```cpp
    #include <iostream>
    #include <sstream>
    #include <iterator>
    #include <numeric>

    int main()
    {
        std::istringstream str("0.1 0.2 0.3 0.4");
        std::partial_sum(std::istream_iterator<double>(str),
                          std::istream_iterator<double>(),
                          std::ostream_iterator<double>(std::cout, " "));
    }

    /*
    Output:

    0.1 0.3 0.6 1
    */
    ```

    ```cpp
    template<class ForwardIt, class T>
    ForwardIt upper_bound(ForwardIt first, ForwardIt last, const T& value)
    {
        ForwardIt it;
        typename std::iterator_traits<ForwardIt>::difference_type count, step;
        count = std::distance(first,last);

        while (count > 0) {
            it = first;
            step = count / 2;
            std::advance(it, step);
            if (!(value < *it)) {
                first = ++it;
                count -= step + 1;
            } else count = step;
        }
        return first;
    }
    ```

transform

:   ```cpp
    #include <string>
    #include <cctype>
    #include <algorithm>
    #include <iostream>

    int main()
    {
        std::string s("hello");
        // std::transform(s.begin(), s.end(), s.begin(), ::toupper );
        std::transform(s.begin(), s.end(), s.begin(),
                       [](unsigned char c) { return std::toupper(c); });
        std::cout << s;
    }
    ```

`std::prev`, `std::next`

:   ```cpp
    template<class ForwardIt>
    ForwardIt next(ForwardIt it,
                   typename std::iterator_traits<ForwardIt>::difference_type n = 1)
    {
        std::advance(it, n);
        return it;
    }
    ```

    ```cpp
    #include <iostream>
    #include <iterator>
    #include <vector>

    int main()
    {
        std::vector<int> v{ 3, 1, 4 };

        auto it = v.begin();

        auto nx = std::next(it, 2);

        std::cout << *it << ' ' << *nx << '\n';
    }
    ```

    ```cpp
    std::vector<int> v{ 3, 1, 4 };
    std::cout << *std::prev(v.end(), 3) << '\n';
    ```

`std::distance`

:   Defined in header <iterator>

    ```cpp
    #include <iostream>
    #include <iterator>
    #include <vector>

    int main()
    {
        std::vector<int> v{ 3, 1, 4 };
        std::cout << "distance(first, last) = "
                  << std::distance(v.begin(), v.end()) << '\n'
                  << "distance(last, first) = "
                  << std::distance(v.end(), v.begin()) << '\n';
    }

    /*
     *  Output:
     *
     *              distance(first, last) = 3
     *              distance(last, first) = -3
    **/
    ```


`std::advance`

:
    Increments given iterator it by n elements.

    If n is negative, the iterator is decremented. In this case, InputIt must
    meet the requirements of BidirectionalIterator, otherwise the behavior is
    undefined.

    ```
    #include <iostream>
    #include <iterator>
    #include <vector>

    int main()
    {
        std::vector<int> v{ 3, 1, 4 };

        auto vi = v.begin();

        std::advance(vi, 2);

        std::cout << *vi << '\n';
    }
    // output: 4
    ```

`std::remove`

:
```cpp
#include <algorithm>
#include <string>
#include <iostream>
#include <cctype>

int main()
{
    std::string str1 = "Text with some   spaces";
    str1.erase(std::remove(str1.begin(), str1.end(), ' '),
               str1.end());
    std::cout << str1 << '\n';

    std::string str2 = "Text\n with\tsome \t  whitespaces\n\n";
    str2.erase(std::remove_if(str2.begin(),
                              str2.end(),
                              [](char x){return std::isspace(x);}),
               str2.end());
    std::cout << str2 << '\n';
}
```

Output:

```
Textwithsomespaces
Textwithsomewhitespaces
```

```
const int n = 10;
int A[n];
std::remove_if(A, A+n, ' ');
```

`std::copy`

:   Copies the elements in the range, defined by [first, last), to another
    range beginning at d_first.

    - 1) Copies all elements in the range [first, last). The behavior is
      undefined if d_first is within the range [first, last). In this case,
      std::copy_backward may be used instead.
    - 3) Only copies the elements for which the predicate pred returns true.
      The order of the elements that are not removed is preserved. The behavior
      is undefined if the source and the destination ranges overlap.
    - 2,4) Same as (1,3), but executed according to policy. These overloads do
      not participate in overload resolution unless
      std::is_execution_policy_v<std::decay_t<ExecutionPolicy>> is true

    ```cpp
    #include <algorithm>
    #include <iostream>
    #include <vector>
    #include <iterator>
    #include <numeric>

    int main()
    {
        std::vector<int> from_vector(10);
        std::iota(from_vector.begin(), from_vector.end(), 0);

        std::vector<int> to_vector;
        std::copy(from_vector.begin(), from_vector.end(),
                  std::back_inserter(to_vector));
    // or, alternatively,
    //  std::vector<int> to_vector(from_vector.size());
    //  std::copy(from_vector.begin(), from_vector.end(), to_vector.begin());
    // either way is equivalent to
    //  std::vector<int> to_vector = from_vector;

        std::cout << "to_vector contains: ";

        std::copy(to_vector.begin(), to_vector.end(),
                  std::ostream_iterator<int>(std::cout, " "));
        std::cout << '\n';
    }
    ```

    output: to_vector contains: 0 1 2 3 4 5 6 7 8 9

`std::unique`

:   ```cpp
    #include <iostream>
    #include <algorithm>
    #include <vector>
    #include <string>
    #include <cctype>

    int main()
    {
        // remove duplicate elements (normal use)
        std::vector<int> v{1,2,3,1,2,3,3,4,5,4,5,6,7};
        std::sort(v.begin(), v.end()); // 1 1 2 2 3 3 3 4 4 5 5 6 7
        auto last = std::unique(v.begin(), v.end());
        // v now holds {1 2 3 4 5 6 7 x x x x x x}, where 'x' is indeterminate
        v.erase(last, v.end());
        for (int i : v)
          std::cout << i << " ";
        std::cout << "\n";

        // remove consecutive spaces
        std::string s = "wanna go    to      space?";
        auto end = std::unique(s.begin(), s.end(), [](char l, char r){
            return std::isspace(l) && std::isspace(r) && l == r;
        });
        // s now holds "wanna go to space?xxxxxxxx", where 'x' is indeterminate
        std::cout << std::string(s.begin(), end) << '\n';
    }
    ```

    Output:

    ```
    1 2 3 4 5 6 7
    wanna go to space?
    ```

`std::iota`

:   Fills the range [first, last) with sequentially increasing values, starting
    with value and repetitively evaluating ++value.

    Equivalent operation:

    ```cpp
    *(d_first)   = value;
    *(d_first+1) = ++value;
    *(d_first+2) = ++value;
    *(d_first+3) = ++value;
    ...
    ```

`std::vector::erase`

:   synopsis

      - `iterator erase( iterator pos );`
      - `iterator erase( const_iterator pos );`
      - `iterator erase( iterator first, iterator last );`
      - `iterator erase( const_iterator first, const_iterator last );`

    ```cpp
    #include <vector>
    #include <iostream>

    int main( )
    {
        std::vector<int> c{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        for (auto &i : c) {
            std::cout << i << " ";
        }
        std::cout << '\n';

        c.erase(c.begin());

        for (auto &i : c) {
            std::cout << i << " ";
        }
        std::cout << '\n';

        c.erase(c.begin()+2, c.begin()+5);

        for (auto &i : c) {
            std::cout << i << " ";
        }
        std::cout << '\n';
    }
    ```

```
unordered_map<int, int> map;
if (map.find(num[i]) != map.end()) { continue; }
else { map[num[i]] = 1; }

map.find(gap) != map.end() && map[gap] > i

sort(num.begin(), num.end());

vector<vector<int>> result;
result.push_back({ 1, 2, 3 });

unordered_map<int, vector<pair<int, int> > > cache;
for (size_t a = 0; a < num.size(); ++a) {
    for (size_t b = a + 1; b < num.size(); ++b) {
        cache[num[a] + num[b]].push_back(pair<int, int>(a, b));
    }
}

unordered_multimap<int, pair<int, int>> cache;
for (int i = 0; i + 1 < num.size(); ++i)
    for (int j = i + 1; j < num.size(); ++j)
        cache.insert(make_pair(num[i] + num[j], make_pair(i, j)));
    }
}

int trap(int A[], int n) {
    int *max_left = new int[n]();
    int *max_right = new int[n]();
    for (int i = 1; i < n; i++) {
        max_left[i] = max(max_left[i - 1], A[i - 1]);
        // 一下就把两边都考虑了……好牛逼！
        max_right[n - 1 - i] = max(max_right[n - i], A[n - i]);
    }
    int sum = 0;
    for (int i = 0; i < n; i++) {
        int height = min(max_left[i], max_right[i]);
        if (height > A[i]) {
            sum += height - A[i];
        }
    }
    delete[] max_left;
    delete[] max_right;
    return sum;
}

class Solution  {
public:
    vector<int> plusOne(vector<int> &digits) {
        add(digits, 1);
        return digits;
    }

private:
    // 0 <= digit <= 9
    void add(vector<int> &digits, int digit) {
        int c = digit; // carry, 进位

        // method 1
        for (auto it = digits.rbegin(); it != digits.rend(); ++it) {
            *it += c;
            c = *it / 10;
            *it %= 10;
        }

        // method 2
        for_each(digits.rbegin(), digits.rend(), [&c](int &d){
            d += c;
            c = d / 10;
            d %= 10;
        });

        if (c > 0) { digits.insert(digits.begin(), 1) }; // 这里是 insert c 比较好。
    }
}
```

---

Return value

T    |   std::numeric_limits<T>::max()
:---: | :---:
/* non-specialized */    |   T();
bool    |   true
char    |   CHAR_MAX
signed char    |   SCHAR_MAX
unsigned char    |   UCHAR_MAX
wchar_t    |   WCHAR_MAX
char16_t    |   UINT_LEAST16_MAX
char32_t    |   UINT_LEAST32_MAX
short    |   SHRT_MAX
unsigned short    |   USHRT_MAX
int    |   INT_MAX
unsigned int    |   UINT_MAX
long    |   LONG_MAX
unsigned long    |   ULONG_MAX
long long    |   LLONG_MAX
unsigned long long    |   ULLONG_MAX
float    |   FLT_MAX
double    |   DBL_MAX
long double    |   LDBL_MAX

[c++ - What does iota of std::iota stand for? - Stack Overflow](http://stackoverflow.com/questions/9244879/what-does-iota-of-stdiota-stand-for)

:   Iota `/aɪˈoʊtə/` (uppercase Ι, lowercase ι; Greek: Ιώτα) is the ninth letter of the Greek alphabet. It was derived from the Phoenician letter Yodh.

    For example, the integer function denoted by ι produces a vector of the first N integers when applied to the argument N, …

[語言技術：C++ Gossip](http://openhome.cc/Gossip/CppGossip/)

[Access modifiers - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Access_modifiers)

:   **Access modifiers** (or access specifiers) are keywords in object-oriented
    languages that set the accessibility of classes, methods, and other members.
    Access modifiers are a specific part of programming language
    syntax used to facilitate the encapsulation of components.

    ```cpp
    #include <iostream>
    using std::cout;
    using std::endl;

    struct B { // default access modifier inside struct is public
        void set_n(int v) { n = v; }
        void f()          { cout << "B::f" << endl; }
      protected:
        int m, n; // B::m, B::n are protected
      private:
        int x;
    };

    struct D : B {
        using B::m;               // D::m is public
        int get_n() { return n; } // B::n is accessible here, but not outside
    //  int get_x() { return x; } // ERROR, B::x is inaccessible here
     private:
        using B::f;               // D::f is private
    };

    int main() {
        D d;

    //  d.x = 2; // ERROR, private          （B 的 private，D 无法访问）
    //  d.n = 2; // ERROR, protected        （B 的 protected，D 只能内部访问）
        d.m = 2; // protected B::m is accessible as D::m
                 //                         （B 的 protected，但是成了 D 的 public）

        d.set_n(2); // calls B::set_n(int)  （内部访问，set & get）
        cout << d.get_n() << endl; // output: 2

    //  d.f();   // ERROR, B::f is inaccessible as D::f
                 //                         （private 函数，限内部使用）

        B& b = d; // b references d and "views" it as being type B

    //  b.x = 3; // ERROR, private
    //  b.n = 3; // ERROR, protected
    //  b.m = 3; // ERROR, B::m is protected

        b.set_n(3); // calls B::set_n(int)  （虽然实际上是 d，但是类型是 B，所以用的 B::set_n）
    //  cout << b.get_n(); // ERROR, 'struct B' has no member named 'get_n'

        b.f();   // calls B::f()
        return 0;
    }
    ```

[Friend function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Friend_function)

:   In object-oriented programming, a friend function that is a "friend" of a
    given class is **allowed access to private and protected data** in that class
    that it would not normally be able to as if the data was public.  Normally,
    a function that is defined outside of a class cannot access such
    information. Declaring a function a friend of a class allows this, in
    languages where the concept is supported.

    A friend function is declared by the class that is granting access,
    explicitly stating what function from a class is allowed access. A similar
    concept is that of friend class.

    Friends should be used with caution. Too many functions or external classes
    declared as friends of a class with protected or private (visibility modes)
    data may lessen the value of encapsulation of separate classes in
    object-oriented programming and may indicate a problem in the overall
    architecture design. Generally though, friend functions are a good thing
    for encapsulation, as you can
    **keep data of a class private from all except those who you explicitly state need it**,
    but this does mean your classes will become tightly coupled.

    ```cpp
    #include <iostream>
    using namespace std;

    class Foo;
    class Bar {
      private:
          int a;
      public:
          Bar(): a(0) {}
          //                                    和 Foo 一样，有这个 friend
          void show(Bar& x, Foo& y);        //  私有函数
          friend void show(Bar& x, Foo& y); //  declaration of global friend
    };

    class Foo {
      private:
          int b;
      public:
          Foo(): b(6) {}
          //                                    和 Bar 一样，有这个 friend
          friend void show(Bar& x, Foo& y); //  declaration of global friend
          friend void Bar::show(Bar& x, Foo& y); // declaration of friend from other class
          //
          //  如果不 friend 这个函数，Bar 那个函数没法编译。会有如下错误：
          //
          //    main.cpp: In member function 'void Bar::show(Bar&, Foo&)':
          //    main.cpp:17: error: 'int Foo::b' is private
          //    main.cpp:29: error: within this context
    };

    // Definition of a member function of Bar; this member is a friend of Foo
    void Bar::show(Bar& x, Foo& y) {
    // 因为这个函数是 Foo 指定 friend 的，所以 Bar 可以访问 y.b (Foo::b).
      cout << "Show via function member of Bar" << endl;
      cout << "Bar::a = " << x.a << endl;
      cout << "Foo::b = " << y.b << endl;
    }

    // Friend for Bar and Foo, definition of global function
    void show(Bar& x, Foo& y) {
      cout << "Show via global function" << endl;
      cout << "Bar::a = " << x.a << endl;
      cout << "Foo::b = " << y.b << endl;
    }

    int main() {
       Bar a;
       Foo b;

       show(a,b);
       a.show(a,b); // Bar::show,
    }
    ```

    ```cpp
    class Y {
        int data; // private member
        // the non-member function operator<< will have access to Y's private members
        friend std::ostream& operator<<(std::ostream& out, const Y& o);
        friend char* X::foo(int); // members of other classes can be friends too
        friend X::X(char), X::~X(); // constructors and destructors can be friends
    };
    // friend declaration does not declare a member function
    // this operator<< still needs to be defined, as a non-member
    std::ostream& operator<<(std::ostream& out, const Y& y)
    {
        return out << y.data; // can access private member Y::data
    }
    ```

    ```cpp
    class Y {};
    class A {
        int data; // private data member
        class B { }; // private nested type
        enum { a = 100 }; // private enumerator
        friend class X; // friend class forward declaration (elaborated class name)
        friend Y; // friend class declaration (simple type specifier) (since c++11)
    };

    class X : A::B // Error until C++11: the base-clause is not part of member declarations
                   // allowed in C++11
    {
        A::B mx; // OK: A::B accessible to member of friend
        class Y : A::B { // OK: A::B accessible to base-clause of nested member of friend
        };
        int v[A::a]; // OK: A::a accessible to member of friend
    };
    ```

    Notes

    -   Friendship is not transitive (a friend of your friend is not your
        friend)
    -   Friendship is not inherited (your friend's children are not your
        friends)
    -   Prior to C++11, member declarations and definitions inside the nested
        class of the friend of class T cannot access the private and protected
        members of class T, but some compilers accept it even in pre-C++11
        mode.
    -   Storage class specifiers are not allowed in friend function
        declarations. A function that is defined in the friend declaration has
        external linkage, a function that was previously defined, keeps the
        linkage it was defined with.
    -   Access specifiers have no effect on the meaning of friend declarations
        (they can appear in private: or in public: sections, with no
        difference)
    -   A friend class declaration cannot define a new class (friend class X
        {}; is an error)
    -   When a local class declares an unqualified function or class as a
        friend, only functions and classes in the innermost non-class scope are
        looked up, not the global functions:

        ```cpp
        class F {};
        int f();
        int main()
        {
            extern int g();
            class Local { // Local class in the main() function
                friend int f(); // Error, no such function declared in main()
                friend int g(); // OK, there is a declaration for g in main()
                friend class F; // friends a local F (defined later)
                friend class ::F; // friends the global F
            };
            class F {}; // local F
        }
        ```

    Template friends

    :   TODO

    refs and see also

      - [friend declaration - cppreference.com](http://en.cppreference.com/w/cpp/language/friend)
      - [friend (C++)](https://msdn.microsoft.com/en-us/library/465sdshe.aspx)

[Template (C++) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Template_%28C%2B%2B%29)

:   Templates are a feature of the C++ programming language that allows
    functions and classes to operate with generic types. This allows a function
    or class to work on many different data types without being rewritten for
    each one.

    Templates are of great utility to programmers in C++, especially when
    combined with multiple inheritance and operator overloading. The C++
    Standard Library provides many useful functions within a framework of
    connected templates.

    Major inspirations for C++ templates were the parameterized modules
    provided by CLU and the generics provided by Ada.

    There are three kinds of templates: **function templates**,
    **class templates** and, since C++14, **variable templates**.
    Since C++11, templates may be either variadic or non-variadic; in earlier
    versions of C++ they are always non-variadic.

    Function templates

    :   A function template behaves like a function except that the template
        can **have arguments of many different types** (see example). In other
        words, a function template represents a family of functions. The format
        for declaring function templates with type parameters is

        ```cpp
        // 两者等价，但第一种可能有误导（不必须是 class）
        template <class identifier> function_declaration;
        template <typename identifier> function_declaration;
        ```

        ```cpp
        template <typename Type>
        Type max(Type a, Type b) {
            return a > b ? a : b;
        }

        #include <iostream>
        int main()
        {
            // call max<int> by implicit argument deduction.
            std::cout << max(3, 7) << std::endl;

            // max<double>
            std::cout << max(3.0, 7.0) << std::endl;

            // This depends on the compiler. Some compilers handle this by defining a template
            // function like double max <double> ( double a, double b);, while in some compilers
            // we need to explicitly cast it, like std::cout << max<double>(3,7.0);
            std::cout << max(3, 7.0) << std::endl;
            std::cout << max<double>(3, 7.0) << std::endl;
            return 0;
        }
        ```

        This function template can be **instantiated** with any copy-constructible type
        for which the expression y > x is valid. For user-defined types, this
        implies that the greater-than operator (>) must be overloaded in the type.

    Class templates

    :   A class template **provides a specification for generating classes based on parameters**.
        Class templates are generally used to implement containers.  A class
        template is instantiated by passing a given set of types to it as
        template arguments. The C++ Standard Library contains many class
        templates, in particular the containers adapted from the Standard
        Template Library, such as vector.

    Variable templates

    :   In C++14, templates can be also used for variables, as in the following example.

        ```cpp
        template<typename T>
        constexpr T pi = T(3.1415926535897932385);

        // Usual specialization rules apply:
        template<>
        constexpr const char* pi<const char*> = "pi";
        ```

        see more at [C++14 - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/C%2B%2B14#Variable_templates).

    Template specialization

    :   ```cpp
        template <>
        bool max<bool>(bool a, bool b) {
            return a || b;
        }
        ```

    Variadic templates

    :   C++11 introduced variadic templates, which can take a variable number of
        arguments in a manner somewhat similar to variadic functions such as
        `std::printf`{.cpp}. Both function templates and class templates can be variadic.

        [Variadic template - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Variadic_template)

        :   In computer programming, variadic templates are templates that take
            a variable number of arguments.  Variadic templates are supported
            by C++ (since the C++11 standard), and the D programming language.

            ```cpp
            template<typename... Values> class tuple;

            tuple<int, std::vector<int>, std::map<<std::string>, std::vector<int>>> some_instance_name;
            tuple<> some_instance_name;     // no arguments

            template<typename First, typename... Rest> class tuple; // at least one argument
            ```

            Variadic templates may also apply to functions, thus not only
            providing a type-safe add-on to variadic functions (such as printf)
            - but also allowing a printf-like function to process non-trivial
            objects.

            ```cpp
            template<typename... Params> void printf(const std::string &str_format, Params... parameters);
            ```

[Type system - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Type_system)

:   In programming languages, a type system is **a collection of rules that
    assign a property called type** to various constructs a computer program
    consists of, such as variables, expressions, functions or modules. The
    main purpose of a type system is to **reduce possibilities for bugs** in
    computer programs by defining interfaces between different parts of a
    computer program, and then checking that the parts have been connected in a
    consistent way. This checking can happen statically (at compile time),
    dynamically (at run time), or as a combination of static and dynamic
    checking. Type systems have other purposes as well, such as enabling
    certain compiler optimizations, allowing for multiple dispatch, providing a
    form of documentation, etc.

    A type system associates a type with each computed value and, by examining
    the flow of these values, **attempts to ensure or prove that no type errors
    can occur**. The particular type system in question determines exactly what
    constitutes a type error, but in general the aim is to prevent operations
    expecting a certain kind of value from being used with values for which
    that operation does not make sense (**logic errors**); **memory errors** will also
    be prevented. Type systems are often specified as part of programming
    languages, and built into the interpreters and compilers for them; although
    the type system of a language can be extended by optional tools that
    perform additional kinds of checks using the language's original type
    syntax and grammar.

    General concepts

    -   Type safety

    Major categories

    -   Static vs. Dynamic
    -   Manifest vs. Inferred
    -   Nominal vs. Structural
    -   Duck typing

    Static and dynamic type checking in practice

    :   The choice between static and dynamic typing requires certain trade-offs.

    "Strong" and "weak" type systems

    :   TODO: <https://en.wikipedia.org/wiki/Strong_and_weak_typing>

    Type safety and memory safety

    :   ```c
        int x = 5;
        char y[] = "37";
        char* z = x + y;
        ```

        As this example shows, C is neither a memory-safe nor a type-safe language.

        In general, type-safety and memory-safety go hand in hand（手拉手，一起走。）.
        For example, a language that supports pointer arithmetic and number-to-pointer
        conversions (like C) is neither memory-safe nor type-safe, because it
        **allows arbitrary memory to be accessed** as if it were valid memory of any type.

        Variable levels of type checking

        -   The `use strict` directive in JavaScript and Perl applies stronger checking.
        -   The `@` operator in PHP suppresses some error messages.
        -   The `Option Strict On` in VB.NET allows the compiler to require a conversion between objects.

    Duck typing

    :   In "duck typing", a statement calling a method `m` on an object does
        not rely on the declared type of the object; only that the object, of
        whatever type, must supply an implementation of the method called, when
        called, at run-time.

        Duck typing differs from **structural typing** in that, if the "part" (of
        the whole module structure) needed for a given local computation is
        present at runtime, the duck type system is satisfied in its type
        identity analysis. On the other hand, a structural type system would
        require the analysis of the whole module structure at compile time to
        determine type identity or type dependence.

        Duck typing differs from a **nominative type** system in a number of
        aspects. The most prominent ones are that for duck typing, type
        information is determined at runtime (as contrasted to compile time),
        and the name of the type is irrelevant to determine type identity or
        type dependence; only partial structure information is required for
        that for a given point in the program execution.

        `['nɑmɪnətɪv]`, 主格

        Duck typing uses the **premise** (`['premɪs]`, 假定) that (referring to
        a value) "**if it walks like a duck, and quacks like a duck, then it is
        a duck**" (this is a reference to the duck test that is attributed to
        James Whitcomb Riley).  The term may have been coined[citation needed]
        by Alex Martelli in a 2000 message to the comp.lang.python newsgroup
        (see Python).

        While one controlled experiment showed an increase in developer
        productivity for duck typing in single developer projects, other
        controlled experiments on API usability show the opposite.

        [Duck typing - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Duck_typing)

        :   In computer programming, duck typing is an application of the duck test
            in type safety. It requires that type checking is deferred to runtime (推迟到运行时),
            and is implemented by means of dynamic typing or reflection.

            Duck typing is concerned with establishing the suitability of an object
            for some purpose. With normal typing, suitability is assumed to be
            determined by an object's type only. In duck typing, an object's
            suitability is determined by the presence of certain methods and
            properties (with appropriate meaning), rather than the actual type of
            the object. The analogy to the duck test appeared in a
            Python Enhancement Proposal discussion in 2002.

[Polymorphism (computer science) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Polymorphism_(computer_science))

:   In programming languages and type theory, polymorphism (from Greek πολύς,
    polys, "many, much" and μορφή, morphē, "form, shape") is the provision of a
    single interface to entities of different types. A polymorphic type is one
    whose operations can also be applied to values of some other type, or
    types.  There are several fundamentally different kinds of polymorphism:

    -   Ad hoc polymorphism

        when a function denotes different and potentially heterogeneous
        implementations depending on a limited range of individually specified
        types and combinations. Ad hoc polymorphism is supported in many
        languages using function overloading.

    -   Parametric polymorphism

        when code is written without mention of any specific type and thus can
        be used transparently with any number of new types. In the
        object-oriented programming community, this is often known as generics
        or generic programming. In the functional programming community, this
        is often shortened to polymorphism.

    -   Subtyping (also called subtype polymorphism or inclusion polymorphism)

        when a name denotes instances of many different classes related by some
        common superclass. In the object-oriented programming community,
        this is often simply referred to as polymorphism.

        **Object-oriented programming languages offer subtype polymorphism using
        subclassing (also known as inheritance).** In typical implementations,
        each class contains what is called a **virtual table**—a table of functions
        that implement the polymorphic part of the class interface—and each
        object contains a pointer to the "vtable" of its class, which is then
        consulted whenever a polymorphic method is called. This mechanism is an
        example of:

        +   **late binding**, because virtual function calls are not bound until
            the time of invocation;
        +   **single dispatch (i.e. single-argument polymorphism)**, because
            virtual function calls are bound simply by looking through the
            vtable provided by the first argument (the this object), so the
            runtime types of the other arguments are completely irrelevant.

    The interaction between parametric polymorphism and subtyping leads to the
    concepts of variance and bounded quantification.

    Static and dynamic polymorphism

    :   Polymorphism can be distinguished by when the implementation is
        selected:

          - **statically (at compile time)** or
          - **dynamically (at run time, typically via a virtual function)**.

        This is known respectively as **static dispatch** and **dynamic dispatch**, and
        the corresponding forms of polymorphism are accordingly called static
        polymorphism and dynamic polymorphism.

        Static polymorphism executes faster, because there is
        **no dynamic dispatch overhead**, but requires additional compiler support.
        Further, static polymorphism allows greater static analysis, by compilers
        (notably for optimization), source code analysis tools, and human
        readers (programmers). Dynamic polymorphism is more flexible but slower
        --for example, dynamic polymorphism allows **duck typing**, and a
        dynamically linked library may operate on objects without knowing their
        full type.

        Static polymorphism typically occurs in ad hoc polymorphism and
        parametric polymorphism, whereas dynamic polymorphism is usual for
        subtype polymorphism. However, it is possible to achieve static
        polymorphism with subtyping through more sophisticated use of template
        metaprogramming, namely **the curiously recurring template pattern**.

[Virtual inheritance - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Virtual_inheritance)

:   Virtual inheritance is a technique used in C++, where a particular base
    class in an **inheritance hierarchy** is declared to share its member data
    instances with any other inclusions of that same base in further derived
    classes. For example, if class A is normally (non-virtually) derived from
    class X (assumed to contain data members), and if class B is also derived
    from class X, and class C inherits from both classes A and B, it will
    contain two sets of the data members associated with class X (accessible
    independently, often with suitable disambiguating qualifiers). But if class
    A is virtually derived from class X instead, then objects of class C will
    contain only one set of the data members from class X. 这个例子像不像是近亲结婚？……

    This feature is most useful for **multiple inheritance**, as it makes the
    virtual base a common subobject for the deriving class and all classes that
    are derived from it. This can be used to avoid the diamond problem by
    clarifying ambiguity over which ancestor class to use, as from the
    perspective of the deriving class (C in the example above) the virtual base
    (X) acts as though it were the direct base class of C, not a class derived
    indirectly through its base (A).

    It is used when inheritance represents restriction of a set rather than
    composition of parts. In C++, a base class intended to be common throughout
    the hierarchy is denoted as virtual with the `virtual` keyword.

    Consider the following class hierarchy.

    ```cpp
    class Animal {
     public:
      virtual void eat();
    };

    class Mammal : public Animal {
     public:
      virtual void breathe();
    };

    class WingedAnimal : public Animal {
     public:
      virtual void flap();
    };

    // A bat is a winged mammal
    class Bat : public Mammal, public WingedAnimal {
    };

    Bat bat;
    ```

    ```cpp
    Bat b;
    Animal &a = b; // error: which Animal subobject should a Bat cast into,
                   // a Mammal::Animal or a WingedAnimal::Animal?
    ```

    To disambiguate, one would have to explicitly convert bat to either base
    class subobject:

    ```cpp
    Bat b;
    Animal &mammal = static_cast<Mammal&> (b);
    Animal &winged = static_cast<WingedAnimal&> (b);

    static_cast<Mammal&>(bat).eat();
    bat.Mammal::eat();
    ```

    ![the diamond problem](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Diamond_inheritance.svg/330px-Diamond_inheritance.svg.png)

    ```cpp
    class Animal {
     public:
      virtual void eat();
    };

    // Two classes virtually inheriting Animal:
    class Mammal : public virtual Animal {
     public:
      virtual void breathe();
    };

    class WingedAnimal : public virtual Animal {
     public:
      virtual void flap();
    };

    // A bat is still a winged mammal
    class Bat : public Mammal, public WingedAnimal {
    };
    ```

    The Animal portion of `Bat::WingedAnimal` is now the same `Animal` instance as
    the one used by `Bat::Mammal`, which is to say that a Bat has only one,
    shared, `Animal` instance in its representation and so a call to `Bat::eat()`
    is unambiguous. Additionally, a direct cast from Bat to Animal is also
    unambiguous, now that there exists only one Animal instance which Bat could
    be converted to.

    The ability to share a single instance of the Animal parent between `Mammal`
    and `WingedAnimal` is enabled by recording the **memory offset** between the
    Mammal or WingedAnimal members and those of the base Animal within the
    derived class. However this offset can in the general case only be known at
    runtime, thus Bat must become (`vpointer`, Mammal, vpointer, WingedAnimal,
    Bat, Animal). There are two vtable pointers, one per inheritance hierarchy
    that virtually inherits Animal. In this example, one for Mammal and one for
    WingedAnimal. The object size has therefore increased by two pointers, but
    now there is only one Animal and no ambiguity. **All objects of type Bat will
    use the same vpointers, but each Bat object will contain its own unique
    Animal object.** If another class inherits from Mammal, such as Squirrel,
    then the vpointer in the Mammal part of Squirrel will generally be
    different to the vpointer in the Mammal part of Bat though they may happen
    to be the same should the Squirrel class be the same size as Bat.

    [Virtual method table - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Vtable)

    :   A virtual method table (VMT), virtual function table, virtual call
        table, dispatch table, vtable, or vftable is a mechanism used in a
        programming language to support dynamic dispatch (or run-time method
        binding).

        Whenever a class defines a virtual function (or method), most compilers
        add a hidden member variable to the class which points to an array of
        pointers to (virtual) functions called the virtual method table (VMT or
        Vtable). These pointers are used at runtime to invoke the appropriate
        function implementations, because at compile time it may not yet be
        known if the base function is to be called or a derived one implemented
        by a class that inherits from the base class.

---

refs and see also

-   [Fundamental types - cppreference.com](http://en.cppreference.com/w/cpp/language/types)
-   [std::advance - cppreference.com](http://en.cppreference.com/w/cpp/iterator/advance)
-   [std::begin - cppreference.com](http://en.cppreference.com/w/cpp/iterator/begin)
-   [std::copy, std::copy_if - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/copy)
-   [std::distance - cppreference.com](http://en.cppreference.com/w/cpp/iterator/distance)
-   [std::end - cppreference.com](http://en.cppreference.com/w/cpp/iterator/end)
-   [std::equal_range - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/equal_range)
-   [std::iota - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/iota)
-   [std::iterator - cppreference.com](http://en.cppreference.com/w/cpp/iterator/iterator)
-   [std::map - cppreference.com](http://en.cppreference.com/w/cpp/container/map)
-   [std::max - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/max)
-   [std::minmax - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/minmax)
-   [std::next - cppreference.com](http://en.cppreference.com/w/cpp/iterator/next)
-   [std::numeric_limits::max - cppreference.com](http://en.cppreference.com/w/cpp/types/numeric_limits/max)
-   [std::ostream_iterator - cppreference.com](http://en.cppreference.com/w/cpp/iterator/ostream_iterator)
-   [std::partial_sum - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/partial_sum)
-   [std::prev - cppreference.com](http://en.cppreference.com/w/cpp/iterator/prev)
-   [std::remove, std::remove_if - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/remove)
-   [std::reverse_iterator - cppreference.com](http://en.cppreference.com/w/cpp/iterator/reverse_iterator)
-   [std::transform - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/transform)
-   [std::unique - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/unique)
-   [std::upper_bound - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/upper_bound)
-   [std::vector::erase - cppreference.com](http://en.cppreference.com/w/cpp/container/vector/erase)
-   [std::vector::reserve - cppreference.com](http://en.cppreference.com/w/cpp/container/vector/reserve)
