# Since builddocker.sh downloads the entire Yocto directory tree and that 
#
# If the "yocto" directory already exists, you should probably delete it
# When binding the X directory to the Y container, if X is not empty, it will block Y from
#   populating the directory that is bound to the host. That, or, it will just mount the host's
#   directory into X's directory tree therefore hiding the newly rebuilt Yocto system.


# I hesitate to put rm -rf in any script but, in principle, this shouldn't cause issues
# rm -rf yocto && \


mkdir yocto && \
docker build --build-arg UID=$(id -u) -t docker_yocto -f docker_yocto . && \
./rundocker.sh
