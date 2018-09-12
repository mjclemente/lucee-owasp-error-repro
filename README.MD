When using the OWASP ESAPI methods in Lucee, such as `encodeForHTML()`, an error appears in the console the first time they are encountered.

To reproduce, clone this repository and with CommandBox run:

```
server start --debug --console
```

The following two errors are shown in the console:

```
[ERROR] System property [org.owasp.esapi.opsteam] is not set
[ERROR] System property [org.owasp.esapi.devteam] is not set
```