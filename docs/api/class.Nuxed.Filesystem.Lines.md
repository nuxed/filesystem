# Nuxed\\Filesystem\\Lines




## Interface Synopsis




``` Hack
namespace Nuxed\Filesystem;

final class Lines implements \Countable, \IteratorAggregate<string> {...}
```




### Public Methods




+ [` ::blank(string $line): bool `](<class.Nuxed.Filesystem.Lines.blank.md>)
+ [` ->__construct(Container<string> $lines) `](<class.Nuxed.Filesystem.Lines.__construct.md>)
+ [` ->count(): int `](<class.Nuxed.Filesystem.Lines.count.md>)
+ [` ->first(): string `](<class.Nuxed.Filesystem.Lines.first.md>)
+ [` ->getIterator(): \Iterator<string> `](<class.Nuxed.Filesystem.Lines.getIterator.md>)
+ [` ->jump(): (string, Lines) `](<class.Nuxed.Filesystem.Lines.jump.md>)
+ [` ->toString(): string `](<class.Nuxed.Filesystem.Lines.toString.md>)