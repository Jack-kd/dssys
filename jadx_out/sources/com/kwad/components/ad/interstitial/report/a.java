package com.kwad.components.ad.interstitial.report;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.o;
import com.kwad.sdk.service.ServiceProvider;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;

/* loaded from: classes4.dex */
public final class a {

    /* renamed from: com.kwad.components.ad.interstitial.report.a$a, reason: collision with other inner class name */
    public static class C0479a {
        private static final a oq = new a();
    }

    private static void a(String str, com.kwad.sdk.commercial.c.a aVar) {
        if (o.Gs().Fx()) {
            try {
                com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m57do(ILoggerReporter.Category.APM_LOG).g(0.01d).Q("ad_sdk_interstitial_callback", str).b(BusinessType.AD_INTERSTITIAL).A(aVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
        }
    }

    public static a eV() {
        return C0479a.oq;
    }

    public final void A(AdTemplate adTemplate) {
        a("callback_type", new InterstitialReportInfo().setCallbackType(3L).setAdTemplate(adTemplate));
    }

    public final void b(AdTemplate adTemplate, long j2, long j3) {
        a("callback_type", new InterstitialReportInfo().setCallbackType(2L).setClickSceneType(j2).setItemClickType(j3).setAdTemplate(adTemplate));
    }

    public final void z(AdTemplate adTemplate) {
        a("callback_type", new InterstitialReportInfo().setCallbackType(1L).setAdTemplate(adTemplate));
    }

    public final void a(AdTemplate adTemplate, long j2, long j3) {
        a("action_type", new InterstitialReportInfo().setActionType(1L).setClickSceneType(j2).setItemClickType(j3).setAdTemplate(adTemplate));
    }

    public final void a(AdTemplate adTemplate, double d2) {
        a("action_type", new InterstitialReportInfo().setActionType(2L).setVisiblePercent(d2).setAdTemplate(adTemplate));
    }
}
