package com.umeng.analytics.pro;

import android.content.Context;

/* loaded from: classes5.dex */
class bs implements bf {
    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        boolean zB = a2.a.b();
        bu.a("getOAID", "isSupported", Boolean.valueOf(zB));
        if (zB) {
            return a2.a.c(context);
        }
        return null;
    }
}
