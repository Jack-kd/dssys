package com.kwad.components.ad.interstitial.report;

import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;

/* loaded from: classes4.dex */
public final class d {

    public static class a {
        private static final d ot = new d();
    }

    private static void a(boolean z2, com.kwad.sdk.commercial.c.a aVar) {
        try {
            com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m57do(ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.01d).Q("ad_sdk_interstitial_play", "status").b(BusinessType.AD_INTERSTITIAL).A(aVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static d fb() {
        return a.ot;
    }

    public final void I(@NonNull AdTemplate adTemplate) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(1).setAdTemplate(adTemplate));
    }

    public final void b(@NonNull AdTemplate adTemplate, long j2) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(3).setCreativeId(e.eY(adTemplate)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(e.eO(adTemplate))).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(r0) * 1000).setPlayStartedDuration(j2).setAdTemplate(adTemplate));
    }

    public final void b(@NonNull AdTemplate adTemplate, int i2, String str) {
        AdInfo adInfoEO = e.eO(adTemplate);
        a(true, new InterstitialReportInfo(adTemplate).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setStatus(2).setErrorMsg(str).setErrorCode(i2).setAdTemplate(adTemplate));
    }
}
