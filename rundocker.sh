docker run \
  -it \
  --hostname buildsrv \
  --mount type=volume,dst=/home/joktista,volume-driver=local,volume-opt=type=none,volume-opt=o=bind,volume-opt=device=/home/stfn/yrs/yocto/ \
  --cap-add=SYS_RAWIO --device=/dev/mem --security-opt seccomp=unconfined \
docker_yocto

# These options were used in the Xiling wiki Confulence post
# "Building Yocto Images using a Docker Container"
# (https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2823422188/Building+Yocto+Images+using+a+Docker+Container)
#
# --device=/dev/kvm:/devb/kvm \
# --device=/dev/net/tun:/dev/net/tun \
# --cap-add NET_ADMIN \
# -v /tftpboot:/tftpboot \
#
# kvm can't be easily used on Windows 10->WSL2->Docker, but it can on Windows11->WSL2->Docker
