# polygons - quick polygonal number example with lazy evaluation

# ABOUT

*Square* numbers take the form 1 * 1 = 1, 2 * 2 = 4, 3 * 3 = 9, ...

*Triangular* numbers take the form 0 + 1 = 1, 0 + 1 + 2 = 3, 0 + 1 + 2 + 3 = 6, ...

Note that 36 is both square and triangular. What other *polygonal* numbers can we discover?

# EXAMPLE

```
$ make
mkdir -p bin/
ghc -O2 -Wall -fwarn-tabs --make -fforce-recomp -o bin/polygons Polygons.hs
[1 of 1] Compiling Main             ( Polygons.hs, Polygons.o )
Linking bin/polygons ...
time bin/polygons 20
Squares: [0,1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,324,361]
Triangles: [0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,136,153,171,190]
Squares and triangles: [0,1,36,1225,41616,1413721,48024900,1631432881,55420693056,1882672131025,63955431761796,2172602007770041,7263325169820736,8690408031080164,10245401755863184,17380816062160329,19553418069930369,29053300679282944,31843510970040004,34761632124320656]
       15.43 real        15.24 user         0.14 sys
```

# REQUIREMENTS

* [Haskell](https://www.haskell.org/)

E.g., `brew install ghc cabal-install`

## Optional

* [make](https://www.gnu.org/software/make/make.html)

# CREDITS

Inspired by Matt Parker's playful [Fun Things to Make and Do in the Fourth Dimension](http://www.amazon.com/gp/product/0374535639).
