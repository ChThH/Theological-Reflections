---
title: "Ligature Test"
#mainfont: Libertinus Serif
fontsize: 12pt
pdf-engine: lualatex
#fontfeatures:
#  - Ligatures=TeX
#  - Ligatures=Common
#  - Liagures=Rare
#  - RawFeature=+hlig
#  - RawFeature=+dlig
#  - RawFeature=+onum
#  - RawFeature=+frac
header-includes:
  - |
    \usepackage{fontspec}
    \AtBeginDocument{
        \setmainfont{Libertinus Serif}[
            Ligatures=TeX,
            RawFeature={+hlig,+onum,+dlig}
    ]}
---

Standard ligatures: fi fl ffi ffl  
Discretionary ligatures: tt tz Th ck ch  
Historical ligatures: ct st  
Small caps:  
<span style="font-variant: small-caps;">This is small caps.</span>  
Oldstyle numbers: 1234567890  
\addfontfeatures{RawFeature=+frac{Fractions: 1/2 1/4 3/8  }  }  
123