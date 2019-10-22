# Nuxed\\Filesystem\\Node::move()




Move the node to another folder




``` Hack
public function move(
  Nuxed\Filesystem\Path $target,
  bool $overwrite = true,
): Awaitable<bool>;
```




If a node exists at the target path,
either delete the node if ` $overwrite ` is true, or throw an exception.




Use [` rename() `](<class.Nuxed.Filesystem.Node.rename.md>) to rename the node within the current folder.




## Parameters




+ [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)`` $target ``
+ ` bool $overwrite = true `




## Returns




* ` Awaitable<bool> `