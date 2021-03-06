# latex-listings-eclipse

![Build](https://github.com/markroyer/latex-listings-eclipse/actions/workflows/ci.yml/badge.svg)

A custom listings style file for latex that looks like the Eclipse IDE style.

**NOTE**: You may also be interested in this same style implemented
using the latex *minted* package.  An example of how to make your own
custom styles with Pygments is found here:
[latex-minted-eclipse](https://gitlab.com/mark.e.royer/latex-minted-eclipse)

## Setup

Download the project and copy the `lstcustom.sty` to the directory of
your latex build.

Make sure that you have the following Debian TeX packages installed.

```
texlive-fonts-extra
```

We use this package for the beramono monospace font which allows
**bold** typeface.

## Usage

Include the package in your main TeX document as follows.


```
\usepackage{lstcustom}
```

The style is set to eclipse by default.

## Example

An example file named `example.tex` has been included that you can use
as a template for standard TeX documents.  If you are creating a
beamer presentation, there is also a template file called
`beamer-example.tex` to get you started.  To build both examples type

```
make
```

in the root of the repository. This results in the generation of the
files `example.pdf` and `beamer-example.pdf`.

Typing

```
make clean
```

will remove all generated files.


## Screenshots

### An example main method

![Main method](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/main.png "Main Method")

### An example constructor

![Constructor](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/constructor.png?raw=true "Constructor")

### Customizations

Sometimes you just have to do things yourself.  If you really want to
make custom changes inside code, then you escape and use standard
TeX as shown below.  For example, the enum below has no color or
emphasis as is typical in Eclipse. 

![Example Enum](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/not-customized.png?raw=true "Example Enum")

You may add your own latex by escaping out of the listing.  I've added
two macros to mimic Eclipse field (`\ef`) and Eclipse field italicized
(`\efi`).  There is also a similar `\ecom` and `\ecomi` for comment
styling. The results are shown below.

![Example Manual Enum](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/man-customized.png?raw=true "Example Manual Enum")

The nice thing about this approach is that you can use anything that
you normally can in TeX.  For example,

![Something Different](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/something-different.png?raw=true "Something Different")

makes heavy use of the math environment. Of course, some of the lines
are a little too big, so the bounding box appears slightly broken.


## Contributors

Many thanks to the following!

* ANTONIO MANGAS RUIZ for his feedback and suggestions.
* [mrbela](https://github.com/mrbela) and [Urlike Fischer](https://tex.stackexchange.com/users/2388/ulrike-fischer) for pointing out a solution to the beamer bug described [here](https://tex.stackexchange.com/questions/586477/missing-number-treated-as-zero-within-beamer-and-lstcustom).


## License

The project is licensed under the terms of the
[GPL3](https://www.gnu.org/licenses/gpl-3.0.en.html) license.

<!--  LocalWords:  lstcustom texlive usepackage beramono monospace ef
 -->
<!--  LocalWords:  tex beamer pdf Customizations enum efi ecom ecomi
 -->
<!--  LocalWords:  MANGAS Pygments mrbela Urlike
 -->
