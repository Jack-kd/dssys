package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;

/* loaded from: classes4.dex */
public class MultiProcessFlag {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f35152a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f35153b;

    public static boolean isMultiProcess() {
        return f35152a;
    }

    public static void setMultiProcess(boolean z2) {
        if (f35153b) {
            GDTLogger.w("MultiProcessFlag已经设置过，再次设置无效");
        } else {
            f35153b = true;
            f35152a = z2;
        }
    }
}
