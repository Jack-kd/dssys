package com.ubix.ssp.ad.e.a0.z.c;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class c extends com.ubix.ssp.ad.e.a0.z.b {
    @Override // com.ubix.ssp.ad.e.a0.z.b
    public String a() {
        return "HarmonyOS";
    }

    @Override // com.ubix.ssp.ad.e.a0.z.b
    public String b() throws ClassNotFoundException {
        String strA = com.ubix.ssp.ad.e.a0.z.b.a("ro.build.display.id", "");
        return TextUtils.isEmpty(strA) ? com.ubix.ssp.ad.e.a0.z.b.a("ro.build.ver.physical", "") : strA;
    }
}
