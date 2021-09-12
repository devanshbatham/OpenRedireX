## OpenRedireX : Asynchronous Open redirect Fuzzer for Humans 
![enter image description here](https://raw.githubusercontent.com/devanshbatham/OpenRedireX/master/static/banner.PNG)

## Key Features : 

 - Takes a url or list of urls and fuzzes them for Open redirect issues 
 - You can specify your own payloads in 'payloads.txt'
 - Shows Location header history (if any)
 - Fast (as it is Asynchronous)
 - umm thats it , nothing much  ! 

## Usage : 
**Note : Use Python 3.7+ !** 
```
$ git clone https://github.com/devanshbatham/OpenRedireX
$ cd OpenRedireX
Note : The "FUZZ" is important and the url must be in double qoutes ! 
$ python3.7 openredirex.py -u "https://vulnerable.com/?url=FUZZ" -p payloads.txt --keyword FUZZ
```

### For single URL : 
```
$ python3.7 openredirex.py -u "https://vulnerable.com/?url=FUZZ" -p payloads.txt --keyword FUZZ
```

### For List of URLs : 
```
$ python3.7 openredirex.py -l urls.txt -p payloads.txt --keyword FUZZ
```
## Example : 
![](https://raw.githubusercontent.com/devanshbatham/OpenRedireX/master/static/example.PNG)
### Credits : 
Thanks mate [@NullPxl](https://twitter.com/NullPxl)

## __Want to support my work?__
If you think my work has added some value to your existing knowledge, then you can [Buy me a Coffee here](https://www.buymeacoffee.com/Asm0d3us) (and who doesn't loves a good cup of coffee?')


[![name](https://img.buymeacoffee.com/api/?url=aHR0cHM6Ly9jZG4uYnV5bWVhY29mZmVlLmNvbS91cGxvYWRzL3Byb2ZpbGVfcGljdHVyZXMvMjAyMS8wOS8wMGU4ZGJjODc0NzI0MmRjYTJmNGJkMmMzMzQ1ODUzZC5wbmdAMzAwd18wZS53ZWJw&creator=Asm0d3us&is_creating=creating%20educational%20cybersecurity%20related%20content.&design_code=1&design_color=%235F7FFF&slug=Asm0d3us)](https://www.buymeacoffee.com/Asm0d3us)
