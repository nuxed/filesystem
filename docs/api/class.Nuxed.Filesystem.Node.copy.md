# Nuxed\\Filesystem\\Node::copy()




Copy the node to a new location and return a new Node object




``` Hack
abstract public function copy(
  Nuxed\Filesystem\Path $target,
  Nuxed\Filesystem\OperationType $process = OperationType::OVERWRITE,
  int $mode = 493,
): Awaitable<Nuxed\Filesystem\Node>;
```




The functionality of copy will change depending on ` $process ` and whether the target file exists.
This also applies recursively.




```
 overwrite   - Will delete the target file or folder
 merge       - Will delete the target file and merge folders
 skip        - Will not copy the node if the target exists
```




## Parameters




+ [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)`` $target ``
+ ` Nuxed\Filesystem\OperationType $process = OperationType::OVERWRITE `
+ ` int $mode = 493 `




## Returns




* ` Awaitable<Nuxed\Filesystem\Node> `