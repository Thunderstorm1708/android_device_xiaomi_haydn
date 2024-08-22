echo 'Starting to clone stuffs needed to build for Haydn'

# Common Tree
git clone --depth=1 https://github.com/Thunderstorm1708/android_device_xiaomi_sm8350-common -b blaze-14 device/xiaomi/sm8350-common

# Haydn Vendor
git clone --depth=1 https://github.com/Thunderstorm1708/proprietary_vendor_xiaomi_haydn -b lineage-21 vendor/xiaomi/haydn

# Common Vendor
git clone --depth=1 https://github.com/Thunderstorm1708/proprietary_vendor_xiaomi_sm8350-common -b lineage-21 vendor/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1  https://github.com/Thunderstorm1708/android_kernel_xiaomi_sm8350 --recursive -b lineage-21 kernel/xiaomi/sm8350

# Firmware
echo 'Cloning firmware'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware -b fourteen vendor/xiaomi/haydn-firmware

# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera -b fourteen-leica vendor/xiaomi/haydn-miuicamera
rm -rf hardware/xiaomi/megvii

# Priv-keys
echo 'Cloning private keys'
git clone https://github.com/1xtAsh/vendor_lineage-priv_keys -b lineage-21 vendor/blaze/signing/keys

echo 'delete vendorsetup.sh from device tree once this is done'
