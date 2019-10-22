# Nuxed\\Filesystem\\Node::rename()




Rename the node within the current folder




``` Hack
public function rename(
  string $name,
  bool $overwrite = true,
): Awaitable<bool>;
```




If a node exists at the target path,
either delete the node if ` $overwrite ` is true, or throw an exception.




Use [` move() `](<class.Nuxed.Filesystem.Node.move.md>) to re-locate the node to another folder.




## Parameters




+ ` string $name `
+ ` bool $overwrite = true `




## Returns




* ` Awaitable<bool> `