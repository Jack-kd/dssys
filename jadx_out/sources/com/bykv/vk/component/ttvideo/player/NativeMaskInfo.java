package com.bykv.vk.component.ttvideo.player;

import android.util.AndroidRuntimeException;

@JNINamespace("PLAYER")
/* loaded from: classes3.dex */
public class NativeMaskInfo extends MaskInfo {
    @CalledByNative
    private static boolean isNativeMaskInfo(MaskInfo maskInfo) {
        return maskInfo instanceof NativeMaskInfo;
    }

    @Override // com.bykv.vk.component.ttvideo.player.MaskInfo
    public void onMaskInfoCallback(int i2, int i3, String str) {
        throw new AndroidRuntimeException("Should not be here");
    }
}
