# Nuxed\\Filesystem\\Folder::chmod()




Change the permissions mode of the folder




``` Hack
public function chmod(
  int $mode,
  bool $recursive = false,
): Awaitable<bool>;
```




If $recursive is true, set the mode on all children.




## Parameters




+ ` int $mode `
+ ` bool $recursive = false `




## Returns




* ` Awaitable<bool> `