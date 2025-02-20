**Contents:**
- Dockerfile
- script to build docker file  
- script to run docker file  
- repo configuration  

----

**docker_yocto**  
Builds a (for now minimal) pre-configured Yocto image for Raspberry Pi target  

**builddocker.sh**  
Builds the docker container as "docker_yocto" and passes the user's UID to the container's user  

**rundocker.sh**  
**TODO:**  username is hardcoded to **"joktista"** and so is the host-side path hardcoded to **"stfn"**  
Runs the docker container with filesystem binding and (todo other useful configurations)  

**default.xml**  
The config for downloading the correct poky, meta-openembedded and meta-raspi with repo tool.  
Yocto version used is Kirkstone  

----
