## TWRP device tree for LG G5 (US Carrier-Unlocked RS988)

Add to `.repo/local_manifests/rs988.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/lge/rs988" name="imasaru/android_device_lge_rs988_twrp" remote="github" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_rs988-eng
mka recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/android_kernel_lge_msm8996/tree/twrp-7.0**

** As of 21 April 2018, a LineageOS kernel has replaced this.
