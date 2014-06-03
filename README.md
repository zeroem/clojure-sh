# clojure.sh

Add some Clojure-isms to your favorite shell. The idea isn't to give you Lisp in your shell but to give
you the Lispy building blocks for operating on files and streams.

## Usage

Just add this directory to your `PATH` and you're good to go!

```shell
# write the first line of the file to stdout
> first file-path

# drop the first line of ls and write the rest to stdout
> ls | rest

# write only the executable files to stdout
> ls | filter '[ -x $1 ]'
```
