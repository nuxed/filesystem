# Nuxed\\Filesystem\\File::temporary()




``` Hack
public static function temporary(
  string $perfix,
  Nuxed\Filesystem\Path $directory = Path::create(\sys_get_temp_dir()),
): Awaitable<Nuxed\Filesystem\File>;
```




## Parameters




+ ` string $perfix `
+ [` Nuxed\Filesystem\Path `](<class.Nuxed.Filesystem.Path.md>)`` $directory = Path::create(\sys_get_temp_dir()) ``




## Returns




* ` Awaitable<Nuxed\Filesystem\File> `