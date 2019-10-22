# Nuxed\\Filesystem\\Node




Shared functionality between file and folder objects




## Interface Synopsis




``` Hack
namespace Nuxed\Filesystem;

abstract class Node {...}
```




### Public Methods




+ [` ::destroy(Path $path): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.destroy.md>)\
  Helper method for deleting a file or folder
+ [` ::load(Path $path): Node `](<class.Nuxed.Filesystem.Node.load.md>)\
  Attempt to load a file or folder object at a target location
+ [` ->__construct(Path $path, bool $create = false, int $mode = 493) `](<class.Nuxed.Filesystem.Node.__construct.md>)\
  Initialize the node path
+ [` ->accessTime(): int `](<class.Nuxed.Filesystem.Node.accessTime.md>)\
  Return the last access time
+ [` ->basename(): string `](<class.Nuxed.Filesystem.Node.basename.md>)\
  Return the node name with extension
+ [` ->changeTime(): int `](<class.Nuxed.Filesystem.Node.changeTime.md>)\
  Return the last inode change time
+ [` ->chgrp(int $group, bool $_recursive = false): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.chgrp.md>)\
  Change the group of the node
+ [` ->chmod(int $mode, bool $_recursive = false): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.chmod.md>)\
  Change the permissions mode of the node
+ [` ->chown(int $user, bool $_recursive = false): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.chown.md>)\
  Change the owner of the node
+ [` ->copy(Path $target, OperationType $process = OperationType::OVERWRITE, int $mode = 493): Awaitable<Node> `](<class.Nuxed.Filesystem.Node.copy.md>)\
  Copy the node to a new location and return a new Node object
+ [` ->create(int $mode = 493): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.create.md>)\
  Create the node
+ [` ->delete(): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.delete.md>)\
  Remove the node
+ [` ->dir(): Path `](<class.Nuxed.Filesystem.Node.dir.md>)\
  Return the parent directory
+ [` ->executable(): bool `](<class.Nuxed.Filesystem.Node.executable.md>)\
  Is the file executable
+ [` ->exists(): bool `](<class.Nuxed.Filesystem.Node.exists.md>)\
  Check if the file exists
+ [` ->group(): int `](<class.Nuxed.Filesystem.Node.group.md>)\
  Return the group name for the file
+ [` ->isAbsolute(): bool `](<class.Nuxed.Filesystem.Node.isAbsolute.md>)\
  Return true if the current path is absolute
+ [` ->isRelative(): bool `](<class.Nuxed.Filesystem.Node.isRelative.md>)\
  Return true if the current path is relative
+ [` ->modifyTime(): int `](<class.Nuxed.Filesystem.Node.modifyTime.md>)\
  Return the last modified time
+ [` ->move(Path $target, bool $overwrite = true): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.move.md>)\
  Move the node to another folder
+ [` ->name(): string `](<class.Nuxed.Filesystem.Node.name.md>)\
  Return the node name without extension
+ [` ->owner(): int `](<class.Nuxed.Filesystem.Node.owner.md>)\
  Return the owner name for the node
+ [` ->parent(): ?Folder `](<class.Nuxed.Filesystem.Node.parent.md>)\
  Return the parent folder as a Folder object
+ [` ->path(): Path `](<class.Nuxed.Filesystem.Node.path.md>)\
  Alias for pwd()
+ [` ->permissions(): int `](<class.Nuxed.Filesystem.Node.permissions.md>)\
  Return the permissions for the node
+ [` ->pwd(): Path `](<class.Nuxed.Filesystem.Node.pwd.md>)\
  Return the current path (print working directory)
+ [` ->readable(): bool `](<class.Nuxed.Filesystem.Node.readable.md>)\
  Is the node readable
+ [` ->rename(string $name, bool $overwrite = true): Awaitable<bool> `](<class.Nuxed.Filesystem.Node.rename.md>)\
  Rename the node within the current folder
+ [` ->reset(Path $path = $this->path): this `](<class.Nuxed.Filesystem.Node.reset.md>)\
  Reset the cache and path
+ [` ->size(): Awaitable<int> `](<class.Nuxed.Filesystem.Node.size.md>)\
  Return the current node size
+ [` ->writable(): bool `](<class.Nuxed.Filesystem.Node.writable.md>)\
  Is the node writable







### Protected Methods




* [` ->isAvailable(): void `](<class.Nuxed.Filesystem.Node.isAvailable.md>)
* [` ->isReadable(): void `](<class.Nuxed.Filesystem.Node.isReadable.md>)
* [` ->isWritable(): void `](<class.Nuxed.Filesystem.Node.isWritable.md>)







### Private Methods




- [` ->normalizePath(Path $path): Path `](<class.Nuxed.Filesystem.Node.normalizePath.md>)\
  Return the path normalized if it exists