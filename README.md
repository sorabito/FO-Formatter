# FO-Formatter

General print formatter for various objects

DateAndTime.
And more... (not yet)

# Usage

```smalltalk
DateAndTime now printStringFormatting: 'yyyy-MM-ddTHH:mm:ss'. "'2020-08-05T17:04:59'" "(ISO 8601)"
DateAndTime now printStringFormatting: 'M'. "'8'"
```

# Installation

```smalltalk
Metacello new
 baseline:'BaselineOfFOFormatter';
 repository: 'github://sorabito/FO-Formatter/repository';
 load.
```

