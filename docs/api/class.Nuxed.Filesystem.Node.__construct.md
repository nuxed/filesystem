# Nuxed\\Filesystem\\Node::__construct()




Initialize the node path




``` Hack
public function __construct(
  Nuxed\Filesystem\Path $path,
  bool $create = false,
  int $mode = 493,
);
```




If the node doesn't exist and ` $create ` is true, create it.




## Parameters




+ [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)`` $path ``
+ ` bool $create = false `
+ ` int $mode = 493 `