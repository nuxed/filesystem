namespace Nuxed\Filesystem;

use namespace HH\Lib\{C, Str, Vec};

final class Lines implements \Countable, \IteratorAggregate<string> {

  public function __construct(private Container<string> $lines) {
  }

  public function count(): int {
    return C\count($this->lines);
  }

  public function first(): string {
    if (C\is_empty($this->lines)) {
      throw new Exception\OutOfRangeException(
        'Lines instance is empty.',
      );
    }

    return C\firstx($this->lines);
  }

  /**
   * @return tuple(string, Lines)   a tuple of the first line and the rest of
   *                                the lines as a new Lines instance.
   */
  public function jump(): (string, Lines) {
    return tuple($this->first(), new self(Vec\drop($this->lines, 1)));
  }

  public static function blank(string $line): bool {
    return Str\trim($line, " \t") === '';
  }

  public function getIterator(): \Iterator<string> {
    return (new Vector($this->lines))->getIterator();
  }

  public function toString(): string {
    return Str\join($this->lines, "\n");
  }
}
