package com.umeng.analytics.pro;

import android.content.Context;

/* loaded from: classes5.dex */
class bn implements bf {
    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) throws NoSuchMethodException, SecurityException {
        if (context == null) {
            return null;
        }
        boolean zA = Z1.b.a();
        bu.a("getOAID", "isSupported", Boolean.valueOf(zA));
        if (zA) {
            return Z1.b.b(context);
        }
        return null;
    }
}
