package com.kwad.components.core.t;

import android.text.TextUtils;

/* loaded from: classes4.dex */
public final class r {
    public static float a(String str, float f2) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e2) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return 0.0f;
        }
    }

    public static int m(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return 0;
        }
    }
}
