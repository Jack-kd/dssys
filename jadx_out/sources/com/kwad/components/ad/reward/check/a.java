package com.kwad.components.ad.reward.check;

import androidx.annotation.NonNull;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class a {
    public static void a(@NonNull AdTemplate adTemplate, int i2, long j2, int i3, String str) {
        c.f(new RewardCheckMonitorInfo().setRequestStatus(2).setCheckType(i2).setEnviType(0).setDataLoadInterval(j2).setCode(i3).setErrorMsg(str).setCreativeId(com.kwad.sdk.core.response.helper.a.L(e.eO(adTemplate))).setAdTemplate(adTemplate));
    }

    public static void d(@NonNull AdTemplate adTemplate, int i2) {
        c.f(new RewardCheckMonitorInfo().setRequestStatus(1).setCheckType(i2).setEnviType(0).setCreativeId(com.kwad.sdk.core.response.helper.a.L(e.eO(adTemplate))).setAdTemplate(adTemplate));
    }
}
