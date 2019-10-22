# Nuxed\\Filesystem\\Path::normalize()




Normalize a string by resolving "




``` Hack
public static function normalize(
  string $path,
): ?string;
```




" and "..". When multiple slashes are found, they're replaced by a single one;
when the path contains a trailing slash, it is preserved. On Windows backslashes are used.




if the path couldn't be normalized, null will be returned.




## Parameters




+ ` string $path `




## Returns




* ` ?string `