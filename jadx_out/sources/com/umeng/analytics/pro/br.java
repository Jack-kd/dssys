package com.umeng.analytics.pro;

import android.content.Context;

/* loaded from: classes5.dex */
public class br implements bf {
    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        boolean zA = b2.d.a(context);
        bu.a("getOAID", "isSupported", Boolean.valueOf(zA));
        if (zA) {
            return b2.d.b(context);
        }
        return null;
    }
}
