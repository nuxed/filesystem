# Nuxed\\Filesystem\\Folder::read()




Read a node from the current directory




``` Hack
public function read<T as Nuxed\Filesystem\Node>(
  string $name,
  ?classname<T> $filter = NULL,
): Awaitable<T>;
```




## Parameters




+ ` string $name `
+ ` ?classname<T> $filter = NULL `




## Returns




* ` Awaitable<T> `