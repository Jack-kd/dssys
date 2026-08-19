package com.kwad.components.core.innerEc.local;

import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.helper.b;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class a {
    private static final CancelInfo aaE = new CancelInfo();

    private static void aO(AdTemplate adTemplate) {
        AdTemplate.isInnerEcCancelDowngrade = !bo(b.ey(adTemplate));
    }

    public static void aQ(String str) {
        c.d("LoginLocalCounter", "onAuthSuccess: " + str);
        aaE.reset();
    }

    public static boolean bo(int i2) {
        c.d("LoginLocalCounter", "checkEnableInnerEc maxCount: " + i2);
        return i2 <= 0 || aaE.getCancelCount() < i2;
    }

    public static void f(AdTemplate adTemplate, String str) {
        c.d("LoginLocalCounter", "onAuthFail: " + str);
        aaE.checkAndAdd();
        aO(adTemplate);
    }

    public static void g(AdTemplate adTemplate, String str) {
        c.d("LoginLocalCounter", "onAuthCancel: " + str);
        aaE.checkAndAdd();
        aO(adTemplate);
    }

    public static int getCancelCount() {
        return aaE.getCancelCount();
    }
}
