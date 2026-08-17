package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class y7 {
    public static View a(int i2, View view, View view2, String str) {
        if (view != null) {
            return a(i2, view2, view, str, true);
        }
        return null;
    }

    private static int b(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getResources().getDisplayMetrics().widthPixels;
        }
        return 1080;
    }

    private static int c(Context context) throws Resources.NotFoundException {
        if (!(context instanceof Activity)) {
            return 0;
        }
        Resources resources = ((Activity) context).getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
        nh.c("BeiZisAd", "Status height:" + dimensionPixelSize);
        return dimensionPixelSize;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x03c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View a(int r23, android.view.View r24, android.view.View r25, java.lang.String r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.y7.a(int, android.view.View, android.view.View, java.lang.String, boolean):android.view.View");
    }

    private static int a(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getResources().getDisplayMetrics().heightPixels;
        }
        return 1920;
    }
}
