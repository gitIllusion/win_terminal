## inject script rtree.sh on you server
in terminal
```sh
mkdir -p ~/bin
```
in file `~/.bashrc` paste: `export PATH=$PATH:~/bin`
after use
```sh
echo $PATH
```
after use
```sh
ln -s /home/devallin/rtree.sh /home/devallin/bin/rtree
```
after use
```sh
ls -l /home/devallin/bin/rtree
```
and last use command in any direct
```sh
rtree
```