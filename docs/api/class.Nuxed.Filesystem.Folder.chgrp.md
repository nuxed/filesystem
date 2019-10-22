# Nuxed\\Filesystem\\Folder::chgrp()




Change the group of the folder




``` Hack
public function chgrp(
  int $group,
  bool $recursive = false,
): Awaitable<bool>;
```




If $recursive is true, set the group on all children.




## Parameters




+ ` int $group `
+ ` bool $recursive = false `




## Returns




* ` Awaitable<bool> `