package com.bykv.vk.component.ttvideo.player;

@JNINamespace("UTILS")
/* loaded from: classes3.dex */
class AVClassLoad {
    @CalledByNative
    public static Object getClassLoader() {
        return AVClassLoad.class.getClassLoader();
    }
}
