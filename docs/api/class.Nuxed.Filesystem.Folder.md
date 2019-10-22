# Nuxed\\Filesystem\\Folder




## Interface Synopsis




``` Hack
namespace Nuxed\Filesystem;

final class Folder extends Node {...}
```




### Public Methods




+ [` ->cd(Path $path): this `](<class.Nuxed.Filesystem.Folder.cd.md>)\
  Change directory
+ [` ->chgrp(int $group, bool $recursive = false): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.chgrp.md>)\
  Change the group of the folder
+ [` ->chmod(int $mode, bool $recursive = false): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.chmod.md>)\
  Change the permissions mode of the folder
+ [` ->chown(int $user, bool $recursive = false): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.chown.md>)\
  Change the owner of the folder
+ [` ->contains(string $node): bool `](<class.Nuxed.Filesystem.Folder.contains.md>)\
  Return true if a child node with the given name exists
+ [` ->copy(Path $target, OperationType $process = OperationType::MERGE, int $mode = 493): Awaitable<Folder> `](<class.Nuxed.Filesystem.Folder.copy.md>)\
  {@inheritdoc}
+ [` ->create(int $mode = 493): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.create.md>)\
  {@inheritdoc}
+ [` ->delete(): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.delete.md>)\
  {@inheritdoc}
+ [` ->files(bool $sort = false, bool $recursive = false): Awaitable<Container<File>> `](<class.Nuxed.Filesystem.Folder.files.md>)\
  Scan the folder and return a list of File objects
+ [` ->find<Tr as \HH\Lib\Regex\Match>(\HH\Lib\Regex\Pattern<Tr> $pattern, bool $recursive = false): Awaitable<Container<Node>> `](<class.Nuxed.Filesystem.Folder.find.md>)\
  Find all files and folders within the current folder that match a specific regex pattern
+ [` ->flush(): Awaitable<this> `](<class.Nuxed.Filesystem.Folder.flush.md>)\
  Recursively delete all files and folders within this folder
+ [` ->folders(bool $sort = false, bool $recursive = false): Awaitable<Container<Folder>> `](<class.Nuxed.Filesystem.Folder.folders.md>)\
  Scan the folder and return a list of Folder objects
+ [` ->list<T as Node>(bool $sort = false, bool $recursive = false): Awaitable<Container<T>> `](<class.Nuxed.Filesystem.Folder.list.md>)\
  Scan the folder and return a list of File and Folder objects
+ [` ->mkdir(string $folder, int $mode = 493): Awaitable<Folder> `](<class.Nuxed.Filesystem.Folder.mkdir.md>)\
  Create a folder with the given name insde the current directory
+ [` ->move(Path $target, bool $overwrite = true): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.move.md>)\
  {@inheritdoc}
+ [` ->read<T as Node>(string $name, ?classname<T> $filter = NULL): Awaitable<T> `](<class.Nuxed.Filesystem.Folder.read.md>)\
  Read a node from the current directory
+ [` ->remove(string $node): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.remove.md>)\
  Remove a node insde the current folder
+ [` ->reset(Path $path = $this->path): this `](<class.Nuxed.Filesystem.Folder.reset.md>)\
  {@inheritdoc}
+ [` ->size(): Awaitable<int> `](<class.Nuxed.Filesystem.Folder.size.md>)\
  Return the number of files in the current folder
+ [` ->touch(string $file, int $mode = 493): Awaitable<File> `](<class.Nuxed.Filesystem.Folder.touch.md>)\
  Create a file with the given name inside the current directory







### Private Methods




* [` ->chop((function(Node): Awaitable<bool>) $op): Awaitable<bool> `](<class.Nuxed.Filesystem.Folder.chop.md>)