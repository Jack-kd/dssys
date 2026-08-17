package com.bykv.vk.component.ttvideo.player;

@Keep
/* loaded from: classes3.dex */
public class AVDrmCreater {
    public static final int DrmTypeIntertrust = 1;
    public static final int DrmTypeNone = 0;

    @CalledByNative
    public static synchronized long createDrm(int i2) {
        if (i2 != 1) {
            return 0L;
        }
        return createDrm(100, "com.bykv.vk.component.ttvideo.drm.intertrust.IntertrustDrm");
    }

    private static long createDrm(int i2, String str) {
        try {
            ClassLoader classLoaderLoadPlugin = TTPlayerPluginLoader.loadPlugin(i2);
            return Long.parseLong(String.valueOf((classLoaderLoadPlugin != null ? Class.forName(str, true, classLoaderLoadPlugin) : Class.forName(str)).getMethod("createDrm", null).invoke(null, null)));
        } catch (Exception unused) {
            return 0L;
        }
    }
}
