# OWASP ESAPI Logging Issue

If the OWASP ESAPI methods in Lucee, such as `encodeForHTMLAttribute()`, are called under load, `System.out` appears to get permanently redirected to dev/null. That is, it breaks `systemOutput()`.

To reproduce, clone this repository and with CommandBox run:

```
server start --console
```

Once the site is up, you'll see that refeshing the page logs the date/time to the console.

Using a tool like JMeter or Screaming Frog, hit the site with several threads. You'll see that the outputting of the date stops abruptly. `SystemOutput()` no longer logs the date. It seems the `System.out` has been redirected.
