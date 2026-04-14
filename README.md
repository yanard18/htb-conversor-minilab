# conversor.htb mini-lab

Description: A localized Docker environment to practice the XSLT to RCE vector from the retired HTB machine: Conversor. Made this environment in order to inspect code errors on parsing, and experiment with configurations of the `lxml` to see what is secure or not.

### setup
- add `127.0.0.1 conversor.htb` to your `/etc/hosts`
- `docker build -t conversor .`
- `docker run -p 80:80 conversor`

### learning objectives
- analyze how the XML parser handles external entities.
- finding the actual rce via the xslt.

probably some bugs in there since i threw it together fast, just lmk if it doesnt spin up right.
