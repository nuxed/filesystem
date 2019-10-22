# Nuxed\\Filesystem\\Folder::find()




Find all files and folders within the current folder that match a specific regex pattern




``` Hack
public function find<Tr as HH\Lib\Regex\Match>(
  HH\Lib\Regex\Pattern<Tr> $pattern,
  bool $recursive = false,
): Awaitable<Container<Nuxed\Filesystem\Node>>;
```




## Parameters




+ ` HH\Lib\Regex\Pattern<Tr> $pattern `
+ ` bool $recursive = false `




## Returns




* ` Awaitable<Container<Nuxed\Filesystem\Node>> `