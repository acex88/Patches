echo 'Starting to add patches'

# Media: Import codecs/omx changes from t-alps-q0.mp1-V9.122.1
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/ArrowOS/android_frameworks_av/commit/1fb1c48309cf01deb9e3f8253cb7fa5961c25595.patch")"

# stagefright: remove HW_TEXTRUE usage from SurfaceMediaSource
git -C "frameworks/av" am <<<"$(curl -sL "https://github.com/ArrowOS/android_frameworks_av/commit/a727c1f68fd30c8e6a4068db9dc26670d4a78f6c.patch")"

echo 'Patching done'
