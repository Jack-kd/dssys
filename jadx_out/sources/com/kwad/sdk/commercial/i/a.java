package com.kwad.sdk.commercial.i;

import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.c;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.h;
import com.kwad.sdk.utils.ac;
import java.util.List;

/* loaded from: classes4.dex */
public final class a {
    private static C0599a aKG;

    @KsJson
    /* renamed from: com.kwad.sdk.commercial.i.a$a, reason: collision with other inner class name */
    public static class C0599a extends com.kwad.sdk.core.response.a.a {
        public List<String> aKH;
    }

    private static C0599a Iy() {
        String strGc = ((h) ServiceProvider.get(h.class)).Gc();
        if (!TextUtils.isEmpty(strGc)) {
            aKG = (C0599a) ac.b(strGc, new c<C0599a>() { // from class: com.kwad.sdk.commercial.i.a.1
                private static C0599a Iz() {
                    return new C0599a();
                }

                @Override // com.kwad.sdk.core.c
                public final /* synthetic */ com.kwad.sdk.core.b IA() {
                    return Iz();
                }
            });
        }
        return aKG;
    }

    private static void a(AdTemplate adTemplate, b bVar) {
        a(adTemplate, false, bVar);
    }

    private static boolean dK(String str) {
        C0599a c0599aIy;
        List<String> list;
        if (TextUtils.isEmpty(str) || (c0599aIy = Iy()) == null || (list = c0599aIy.aKH) == null) {
            return false;
        }
        for (String str2 : list) {
            if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public static void o(AdTemplate adTemplate, int i2, String str) {
        try {
            a(adTemplate, b.IB().dF(4).dG(i2).dL(str).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void p(AdTemplate adTemplate, int i2, String str) {
        try {
            a(adTemplate, b.IB().dF(1).dG(i2).dL(str).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(AdTemplate adTemplate, boolean z2, b bVar) {
        if (dK(bVar.aKA)) {
            return;
        }
        com.kwad.sdk.commercial.c.d(d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.001d).b(e.bA(adTemplate)).Q("ad_sdk_track_performance", "status").A(bVar));
    }

    public static void a(AdTemplate adTemplate, String str, String str2, String str3, String str4) {
        try {
            com.kwad.sdk.commercial.c.d(d.In().m57do(ILoggerReporter.Category.ERROR_LOG).g(1.0d).b(e.bA(adTemplate)).Q("ad_sdk_macro_check_performance", "error_name").A(com.kwad.sdk.commercial.h.a.Ix().dD(str).dF(str2).dG(str3).dE(str4).setAdTemplate(adTemplate)));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, int i2, String str, int i3, int i4) {
        try {
            a(adTemplate, b.IB().dF(2).dG(i2).dL(str).dH(i4).setErrorCode(i3).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, int i2, String str, String str2, int i3, String str3, int i4) {
        try {
            a(adTemplate, true, b.IB().dF(3).dG(i2).dL(str).dM(str2).setErrorCode(i3).setErrorMsg(str3).dH(i4).setAdTemplate(adTemplate));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
