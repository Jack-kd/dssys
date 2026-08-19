package com.kwad.components.core.e.d;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.page.AdWebViewActivityProxy;
import com.kwad.components.core.page.AdWebViewVideoActivityProxy;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ae;
import com.kwad.sdk.utils.ag;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;

/* loaded from: classes4.dex */
public final class c {
    private static int F(AdInfo adInfo) {
        com.kwad.sdk.core.download.a.K(adInfo);
        return 3;
    }

    private static int a(a.C0529a c0529a, AdTemplate adTemplate, Context context) {
        AdWebViewActivityProxy.launch(context, new AdWebViewActivityProxy.a.C0548a().aZ(com.kwad.sdk.core.response.helper.b.dm(adTemplate)).aY(adTemplate).aS(c0529a.pS()).bv(1).ua());
        a.f(adTemplate, 14);
        return 14;
    }

    private static int b(a.C0529a c0529a) {
        Context context = c0529a.getContext();
        AdTemplate adTemplate = c0529a.getAdTemplate();
        AdWebViewActivityProxy.launch(context, new AdWebViewActivityProxy.a.C0548a().aZ(com.kwad.sdk.core.response.helper.b.dm(adTemplate)).aY(adTemplate).aR(true).ua());
        a.f(adTemplate, 20);
        return 20;
    }

    private static int d(final AdTemplate adTemplate, AdInfo adInfo) {
        i.execute(new bi() { // from class: com.kwad.components.core.e.d.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.components.d.f(com.kwad.components.a.a.a.class);
            }
        });
        au.az(ServiceProvider.getContext(), com.kwad.sdk.core.response.helper.a.aE(adInfo));
        return 6;
    }

    private static boolean j(a.C0529a c0529a) {
        AdTemplate adTemplate = c0529a.getAdTemplate();
        boolean zL = com.kwad.sdk.utils.f.l(c0529a.getContext(), adTemplate);
        if (zL) {
            t(c0529a);
            a.f(adTemplate, 11);
        }
        return zL;
    }

    public static int q(a.C0529a c0529a) throws Exception {
        e.aD(false);
        Context context = c0529a.getContext();
        AdTemplate adTemplate = c0529a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (c0529a.pV()) {
            return b(c0529a);
        }
        int iF = e.F(c0529a);
        if (iF == 1) {
            t(c0529a);
            return 13;
        }
        if (iF == 2) {
            return 16;
        }
        int iS = s(c0529a);
        if (iS == 1) {
            return 12;
        }
        if (iS == 2) {
            return 17;
        }
        if (!com.kwad.sdk.core.response.helper.a.aL(adInfoEO)) {
            if (adTemplate.isWebViewDownload) {
                int iA = a(c0529a, adTemplate, adInfoEO);
                t(c0529a);
                adTemplate.isWebViewDownload = false;
                return iA;
            }
            if (j(c0529a)) {
                return 11;
            }
            t(c0529a);
            return a(c0529a, adTemplate, context);
        }
        if (c0529a.qh() == 2 || c0529a.qh() == 1) {
            c0529a.av(false);
            t(c0529a);
            return a(c0529a, adTemplate, adInfoEO);
        }
        if (!c0529a.qc() || !com.kwad.sdk.core.response.helper.a.b(adInfoEO, com.kwad.sdk.core.config.e.JJ()) || TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.aY(adInfoEO)) || AdWebViewVideoActivityProxy.showingAdWebViewVideoActivity) {
            t(c0529a);
            c0529a.av(true);
            return a(c0529a, adTemplate, adInfoEO);
        }
        int iU = c0529a.iv().u(c0529a);
        if (iU == 0) {
            t(c0529a);
            return a(c0529a, adTemplate, context);
        }
        t(c0529a);
        a.f(adTemplate, iU);
        return iU;
    }

    private static int r(a.C0529a c0529a) {
        Context context = c0529a.getContext();
        AdTemplate adTemplate = c0529a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (com.kwad.sdk.utils.f.a(context, com.kwad.sdk.core.response.helper.a.dd(adInfoEO), adTemplate) || a(c0529a, adTemplate)) {
            return 11;
        }
        if (aq.isNetworkConnected(context)) {
            return F(adInfoEO);
        }
        ae.V(context, ag.dl(context));
        return 2;
    }

    private static int s(a.C0529a c0529a) {
        Context context = c0529a.getContext();
        AdTemplate adTemplate = c0529a.getAdTemplate();
        int iF = f.f(context, adTemplate);
        if (iF == 1) {
            t(c0529a);
            a.f(adTemplate, 12);
        }
        return iF;
    }

    private static void t(a.C0529a c0529a) {
        if (c0529a.pR() != null) {
            try {
                c0529a.pR().onAdClicked();
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
        }
    }

    private static int a(a.C0529a c0529a, AdTemplate adTemplate, AdInfo adInfo) {
        int iR;
        d dVarIv = c0529a.iv();
        dVarIv.qs();
        switch (adInfo.status) {
            case 0:
            case 1:
            case 5:
            case 6:
            case 7:
                iR = r(c0529a);
                break;
            case 2:
            case 3:
            case 10:
            default:
                iR = 0;
                break;
            case 4:
                iR = dVarIv.qA();
                break;
            case 8:
            case 9:
            case 11:
                iR = dVarIv.qx();
                break;
            case 12:
                iR = d(adTemplate, adInfo);
                break;
        }
        a.f(c0529a.getAdTemplate(), iR);
        return iR;
    }

    private static boolean a(a.C0529a c0529a, AdTemplate adTemplate) {
        return com.kwad.sdk.utils.f.l(c0529a.getContext(), adTemplate);
    }
}
