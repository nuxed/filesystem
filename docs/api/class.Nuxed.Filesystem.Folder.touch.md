# Nuxed\\Filesystem\\Folder::touch()




Create a file with the given name inside the current directory




``` Hack
public function touch(
  string $file,
  int $mode = 493,
): Awaitable<Nuxed\Filesystem\File>;
```




## Parameters




+ ` string $file `
+ ` int $mode = 493 ` file mode.




## Returns




* ` Awaitable<Nuxed\Filesystem\File> `