package com.kwad.sdk.utils;

/* loaded from: classes4.dex */
public final class q {
    public static long boL;
    public static long sLaunchTime;

    public static long UD() {
        return boL - sLaunchTime;
    }

    public static String a(StackTraceElement stackTraceElement) {
        return stackTraceElement.getClassName() + com.anythink.core.common.d.i.f2495E + stackTraceElement.getMethodName();
    }

    public static void setInitStartTime(long j2) {
        boL = j2;
    }

    public static void setLaunchTime(long j2) {
        sLaunchTime = j2;
    }
}
