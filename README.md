# Research note class

`research_note` is a LaTeX class for short research notes based on the [amsart][]

[amsart]: http://www.ctan.org/pkg/amsart

## Packages loaded

+ fontspec
+ parskip
+ titling
+ titlesec
+ amsmath
+ amssymb
+ biblatex (with option `style=alphabetic`)
+ xcolor
+ hyperref (with `\hypersetup{xetex, colorlinks, linkcolor=lc, urlcolor=uc, citecolor=cc}`)

## Typography

The main font is Albertina 10pt with 13pt leading and the sansserif font used for section headers is Helvetica Neue.

## Commands

The following are commands which I use frequently and so are defined in the class file.

+ `\map{A}{B}` for a colon and arrow between A and B `:A -> B`.
+ `\set` for set brackets with better spacing
+ `\setc{A}{P}` for a set with conditions (seperated by a pipe).
+ `\CC` for `\mathbb{C}`.
+ `\RR` for `\mathbb{R}`.
+ `\QQ` for `\mathbb{Q}`.
+ `\ZZ` for `\mathbb{Z}`.
+ `\NN` for `\mathbb{N}`.
+ `\PP` for `\mathbb{P}`.
+ `\AA` for `\mathbb{A}`.
+ `\Hom` for `\mathrm{Hom}`.
+ `\End` for `\mathrm{End}`.
+ `\Spec` for `\mathrm{Spec}`.

## TODO

+ Define options to change biblatex style and turn hyperref colors on/off.