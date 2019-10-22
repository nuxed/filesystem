# Nuxed\\Filesystem\\File




## Interface Synopsis




``` Hack
namespace Nuxed\Filesystem;

final class File extends Node {...}
```




### Public Methods




+ [` ::temporary(string $perfix, Path $directory = Path::create(\sys_get_temp_dir())): Awaitable<File> `](<class.Nuxed.Filesystem.File.temporary.md>)
+ [` ->append(string $data): Awaitable<void> `](<class.Nuxed.Filesystem.File.append.md>)\
  Append data to the end of a file
+ [` ->copy(Path $target, OperationType $process = OperationType::OVERWRITE, int $mode = 493): Awaitable<File> `](<class.Nuxed.Filesystem.File.copy.md>)\
  {@inheritdoc}
+ [` ->create(int $mode = 493): Awaitable<bool> `](<class.Nuxed.Filesystem.File.create.md>)\
  {@inheritdoc}
+ [` ->delete(): Awaitable<bool> `](<class.Nuxed.Filesystem.File.delete.md>)\
  Remove the file
+ [` ->extension(): ?string `](<class.Nuxed.Filesystem.File.extension.md>)\
  Return the file extension
+ [` ->getReadHandle(): \HH\Lib\Experimental\File\DisposableReadHandle `](<class.Nuxed.Filesystem.File.getReadHandle.md>)
+ [` ->getReadWriteHandle(\HH\Lib\Experimental\File\WriteMode $mode = File\WriteMode::OPEN_OR_CREATE): \HH\Lib\Experimental\File\DisposableReadWriteHandle `](<class.Nuxed.Filesystem.File.getReadWriteHandle.md>)
+ [` ->getWriteHandle(\HH\Lib\Experimental\File\WriteMode $mode = File\WriteMode::OPEN_OR_CREATE): \HH\Lib\Experimental\File\DisposableWriteHandle `](<class.Nuxed.Filesystem.File.getWriteHandle.md>)
+ [` ->lines(): Awaitable<Lines> `](<class.Nuxed.Filesystem.File.lines.md>)
+ [` ->link(Path $link): Awaitable<File> `](<class.Nuxed.Filesystem.File.link.md>)\
  Create a hard link
+ [` ->md5(bool $raw = false): string `](<class.Nuxed.Filesystem.File.md5.md>)\
  Return an MD5 checksum of the file
+ [` ->mimeType(): string `](<class.Nuxed.Filesystem.File.mimeType.md>)\
  Return the mime type for the file
+ [` ->prepend(string $data): Awaitable<void> `](<class.Nuxed.Filesystem.File.prepend.md>)\
  Prepend data to the beginning of a file
+ [` ->read(?int $length = NULL): Awaitable<string> `](<class.Nuxed.Filesystem.File.read.md>)\
  Open a file for reading
+ [` ->reset(Path $path = $this->path): this `](<class.Nuxed.Filesystem.File.reset.md>)\
  Reset the cache and path
+ [` ->size(): Awaitable<int> `](<class.Nuxed.Filesystem.File.size.md>)\
  Return the current file size
+ [` ->symlink(Path $target): Awaitable<File> `](<class.Nuxed.Filesystem.File.symlink.md>)\
  Creates a symbolic link
+ [` ->write(string $data, \HH\Lib\Experimental\File\WriteMode $mode = File\WriteMode::TRUNCATE): Awaitable<void> `](<class.Nuxed.Filesystem.File.write.md>)\
  Write data to a file (will erase any previous contents)