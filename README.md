# loght
Nodejs based, dockerized and lightweight central logging server which uses only http to send and save logs.

USAGE:

1. git clone this repo
2. cd loght
3. sudo docker build -t loght .
4. sudo docker run -it -p 3000:3000 -v /path/to/logs/folder/in/this/repo:/loght/logs loght # run this in interactive mode only
5. go to browser or any http client and hit http://yourserverip:3000?yr=data
6. open logs/loght.txt , you will find yr data with timestamp there