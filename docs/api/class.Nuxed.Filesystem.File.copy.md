# Nuxed\\Filesystem\\File::copy()




{@inheritdoc}




``` Hack
public function copy(
  Nuxed\Filesystem\Path $target,
  Nuxed\Filesystem\OperationType $process = OperationType::OVERWRITE,
  int $mode = 493,
): Awaitable<Nuxed\Filesystem\File>;
```




## Parameters




+ [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)`` $target ``
+ ` Nuxed\Filesystem\OperationType $process = OperationType::OVERWRITE `
+ ` int $mode = 493 `




## Returns




* ` Awaitable<Nuxed\Filesystem\File> `