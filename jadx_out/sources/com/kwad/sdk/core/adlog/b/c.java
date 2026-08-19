package com.kwad.sdk.core.adlog.b;

import androidx.annotation.Nullable;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class c {
    private static void a(AdTemplate adTemplate, @Nullable com.kwad.sdk.core.adlog.a.a aVar, d dVar) {
        a(adTemplate, aVar, false, dVar);
    }

    public static void b(AdTemplate adTemplate, int i2, com.kwad.sdk.core.adlog.a.a aVar) {
        try {
            a(adTemplate, aVar, d.Je().dQ(2).dR(i2).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void c(AdTemplate adTemplate, int i2, String str, int i3, String str2, com.kwad.sdk.core.adlog.a.a aVar) {
        try {
            a(adTemplate, aVar, true, d.Je().dQ(4).dR(i2).dZ(str).setErrorCode(i3).setErrorMsg(str2).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void d(AdTemplate adTemplate, int i2, String str, int i3, String str2, com.kwad.sdk.core.adlog.a.a aVar) {
        try {
            a(adTemplate, aVar, true, d.Je().dQ(3).dR(i2).dZ(str).setErrorCode(i3).setErrorMsg(str2).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(AdTemplate adTemplate, @Nullable com.kwad.sdk.core.adlog.a.a aVar, boolean z2, d dVar) {
        if (aVar != null) {
            dVar.dS(1).dT(aVar.retryCount);
        }
        com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 0.01d : 1.0E-4d).h(z2 ? 1.0d : 0.01d).b(e.bA(adTemplate)).Q("ad_sdk_adlog_performance", "status").A(dVar));
    }

    public static void b(AdTemplate adTemplate, int i2, String str, int i3, String str2, com.kwad.sdk.core.adlog.a.a aVar) {
        try {
            a(adTemplate, aVar, true, d.Je().dQ(5).dR(i2).dZ(str).setErrorCode(i3).setErrorMsg(str2).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, int i2, com.kwad.sdk.core.adlog.a.a aVar) {
        try {
            a(adTemplate, aVar, d.Je().dQ(1).dR(i2).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, int i2, String str, int i3, String str2, com.kwad.sdk.core.adlog.a.a aVar) {
        try {
            a(adTemplate, aVar, d.Je().dQ(5).dR(i2).dZ(str).setErrorCode(100004).setErrorMsg(str2).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
