package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class j0 {
    public static int a() {
        return ((int) (Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()))) / 2;
    }
}
