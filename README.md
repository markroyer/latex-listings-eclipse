# latex-listings-eclipse
A custom listings style file for latex that looks like the Eclipse IDE style.

## Setup

Download the project and copy the `lstcustom.sty` to the directory of
your latex build.

Make sure that you have the following Debian TeX packages installed.

```
texlive-fonts-extra
```

This package is for the beramono monospace font that can be **bolded**.

## Usage

Include the package in your main TeX document as follows.


```
\usepackage{lstcustom}
```

The style is set to eclipse by default.

## Example

An example file named `example.tex` has been included that you can use
as a template.  You can build the example by typing

```
make
```

in the root of the repository. The result is the file `example.pdf`.

Typing

```
make clean
```

will remove all generated files.


## Screenshots

An example main method.

![Main method](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/main.png "Main Method")

An example constructor.

![Constructor](https://raw.githubusercontent.com/wiki/markroyer/latex-listings-eclipse/screenshots/constructor.png?raw=true "Constructor")

## License

The project is licensed under the terms of the
[GPL3](https://www.gnu.org/licenses/gpl-3.0.en.html) license.

<!--  LocalWords:  lstcustom texlive usepackage
 -->
