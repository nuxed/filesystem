<p align="center"><img src="https://avatars3.githubusercontent.com/u/45311177?s=200&v=4"></p>

![Coding standards status](https://github.com/nuxed/filesystem/workflows/coding%20standards/badge.svg?branch=develop)
![Static analysis status](https://github.com/nuxed/filesystem/workflows/static%20analysis/badge.svg?branch=develop)
![Unit tests status](https://github.com/nuxed/filesystem/workflows/unit%20tests/badge.svg?branch=develop)
[![Total Downloads](https://poser.pugx.org/nuxed/filesystem/d/total.svg)](https://packagist.org/packages/nuxed/filesystem)
[![Latest Stable Version](https://poser.pugx.org/nuxed/filesystem/v/stable.svg)](https://packagist.org/packages/nuxed/filesystem)
[![License](https://poser.pugx.org/nuxed/filesystem/license.svg)](https://packagist.org/packages/nuxed/filesystem)

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
