package com.kwad.sdk.commercial.a;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class a {
    public static void B(AdTemplate adTemplate) {
        a(adTemplate, b.Io().du(1).setAdTemplate(adTemplate));
    }

    private static void a(AdTemplate adTemplate, com.kwad.sdk.commercial.c.a aVar) {
        a(adTemplate, false, aVar);
    }

    public static void bC(AdTemplate adTemplate) {
        a(adTemplate, b.Io().du(3).setAdTemplate(adTemplate));
    }

    public static void bD(AdTemplate adTemplate) {
        a(adTemplate, b.Io().du(4).setAdTemplate(adTemplate));
    }

    public static void bE(AdTemplate adTemplate) {
        a(adTemplate, b.Io().du(5).setAdTemplate(adTemplate));
    }

    public static void bF(AdTemplate adTemplate) {
        i(adTemplate, 100002, "");
    }

    public static void bG(AdTemplate adTemplate) {
        a(adTemplate, b.Io().du(7).dv(adTemplate.mInstallApkFormUser ? 1 : 2).setAdTemplate(adTemplate));
    }

    public static void bH(AdTemplate adTemplate) {
        int i2 = 2;
        b bVarDv = b.Io().du(8).dv(adTemplate.mInstallApkFormUser ? 1 : 2);
        if (adTemplate.mInstallApkFromSDK) {
            i2 = 1;
        } else if (!adTemplate.mClickOpenAppStore) {
            i2 = 0;
        }
        a(adTemplate, bVarDv.dw(i2).setAdTemplate(adTemplate));
    }

    public static void bI(AdTemplate adTemplate) {
        a(adTemplate, b.Io().du(10).dw(adTemplate.mInstallApkFromSDK ? 1 : adTemplate.mClickOpenAppStore ? 2 : 0).setAdTemplate(adTemplate));
    }

    public static void i(AdTemplate adTemplate, int i2, String str) {
        a(adTemplate, true, b.Io().du(6).setAdTemplate(adTemplate).setErrorCode(i2).setErrorMsg(str));
    }

    public static void j(AdTemplate adTemplate, int i2, String str) {
        a(adTemplate, true, b.Io().du(9).dv(adTemplate.mInstallApkFormUser ? 1 : 2).setAdTemplate(adTemplate).setErrorCode(100003).setErrorMsg(str));
    }

    public static void k(AdTemplate adTemplate, long j2) {
        a(adTemplate, b.Io().du(2).ax(j2).setAdTemplate(adTemplate));
    }

    private static void a(AdTemplate adTemplate, boolean z2, com.kwad.sdk.commercial.c.a aVar) {
        try {
            c.d(d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.1d).b(e.bA(adTemplate)).Q("ad_sdk_download_performance", "status").A(aVar));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
