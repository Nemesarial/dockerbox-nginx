dockerbox-nginx
===============

This Dockerfile will start a simple nginx server.
All that is required is an nginx.conf file. See the examples in the root

## Nginx Config
To use a version of the nginx configurations that are included copy it into the root as *nginx.conf*  
You cannot build the container without *nginx.conf*  


## Script Commands
A number of script commands are included in the context to help you get things going  
***All the scripts that come with this context rely on an *image_name* for the image that is to be built, run and started.
You can specify an inline *image_name* or you can populate a file ***image*** with the image name that all the scripts should use***


### Build
`sudo ./build.sh` will build the image from the Dockerfile

### Run
`sudo ./run.sh` will test-run the image after it is built. Ctrl+C will quit the run

### Start
`sudo ./start.sh` will start the image as a daemon

### Stop
`sudo ./stop.sh` will stop the deamon
