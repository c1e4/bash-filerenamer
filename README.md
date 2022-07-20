# bash-filerenamer
Script that does renaming of files in specified directory according to their position.

Problem:
Assume you have a directory with files that have names like:
```
690180.jpg
690190.png
690195.jpg
690193.jpg
690197.jpg
690202.jpg
...
```
And you want them to be something like this:
```
1.jpg
2.png
3.jpg
4.jpg
5.jpg
...
```

And you need to give them names so you can be sure that they are included as source for image elements on web page. Order should not be a concern, they just need to have simple enough names. 

So I had such task and instead of renaming manually I created this script. 
> Why? You may ask.

> ~Just for lulz~. To do it the _programmer way_ and maintain bash skills.

How it works:
1) You provide a path to target directory (either as an argument to the script or manually after being prompted)
2) Script makes some basic checks (existance of target directory) 
3) Iterates through files in that dir and renames them accordingly to their position 

Usage: 
1. Clone entire repository or download only the script (file-renamer.sh). 
2. Place it in the path directory (~/bin, /usr/bin, etc) to your liking.
3. Run it by providing a target directory as an argument (or specify it when being prompted).
4. ...
5. PROFIT!
