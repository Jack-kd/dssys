package com.bykv.vk.component.ttvideo.player;

@JNINamespace("PLAYER")
/* loaded from: classes3.dex */
public class NativeObject {
    protected long mNativeObj = 0;

    @CalledByNative
    private long getNativeObj() {
        return this.mNativeObj;
    }

    private native void nativeRelease(long j2);

    public void finalize() throws Throwable {
    }

    public synchronized void release() {
        long j2 = this.mNativeObj;
        if (j2 != 0) {
            nativeRelease(j2);
            this.mNativeObj = 0L;
        }
    }

    public void setNativeObj(long j2) {
        this.mNativeObj = j2;
    }
}
