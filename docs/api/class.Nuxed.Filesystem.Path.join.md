# Nuxed\\Filesystem\\Path::join()




Join all path parts and return a normalized path




``` Hack
public static function join(
  Container<string> $paths,
  bool $above = true,
): Nuxed\Filesystem\Path;
```




## Parameters




+ ` Container<string> $paths `
+ ` bool $above = true ` - Go above the root path if .. is used




## Returns




* [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)