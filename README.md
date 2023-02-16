# is-internet-up.sh

- Simple Bash script to check internet status
- relies on [http://detectportal.firefox.com/success.txt](http://detectportal.firefox.com/success.txt) to return 'success'

## Example use:
```
#!/bin/bash
if [[ $(./is-internet-up.sh) == 'true' ]]; then
	echo "Internet is working"
else
	echo "Internet is not working"
fi
```
