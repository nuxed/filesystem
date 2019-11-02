<p align="center"><img src="https://avatars3.githubusercontent.com/u/45311177?s=200&v=4"></p>

<p align="center">
<a href="https://travis-ci.org/nuxed/filesystem"><img src="https://travis-ci.org/nuxed/filesystem.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/nuxed/filesystem"><img src="https://poser.pugx.org/nuxed/filesystem/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/nuxed/filesystem"><img src="https://poser.pugx.org/nuxed/filesystem/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/nuxed/filesystem"><img src="https://poser.pugx.org/nuxed/filesystem/license.svg" alt="License"></a>
</p>

# Nuxed Filesystem

The Nuxed Filesystem component provides classes that interact with the local filesystem. Specialized classes can be used to read data, write data, alter permissions, rename files, copy, create, delete, move, traverse, and many more through an easy to use interface.

### Installation

This package can be installed with [Composer](https://getcomposer.org).

```console
$ composer require nuxed/filesystem
```

### Example

```hack
use namespace Nuxed\Filesystem;

<<__EntryPoint>>
async function main(): Awaitable<void> {
  $file = new Filesystem\File('file.txt');
  await $file->create(0755);

  $file->write('Hello, World!');

  print await $file->read(5); // Hello

  $parent = $file->parent();
  await $parent->flush();

  $file->exists(); // false
}
```

---

### Security

For information on reporting security vulnerabilities in Nuxed, see [SECURITY.md](SECURITY.md).

---

### License

Nuxed is open-sourced software licensed under the MIT-licensed.
