# Scanners Live in Vain *by Cordwainer Smith*

[![build](https://github.com/arminha/cordwainer-smith-scanners/workflows/build/badge.svg)](https://github.com/arminha/cordwainer-smith-scanners/actions?query=workflow%3Abuild)

Sources and scripts to create an ebook of [Scanners Live in Vain](https://en.wikipedia.org/wiki/Scanners_Live_in_Vain) by Cordwainer Smith.

This content is based on [Scanners Live in Vain](https://archive.org/details/ScannersLiveInVain) at the Internet Archive.

## Building

It uses [mdBook](https://github.com/rust-lang/mdBook) and
[mdbook-epub](https://github.com/Michael-F-Bryan/mdbook-epub) to create
an ePub book from a list of Markdown files.

Running `mdbook build` will create the ebook as  in the `book/epub` folder.
