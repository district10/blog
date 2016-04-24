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

一定要到 [cppreference.com](http://en.cppreference.com/w/) 多看看，
上面有函数说明，有 demo 代码，还有 Possible implementation 什么的！
简直了。

Tips

:   vector

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
        r[7] = 'O'; // replaces 'o' with 'O'
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

Iota `/aɪˈoʊtə/` (uppercase Ι, lowercase ι; Greek: Ιώτα) is the ninth letter of the Greek alphabet. It was derived from the Phoenician letter Yodh.

For example, the integer function denoted by ι produces a vector of the first N integers when applied to the argument N, …

[語言技術：C++ Gossip](http://openhome.cc/Gossip/CppGossip/)

---

refs and see also

- [Fundamental types - cppreference.com](http://en.cppreference.com/w/cpp/language/types)
- [std::advance - cppreference.com](http://en.cppreference.com/w/cpp/iterator/advance)
- [std::begin - cppreference.com](http://en.cppreference.com/w/cpp/iterator/begin)
- [std::copy, std::copy_if - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/copy)
- [std::distance - cppreference.com](http://en.cppreference.com/w/cpp/iterator/distance)
- [std::end - cppreference.com](http://en.cppreference.com/w/cpp/iterator/end)
- [std::equal_range - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/equal_range)
- [std::iota - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/iota)
- [std::iterator - cppreference.com](http://en.cppreference.com/w/cpp/iterator/iterator)
- [std::map - cppreference.com](http://en.cppreference.com/w/cpp/container/map)
- [std::max - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/max)
- [std::minmax - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/minmax)
- [std::next - cppreference.com](http://en.cppreference.com/w/cpp/iterator/next)
- [std::numeric_limits::max - cppreference.com](http://en.cppreference.com/w/cpp/types/numeric_limits/max)
- [std::ostream_iterator - cppreference.com](http://en.cppreference.com/w/cpp/iterator/ostream_iterator)
- [std::partial_sum - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/partial_sum)
- [std::prev - cppreference.com](http://en.cppreference.com/w/cpp/iterator/prev)
- [std::remove, std::remove_if - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/remove)
- [std::reverse_iterator - cppreference.com](http://en.cppreference.com/w/cpp/iterator/reverse_iterator)
- [std::transform - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/transform)
- [std::unique - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/unique)
- [std::upper_bound - cppreference.com](http://en.cppreference.com/w/cpp/algorithm/upper_bound)
- [std::vector::erase - cppreference.com](http://en.cppreference.com/w/cpp/container/vector/erase)
- [std::vector::reserve - cppreference.com](http://en.cppreference.com/w/cpp/container/vector/reserve)
