package com.kwad.components.core.offline.moitor;

import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class c {
    private static void a(d dVar, boolean z2) {
        com.kwad.sdk.commercial.c.d(com.kwad.sdk.commercial.d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.01d).Q("ad_sdk_offline_component_update", "load_status").A(dVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
    }

    public static void b(String str, long j2, int i2, String str2, String str3) {
        try {
            a(new d().aV(str).N(j2).setErrorCode(i2).aX(str2).aW(str3).M(2L), true);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void d(String str, long j2, String str2) {
        try {
            a(new d().aV(str).aX(str2).N(j2).M(1L), false);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(String str, long j2, long j3, String str2) {
        try {
            a(new d().aV(str).N(j2).O(j3).aX(str2).M(3L), false);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
