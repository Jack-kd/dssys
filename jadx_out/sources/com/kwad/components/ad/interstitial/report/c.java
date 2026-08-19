package com.kwad.components.ad.interstitial.report;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.o;
import com.kwad.sdk.service.ServiceProvider;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;

/* loaded from: classes4.dex */
public final class c {

    public static class a {
        private static final c os = new c();
    }

    private static void a(boolean z2, com.kwad.sdk.commercial.c.a aVar) {
        if (o.Gs().Fx()) {
            com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.01d).Q("ad_sdk_interstitial_load", "status").b(BusinessType.AD_INTERSTITIAL).A(aVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
        }
    }

    public static c eZ() {
        return a.os;
    }

    public final void C(AdTemplate adTemplate) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(6).setAdTemplate(adTemplate));
    }

    public final void D(AdTemplate adTemplate) {
        try {
            a(false, new InterstitialReportInfo(adTemplate).setStatus(8).setType(adTemplate.notNetworkRequest ? 2 : 1).setMaterialType(com.kwad.sdk.core.response.helper.a.bk(e.eO(adTemplate))).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void E(@NonNull AdTemplate adTemplate) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(10).setAdTemplate(adTemplate));
    }

    public final void F(@NonNull AdTemplate adTemplate) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(7).setAdTemplate(adTemplate));
    }

    public final void G(@NonNull AdTemplate adTemplate) {
        a(true, new InterstitialReportInfo(adTemplate).setStatus(12).setRenderType(com.kwad.sdk.core.response.helper.b.dJ(adTemplate) ? 3 : 1).setAdTemplate(adTemplate));
    }

    public final void H(@NonNull AdTemplate adTemplate) {
        a(true, new InterstitialReportInfo(adTemplate).setStatus(11).setRenderType(1).setAdTemplate(adTemplate));
    }

    public final void b(@NonNull AdTemplate adTemplate, boolean z2) {
        adTemplate.notNetworkRequest = z2;
        a(false, new InterstitialReportInfo(adTemplate).setStatus(3).setType(adTemplate.notNetworkRequest ? 2 : 1).setDownloadDuration(adTemplate.downloadDuration).setDownloadSize(adTemplate.getDownloadSize()).setDownloadType(adTemplate.getDownloadType()).setAdTemplate(adTemplate));
    }

    public final void c(@NonNull AdTemplate adTemplate, int i2) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(4).setType(adTemplate.notNetworkRequest ? 2 : 1).setMaterialType(com.kwad.sdk.core.response.helper.a.bk(e.eO(adTemplate))).setRenderDuration(SystemClock.elapsedRealtime() - adTemplate.adShowStartTimeStamp).setRenderType(i2).setExpectedRenderType().setAdTemplate(adTemplate));
    }

    public final void p(long j2) {
        a(false, new InterstitialReportInfo().setStatus(1).setPosId(j2));
    }

    public final void a(AdTemplate adTemplate, int i2, String str) {
        a(true, new InterstitialReportInfo(adTemplate).setStatus(9).setErrorCode(i2).setErrorMsg(str).setAdTemplate(adTemplate));
    }

    public final void a(@NonNull AdTemplate adTemplate, boolean z2) {
        a(false, new InterstitialReportInfo(adTemplate).setStatus(2).setType(z2 ? 2 : 1).setLoadDataTime(adTemplate.loadDataTime).setExpectedRenderType().setAdTemplate(adTemplate));
    }

    public final void a(int i2, String str, long j2) {
        a(true, new InterstitialReportInfo().setStatus(5).setErrorCode(i2).setErrorMsg(str).setPosId(j2));
    }
}
