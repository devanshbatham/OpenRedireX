
<h1 align="center">
    OpenRedireX
  <br>
</h1>

<h4 align="center">A fuzzer for detecting open redirect vulnerabilities</h4>


<p align="center">
  <a href="#install">🏗️ Install</a>  
  <a href="#usage">⛏️ Usage</a>  
  <a href="#dependencies">📚 Dependencies</a>
  <br>
</p>

![OpenRedirex](https://github.com/devanshbatham/OpenRedireX/blob/master/static/openredirex.png?raw=true)

# Install

```sh
git clone https://github.com/devanshbatham/openredirex
cd openredirex
sudo chmod +x setup.sh
./setup.sh
```

# Usage

The script is executed from the command line and has the following usage options:

```sh
openredirex [-p payloads] [-k keyword] [-c concurrency]
```

- `-p`, `--payloads`: File containing a list of payloads. If not specified, a hardcoded list is used.
- `-k`, `--keyword`: Keyword in URLs to replace with payload. Default is "FUZZ".
- `-c`, `--concurrency`: Number of concurrent tasks. Default is 100.

The script expects a list of URLs as input. Each URL should contain the keyword specified by the `-k` option. The script replaces the keyword with each of the payloads, and attempts to fetch the modified URL. 

Example usage:

```sh
cat list_of_urls.txt |  openredirex -p payloads.txt -k "FUZZ" -c 50
```


List of URLs should look like below:


```
cat list_of_urls.txt

https://newsroom.example.com/logout?redirect=FUZZ
https://auth.example.com/auth/realms/sonatype/protocol/openid-connect/logout?redirect_uri=test
https://exmaple.com/php?test=baz&foo=bar
```

This example reads URLs from the file `list_of_urls.txt`, replaces all the values of the parameters to `FUZZ` (if `--keyword` is not supplied), then again replaces the keyword `FUZZ` or the supplied keyword with each payload from `payloads.txt`, and fetches each URL concurrently, with a maximum of 50 concurrent tasks.



# Dependencies

The script uses the following libraries:

- `argparse` for handling command-line arguments.
- `aiohttp` for making HTTP requests.
- `tqdm` for displaying progress.
- `concurrent.futures` for handling concurrent tasks.
- `asyncio` for managing asynchronous tasks.

You need to install these dependencies before running the script. Most of them are part of the standard Python library. You can install `aiohttp` and `tqdm` using pip:

```sh
pip install aiohttp tqdm
```

You can use this script to check for open redirects in web applications. However, you should only use it on systems that you have been given explicit permission to test.
