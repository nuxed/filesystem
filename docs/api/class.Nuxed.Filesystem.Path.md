# Nuxed\\Filesystem\\Path




Provides convenience functions for inflecting notation paths and file system paths




## Interface Synopsis




``` Hack
namespace Nuxed\Filesystem;

final class Path {...}
```




### Public Methods




+ [` ::create(string $path): Path `](<class.Nuxed.Filesystem.Path.create.md>)
+ [` ::join(Container<string> $paths, bool $above = true): Path `](<class.Nuxed.Filesystem.Path.join.md>)\
  Join all path parts and return a normalized path
+ [` ::normalize(string $path): ?string `](<class.Nuxed.Filesystem.Path.normalize.md>)\
  Normalize a string by resolving "
+ [` ::standard(string $path, bool $endSlash = false): string `](<class.Nuxed.Filesystem.Path.standard.md>)\
  Converts OS directory separators to the standard forward slash
+ [` ->__construct(\HH\Lib\Experimental\File\Path $path) `](<class.Nuxed.Filesystem.Path.__construct.md>)
+ [` ->basename(): string `](<class.Nuxed.Filesystem.Path.basename.md>)\
  Return the file name with extension
+ [` ->compare(string $other): int `](<class.Nuxed.Filesystem.Path.compare.md>)
+ [` ->exists(): bool `](<class.Nuxed.Filesystem.Path.exists.md>)\
  Check if the file exists
+ [` ->extension(): ?string `](<class.Nuxed.Filesystem.Path.extension.md>)\
  Return the extension from a file path
+ [` ->isAbsolute(): bool `](<class.Nuxed.Filesystem.Path.isAbsolute.md>)\
  Verify a path is absolute by checking the first path part
+ [` ->isFile(): bool `](<class.Nuxed.Filesystem.Path.isFile.md>)\
  Check if the path is a file
+ [` ->isFolder(): bool `](<class.Nuxed.Filesystem.Path.isFolder.md>)\
  Check if the path is a directory
+ [` ->isRelative(): bool `](<class.Nuxed.Filesystem.Path.isRelative.md>)\
  Verify a path is relative
+ [` ->isSymlink(): bool `](<class.Nuxed.Filesystem.Path.isSymlink.md>)\
  Check if the path is a symbolic link
+ [` ->name(): string `](<class.Nuxed.Filesystem.Path.name.md>)\
  Return the file name without extension
+ [` ->parent(): Path `](<class.Nuxed.Filesystem.Path.parent.md>)\
  Return the parent directory
+ [` ->parts(): Container<string> `](<class.Nuxed.Filesystem.Path.parts.md>)
+ [` ->relativeTo(Path $to): Path `](<class.Nuxed.Filesystem.Path.relativeTo.md>)\
  Determine the relative path between this and another absolute path
+ [` ->toString(): string `](<class.Nuxed.Filesystem.Path.toString.md>)