Device configuration for Samsung Galaxy S4 (SCH-I959)

Copyright 2016, The CyanogenMod Project / GearCM

# device基于GearCM的i9500修改
* 感谢GearCM的device
* 感谢MorHop的指导

# Fix bugs
* 源码中system/core/rootdir中的init.rc ueventd.rc两个文件需要修改，device目录下的两个仅供参考
* system/void中的Utils.cpp文件需要修改,device目录下的仅供参考
* SCH-I959 KERNEL：https://github.com/Spxg/android_kernel_samsung_exynos5410
* SCH-I959 VENDOR：https://github.com/Spxg/android_vendor_samsung_i959
* 替换framework/base/core/jni/com_android_internal_os_Zygote.cpp，文件在device目录，文件仅供参考

# 注意事项
* lineageos-cm13.0需用openjdk8
* 下载地址1：https://github.com/Spxg/android_device_samsung_i959/releases
* 下载地址2：https://cloud.ftdabaobei.cn/?dir=i959

# 6.0.1 bug多，请移步7.1.2
* [manifest](https://github.com/Spxg/manifest)
* [ja3gduosctc_device](https://github.com/Pohrom/android_device_samsung_ja3gduosctc)
