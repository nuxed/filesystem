# Nuxed\\Filesystem\\Folder::list()




Scan the folder and return a list of File and Folder objects




``` Hack
public function list<T as Nuxed\Filesystem\Node>(
  bool $sort = false,
  bool $recursive = false,
): Awaitable<Container<T>>;
```




## Parameters




+ ` bool $sort = false `
+ ` bool $recursive = false `




## Returns




* ` Awaitable<Container<T>> `