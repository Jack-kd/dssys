package com.bykv.vk.component.ttvideo.player;

@JNINamespace("PLAYER")
/* loaded from: classes3.dex */
public abstract class LoadControl extends NativeObject {
    @CalledByNative
    public abstract int onCodecStackSelected(int i2);

    @CalledByNative
    public abstract int onFilterStackSelected(int i2);

    @CalledByNative
    public abstract int onTrackSelected(int i2);

    @CalledByNative
    public abstract boolean shouldStartPlayback(long j2, float f2, boolean z2);
}
