package com.kwad.components.ad.interstitial.b;

import com.kwad.sdk.core.response.model.AdInfo;

/* loaded from: classes4.dex */
public final class b {
    public static int b(AdInfo adInfo) {
        int iIntValue = a.mu.getValue().intValue();
        if (com.kwad.sdk.core.response.helper.a.bi(adInfo)) {
            int iN = com.kwad.sdk.core.response.helper.a.N(adInfo);
            return iIntValue == 0 ? iN : Math.min(iIntValue, iN);
        }
        if (iIntValue > 60 || iIntValue <= 0) {
            return 60;
        }
        return iIntValue;
    }

    public static boolean dO() {
        return a.mw.getValue().booleanValue();
    }

    public static boolean dP() {
        return a.mq.getValue().intValue() == 1;
    }

    public static int dQ() {
        return a.mr.getValue().intValue();
    }

    public static boolean dR() {
        return a.f31466ms.getValue().intValue() == 1;
    }

    public static boolean dS() {
        return a.mt.getValue().intValue() == 1;
    }

    public static boolean dT() {
        return a.mv.getValue().intValue() == 1;
    }

    public static boolean dU() {
        return a.mx.getValue().intValue() == 1;
    }
}
