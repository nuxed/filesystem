# Nuxed\\Filesystem\\Folder::files()




Scan the folder and return a list of File objects




``` Hack
public function files(
  bool $sort = false,
  bool $recursive = false,
): Awaitable<Container<Nuxed\Filesystem\File>>;
```




## Parameters




+ ` bool $sort = false `
+ ` bool $recursive = false `




## Returns




* ` Awaitable<Container<Nuxed\Filesystem\File>> `