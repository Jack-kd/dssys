package com.beizi.fusion;

import android.view.View;

/* loaded from: classes2.dex */
public abstract class h7 {
    public static int[] a(int i2, int i3) {
        int[] iArr = new int[2];
        boolean z2 = false;
        while (!z2) {
            double dRint = Math.rint(b(0, (int) (i2 * 2 * 0.95d)));
            double dRint2 = Math.rint(b(0, (int) (i3 * 2 * 0.95d)));
            double d2 = i2;
            double d3 = i3;
            if (a(d2, d3, dRint, dRint2, d2 * 0.9d, d3 * 0.9d) <= 1.0d) {
                iArr[0] = (int) dRint;
                iArr[1] = (int) dRint2;
                z2 = true;
            }
        }
        return iArr;
    }

    private static int b(int i2, int i3) {
        return (int) ((Math.random() * (i3 - i2)) + i2);
    }

    public static int[] a(View view) {
        return a(view.getWidth() / 2, view.getHeight() / 2);
    }

    private static double a(double d2, double d3, double d4, double d5, double d6, double d7) {
        return (Math.pow(d4 - d2, 2.0d) / Math.pow(d6, 2.0d)) + (Math.pow(d5 - d3, 2.0d) / Math.pow(d7, 2.0d));
    }
}
