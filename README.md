# clojure.sh

Adding some clojure-isms to your favorite shell. The idea isn't to give you Lisp in your shell but to give
you the Lispy building blocks for operating on files and streams.

## Usage

Just add this directory to your `PATH` and you're good to go!

```shell
> ls | first
# first-file

> ls | rest
# all the other files

> ls | filter '[ -x $1 ]'
# all the executable files
```
