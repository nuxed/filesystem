# Nuxed\\Filesystem\\File::read()




Open a file for reading




``` Hack
public function read(
  ?int $length = NULL,
): Awaitable<string>;
```




If $length is provided, will only read up to that limit.




## Parameters




+ ` ?int $length = NULL `




## Returns




* ` Awaitable<string> `