package com.anythink.core.common.u;

import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;

/* loaded from: classes2.dex */
public final class g {
    public static void a(String str, ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd) {
        String str2;
        String string;
        String string2;
        try {
            String strR = s.b().r();
            str2 = "null";
            if (aTBaseAdAdapter != null) {
                String string3 = aTBaseAdAdapter.toString();
                n trackingInfo = aTBaseAdAdapter.getTrackingInfo();
                string2 = trackingInfo != null ? trackingInfo.toString() : "null";
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                string = unitGroupInfo != null ? unitGroupInfo.toString() : "null";
                str2 = string3;
            } else {
                string = "null";
                string2 = string;
            }
            String str3 = "format: " + str + " | adapter: " + str2 + " | tracking: " + string2 + " | unitGroupInfo: " + string;
            if (baseAd != null) {
                str3 = str3 + " | baseAd: " + baseAd.toString();
            }
            f.b("Empty ATAdInfo", str3, strR);
        } catch (Throwable unused) {
        }
    }
}
