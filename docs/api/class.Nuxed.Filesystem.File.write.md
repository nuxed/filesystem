# Nuxed\\Filesystem\\File::write()




Write data to a file (will erase any previous contents)




``` Hack
public function write(
  string $data,
  HH\Lib\Experimental\File\WriteMode $mode = File\WriteMode::TRUNCATE,
): Awaitable<void>;
```




## Parameters




+ ` string $data `
+ ` HH\Lib\Experimental\File\WriteMode $mode = File\WriteMode::TRUNCATE `




## Returns




* ` Awaitable<void> `