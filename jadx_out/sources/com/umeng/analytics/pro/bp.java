package com.umeng.analytics.pro;

import android.content.Context;

/* loaded from: classes5.dex */
public class bp implements bf {

    /* renamed from: a, reason: collision with root package name */
    private boolean f48864a = false;

    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        if (!this.f48864a) {
            Y1.a.a(context);
            this.f48864a = true;
        }
        boolean zB = Y1.a.b();
        bu.a("getOAID", "isSupported", Boolean.valueOf(zB));
        if (zB) {
            return Y1.a.c(context);
        }
        return null;
    }
}
