# gitr
## Installeren
```bash
echo "deb [trusted=yes] https://its-noid-dev.github.io/gitr-apt ./" | sudo tee /etc/apt/sources.list.d/gitr.list && sudo apt update && sudo apt install gitr
```
## Bouwen vanuit source
```bash
git clone https://github.com/its-noid-dev/gitr-apt && cd gitr-apt && ./build.sh
```
