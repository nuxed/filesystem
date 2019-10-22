# Nuxed\\Filesystem\\Folder::copy()




{@inheritdoc}




``` Hack
public function copy(
  Nuxed\Filesystem\Path $target,
  Nuxed\Filesystem\OperationType $process = OperationType::MERGE,
  int $mode = 493,
): Awaitable<Nuxed\Filesystem\Folder>;
```




## Parameters




+ [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)`` $target ``
+ ` Nuxed\Filesystem\OperationType $process = OperationType::MERGE `
+ ` int $mode = 493 `




## Returns




* ` Awaitable<Nuxed\Filesystem\Folder> `