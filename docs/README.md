# Documentation

## Nodes - Files, & Folders

`File`s and `Folder`s are the staple of any filesystem and are represented by the `Nuxed\Filesystem\File` and `Nuxed\Filesystem\Folder` classes. The filesystem classes provide read, write, delete, and management functionality for local filesystem.

Both `Nuxed\Filesystem\File` and `Nuxed\Filesystem\Folder` extend `Nuxed\Filesystem\Node` class that represent shared functionality between file and folder objects.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  await $file->create();
  await $file->write('Hello, World!');

  $folder = new Filesystem\Folder('/path/to');
  $file = $folder->read<Filesystem\File>('file');
  $content = await $file->read();
  echo $content; // Hello, World!
}
```

### Usage

Once an object is created, you can check if the file exists at the given path using `exists()`

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  if ($file->exists()) {
    // ...
  }
}
```

### Creating & Deleting

After constructing the object, you can create the node using `create()`, which will return a boolean `true` on successful creation. This method will create the file if it doesn't exist. As well, an optional permission mode can be passed (defaults to `0755`)

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  if (await $file->create(0777)) {
    // success
  }
}
```

> Note: 
>   - If the node already exists, `Nuxed\Filesystem\Exception\ExistingNodeException` exception will be thrown.
>   - If the parent directory is not writable, `Nuxed\Filesystem\Exception\UnwritableNodeException` exception will be thrown.

To delete the node, use `delete()`, which will return a boolean `true` on successful deletion.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $folder = new Filesystem\Folder('/path/to/folder');
  if (await $folder->delete()) {
    // success
  }
}
```

> Note:
>   - If the node doesn't existsm `Nuxed\Filesystem\Exception\MissingNodeException` exception will be thrown.
>   - `Folder` is atomic and will attempt to recursively delete all children before deleting itself.

### Copying, Moving, & Renaming

Copying files can be tricky as you must validate the source and the destination. When copying with `copy()`, a destination path must be defined, and the type of operation to use.

```hack
namespace Nuxed\Filesystem;

enum OperationType: int {
  /*
   * Will overwrite the destination file if one exists (file and folder)
   */
  OVERWRITE = 0;

  /*
   * Will merge folders together if they exist at the same location (folder only)
   */
  MERGE = 1;

  /*
   * Will not overwrite the destination file if it exists (file and folder)
   */
  SKIP = 2;
}
```

An optional permission mode can be set as the third argument for the newly copied file.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  $copy = await $file->copy(
    '/to/new/file',
    Filesystem\OperationType::OVERWRITE
  );

  $folder = new Filesystem\File('/path/to/folder');
  $copy = await $folder->copy(
    '/to/new/folder',
    Filesystem\OperationType::MERGE,
    0666
  );
}
```

Moving works in the same way as copying, but is much simpler. Simply use `move()` and pass the path to move to and a boolean on whether to overwrite the destination file if one exists (defaults true).

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  if (await $file->move('/to/new/file')) {
    // success!
  }
}
```

Moving will only move a file, it will not rename a file. To rename a file in place, use `rename()`. This method requires a new name and a boolean on whether to overwrite the destination file (defaults true).


```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  if (await $file->rename('new-file-name')) {
    // success!
  }

  $folder = new Filesystem\Folder('/nuxed/filesystem/src');
  try {
    if (await $folder->rename('source', false)) {
      // success!
    } else {
      // failure.
    }
  } catch(Filesystem\Exception\ExistingNodeException $e) {
    // cannot rename folder as the target (/nuxed/filesystem/source) already exists.
    echo $e->getMessage();
  }
}
```

### Informational

To access a file or folders name use `basename()`, or a file name without an extension use `name()`, or the extension itself use `extension()` (files only).

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/image.png');

  $file->basename(); // image.png
  $file->name(); // image
  $file->extension(); // png
}
```

To access the group, owner, or parent, use `group()`, `owner()`, and `parent()` respectively. The `parent()` method will return a new Folder instance for the folder that the file/folder belongs in. If there is no parent (at the root), null will be returned.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/image.png');

  $group = $file->group() as int;
  $owner = $file->owner() as int;
  $parent = $file->parent() as Filesystem\Folder;
}
```

To get the size of a file, or the number of children within a folder, use `size()`.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('app/resource/uploads/image.png');
  $folder = new Filesystem\Folder('app/resource/uploads');

  $size = await $file->size();
  $childrens = await $folder->size();
}
```

### Timestamps

To access timestamps, like access, modified, and changed, use `accessTime()`, `modifyTime()`, and `changeTime()`.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('app/resource/uploads/image.png');

  $file->accessTime();
  $file->modifyTime();
  $file->changeTime();
}
```

### Permissions

To modify the group, owner, and mode, use `chgrp()`, `chown()`, and `chmod()` (requires an octal value).

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $file = new Filesystem\File('app/resource/uploads/image.png');

  await $file->chgrp(8);
  await $file->chown(3);
  await $file->chmod(0777);
}
```

To modify permissions on all files within a folder, set the recursive second argument to `true`.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $folder = new Filesystem\Folder('app/resource/uploads/');

  await $folder->chmod(0777, true);
}
```

The `permissions()` method will return the literal read-write-execute octal value.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $app = new Filesystem\File('/path/to/application');

  await $app->chmod(0777);

  $file->permissions(); // 0777
}
```

### Paths

The `path()` method will return the current path, while `dir()` will return the parent folder path.

```hack
use namespace Nuxed\Filesystem;

async function main(): Awaitable<void> {
  $app = new Filesystem\File('/path/to/application');

  echo $app->path()->toString(); // `/path/to/application`
  echo $app->dir()->toString(); // `/path/to/`
}
```

## Files

`Nuxed\Filesystem\File` provides read, write, and lock functionality alongside the utility methods `mimeType()`, which attempts to guess the file type, and `md5()`, which returns an MD5 hash of the file.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/www/index.html');
  echo $file->mimeType(); // `text/html`
}
```

### Symlink, & Link

The `symlink()` method can be used to create a symbolic link to the current file.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  $symlink = await $file->symlink('/path/to/symbolic-link');

  $symlink->path()->isSymlink(); // true
}
```

If you want to create a hard link to the current file, you can use the `link()` method.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file');
  $link = await $file->link('/path/to/link');
}
```

### Reading

The `read()` method will attempt to read the contents of the current file. An optional limit can be passed to return all bytes up until that point.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/www/index.html');
  $content = await $file->read();
  // read first 100 bytes
  $content = await $file->read(100);
}
```

The `lines()` method can be used to retrieve all lines in the file as a `Nuxed\Filesystem\Lines` instance.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/www/index.html');
  $lines = await $file->lines();
  foreach($lines as $line) {
    echo $line;
  }

  list($first, $rest) = $lines->jump();
  $next = $rest->first();
}
```

> Note: These method will lock the file until the contents have been read.

To retrieve the underlying read handle, you can use the `getReadHandle` method.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/www/index.html');
  await using(
    $handle = $file->getReadHandle()
  ) {
    $line = await $handle->readLineAsync();
    $content = await $handle->readAsync();
  }
}
```

### Writing

The `write()` method will write content to the current file. The default write mode is `HH\Lib\Experimental\File\WriteMode::TRUNCATE`, which can be changed using the second argument.

```hack
use namespace Nuxed\Filesystem;
use namespace HH\Lib\Experimental\File;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file.txt');
  await $file->create();
  await $file->write('Hello');
  await $file->write('Hey', File\WriteMode::TRUNCATE);
}
```

The previous method will truncate the file before writing to it. To append to the file instead, use `append()`.

```hack
use namespace Nuxed\Filesystem;
use namespace HH\Lib\Experimental\File;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file.txt');
  await $file->create();
  await $file->write('Hello');
  await $file->append(', World!');
}
```

The reverse can also be used, `prepend()`, which will write content to the beginning of the file.

```hack
use namespace Nuxed\Filesystem;
use namespace HH\Lib\Experimental\File;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file.txt');
  await $file->create();
  await $file->write('World!');
  await $file->prepend('Hello, ');
}
```

> Note: These methods will also lock the file until the content has been written.

To retrieve the underlying write handle, you can use the `getWriteHandle` method, The default write mode is `HH\Lib\Experimental\File\WriteMode::TRUNCATE`, which can be changed using the first argument.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('/path/to/file.txt');
  await using(
    $handle = $file->getWriteHandle()
  ) {
    await $handle->writeAsync('Hello, World');
  }
}
```

## Folders

`Nuxed\Filesystem\Folder` provides management of files and folders on the filesystem.

### Reading

To gather the child nodes within a folder, the `list<T as Filesystem\Node>()` method can be used to return all nodes of `T` type, the `files()` method will return a list of `File`s, and `folders()` will return a list of `Folder`s. Lists can be sorted by passing true as the first argument, and gathering via recursion is also possible by passing true as the second argument.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $source = new Filesystem\Folder('/src');

  $children = await $source->list<Filesystem\Node>();

  $folders = await $source->list<Filesystem\Folder>();
  // or simply
  $folders = await $source->folders();


  $files = await $source->list<Filesystem\File>();
  // or simply
  $files = await $source->files();
}
```

To retrieve a node inside a folder, the `read<T as Filesystem\Node>()` method can be used.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $source = new Filesystem\Folder('/src');

  $file = await $source->read<Filesystem\File>('file');
  $folder = await $source->read<Filesystem\Folder>('folder');
  $node = await $source->read<Filesystem\Node>('file-or-folder');
}
```

### Writing

The `touch()` method can be used to create a file inside the current folder, and The `mkdir()` can be used to create a folder inside the folder. an optional permission mode can be passed to both methods (defaults to `0755`)

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $source = new Filesystem\Folder('/src');

  $file = await $source->touch('file', 0777);
  $folder = await $source->mkdir('folder', 0755);
}
```

### Finding

The `find()` method will attempt to find all nodes within the current folder that match a specific regex pattern. an optional boolean argument can be passed to the method to find all matches recursively.

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $source = new Filesystem\Folder('/src');

  // find all nodes containing "bar" in the name
  $result = await $folder->find(re"/.*bar.*/");

  // find all nodes containing "bar" in the name, recursively
  $result = await $folder->find(re"/.*foo.*/", true);
}
```

### Cleaning

To delete all files within the folder but not the folder itself, use `flush()`

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $source = new Filesystem\Folder('/src');

  await $source->flush();
  $source->exists(); // true
  await $source->size(); // 0
}
```

# API Index

## Classes

- [Nuxed\\Filesystem\\Exception\\ExistingNodeException](api/class.Nuxed.Filesystem.Exception.ExistingNodeException.md)
- [Nuxed\\Filesystem\\Exception\\InvalidArgumentException](api/class.Nuxed.Filesystem.Exception.InvalidArgumentException.md)
- [Nuxed\\Filesystem\\Exception\\InvalidPathException](api/class.Nuxed.Filesystem.Exception.InvalidPathException.md)
- [Nuxed\\Filesystem\\Exception\\MissingNodeException](api/class.Nuxed.Filesystem.Exception.MissingNodeException.md)
- [Nuxed\\Filesystem\\Exception\\OutOfRangeException](api/class.Nuxed.Filesystem.Exception.OutOfRangeException.md)
- [Nuxed\\Filesystem\\Exception\\ReadErrorException](api/class.Nuxed.Filesystem.Exception.ReadErrorException.md)
- [Nuxed\\Filesystem\\Exception\\RuntimeException](api/class.Nuxed.Filesystem.Exception.RuntimeException.md)
- [Nuxed\\Filesystem\\Exception\\UnreadableNodeException](api/class.Nuxed.Filesystem.Exception.UnreadableNodeException.md)
- [Nuxed\\Filesystem\\Exception\\UnwritableNodeException](api/class.Nuxed.Filesystem.Exception.UnwritableNodeException.md)
- [Nuxed\\Filesystem\\Exception\\WriteErrorException](api/class.Nuxed.Filesystem.Exception.WriteErrorException.md)
- [Nuxed\\Filesystem\\File](api/class.Nuxed.Filesystem.File.md)
- [Nuxed\\Filesystem\\Folder](api/class.Nuxed.Filesystem.Folder.md)
- [Nuxed\\Filesystem\\Lines](api/class.Nuxed.Filesystem.Lines.md)
- [Nuxed\\Filesystem\\Node](api/class.Nuxed.Filesystem.Node.md)
- [Nuxed\\Filesystem\\Path](api/class.Nuxed.Filesystem.Path.md)

## Interfaces

- [Nuxed\\Filesystem\\Exception\\IException](api/interface.Nuxed.Filesystem.Exception.IException.md)