qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=4 -cpu qemu64 \
-drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
-netdev user,id=n1,\
hostfwd=tcp::9000-:9000,\
hostfwd=tcp::9001-:9001,\
hostfwd=tcp::9002-:9002,\
hostfwd=tcp::9003-:9003,\
hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 \
-nographic alpine.img
