# Nuxed\\Filesystem\\Folder::chown()




Change the owner of the folder




``` Hack
public function chown(
  int $user,
  bool $recursive = false,
): Awaitable<bool>;
```




If $recursive is true, set the owner on all children.




## Parameters




+ ` int $user `
+ ` bool $recursive = false `




## Returns




* ` Awaitable<bool> `