package com.kwad.components.ad.draw.a;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;

/* loaded from: classes4.dex */
public final class c {
    public static void a(AdTemplate adTemplate, long j2) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        a(e.aT().J(2).K(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).s(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)).k(j2).setAdTemplate(adTemplate), false);
    }

    public static void b(AdTemplate adTemplate, long j2, String str) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        a(e.aT().J(3).K(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).s(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)).k(j2).setAdTemplate(adTemplate).setErrorMsg(str), true);
    }

    public static void h(AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        a(e.aT().J(1).K(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).s(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)).setAdTemplate(adTemplate), false);
    }

    public static void i(AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        a(e.aT().J(4).K(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).s(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)).setAdTemplate(adTemplate), false);
    }

    public static void j(AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        a(e.aT().J(5).K(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).s(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)).setAdTemplate(adTemplate), false);
    }

    public static void k(AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        a(e.aT().J(6).K(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).s(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)).setAdTemplate(adTemplate), false);
    }

    private static void a(com.kwad.sdk.commercial.c.a aVar, boolean z2) {
        try {
            com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.001d).b(BusinessType.AD_DRAW).Q("ad_sdk_draw_material_load", "status").A(aVar));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
