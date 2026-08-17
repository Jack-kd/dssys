package com.kwad.sdk.utils;

/* loaded from: classes4.dex */
public final class v {
    public static int a(long j2, long j3, boolean z2, int i2) {
        com.kwad.sdk.core.d.c.d("DownloadProgressTransformUtil", "soFarBytes:" + j2 + " totalBytes:" + j3 + " isShowOptimizedProgress: " + z2 + " optimizeMethod: " + i2);
        double dO = j3 > 0 ? (j2 * 100.0d) / j3 : 0.0d;
        if (!z2) {
            return (int) dO;
        }
        if (i2 == 1) {
            dO = n(dO);
        } else if (i2 == 2) {
            dO = o(dO);
        }
        return (int) dO;
    }

    private static double n(double d2) {
        if (d2 <= 6.0d) {
            return d2 * 5.0d;
        }
        if (d2 <= 15.0d) {
            return ((d2 - 6.0d) * 2.0d) + 30.0d;
        }
        if (d2 <= 30.0d) {
            return d2 + 33.0d;
        }
        if (d2 < 100.0d) {
            return Math.min((((d2 - 30.0d) * 0.37d) / 0.7d) + 63.0d, 99.0d);
        }
        return 100.0d;
    }

    private static double o(double d2) {
        return Math.sqrt(d2) * 10.0d;
    }
}
