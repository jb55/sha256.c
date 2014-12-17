
# sha256.c

  sha256 in c

## Installation

  Install with clib

    $ clib install jb55/sha256.c

## Example

```c
unsigned char buf[32];

// simple
sha256_hash((unsigned char*)"hello", buf, 5);

// streaming data
sha256_t hash;
sha256_init(&hash);
sha256_update(&hash, (unsigned char*)"hello", 5);
sha256_update(&hash, (unsigned char*)" there", 6);
sha256_final(&hash, buf);
```


## License

  2010-06-11 : Igor Pavlov : Public domain
