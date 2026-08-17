package com.kwad.sdk.core.e.a;

import android.content.Context;

/* loaded from: classes4.dex */
public final class m {
    private Context mContext;

    public m(Context context) {
        this.mContext = context;
    }

    public final String getOAID() {
        String str;
        Exception e2;
        try {
            str = (String) i.callMethod(i.newInstance("com.android.id.impl.IdProviderImpl", new Object[0]), "getOAID", this.mContext);
        } catch (Exception e3) {
            str = "";
            e2 = e3;
        }
        try {
            com.kwad.sdk.core.d.c.i("XiaomiDeviceIDHelper", "getOAID oaid:" + str);
            return str;
        } catch (Exception e4) {
            e2 = e4;
            com.kwad.sdk.core.d.c.i("XiaomiDeviceIDHelper", "getOAID fail");
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return str;
        }
    }
}
