package com.ubix.ssp.ad.e.a0.z.c;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class b extends com.ubix.ssp.ad.e.a0.z.b {
    @Override // com.ubix.ssp.ad.e.a0.z.b
    public String a() {
        return com.ubix.ssp.ad.e.a0.z.b.a("ro.vivo.os.build.display.id", "");
    }

    @Override // com.ubix.ssp.ad.e.a0.z.b
    public String b() throws ClassNotFoundException {
        String strA = com.ubix.ssp.ad.e.a0.z.b.a("ro.build.display.id", "");
        if (TextUtils.isEmpty(strA)) {
            strA = com.ubix.ssp.ad.e.a0.z.b.a("ro.build.software.version", "");
        }
        return TextUtils.isEmpty(strA) ? com.ubix.ssp.ad.e.a0.z.b.a("ro.vivo.product.version", "") : strA;
    }
}
