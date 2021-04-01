# OSU Spring 2021 Homework

> Note: Markdown files in this repo are intended to be used with `pandoc` and contain inline LaTeX.
>
> GFM does not support this and as such these will not render correctly here on GitHub.

A handy alias:

```sh
md2pdf () {
    filename=$*
    pandoc -s "$filename" -o "${filename%%.*}.pdf" -V geometry:margin=1in --highlight=tango --citeproc
}
```
