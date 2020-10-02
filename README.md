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
