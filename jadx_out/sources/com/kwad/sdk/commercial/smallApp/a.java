package com.kwad.sdk.commercial.smallApp;

import androidx.annotation.Nullable;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class a {
    private static void a(AdTemplate adTemplate, com.kwad.sdk.commercial.c.a aVar) {
        a(adTemplate, false, aVar);
    }

    public static void b(AdTemplate adTemplate, JumpFrom jumpFrom, AdInfo.SmallAppJumpInfo smallAppJumpInfo) {
        if (adTemplate == null || smallAppJumpInfo == null) {
            return;
        }
        try {
            a(adTemplate, b.a(jumpFrom).dE(2).dJ(smallAppJumpInfo.mediaSmallAppId).dI(smallAppJumpInfo.originId).dH(smallAppJumpInfo.smallAppJumpUrl));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(AdTemplate adTemplate, boolean z2, com.kwad.sdk.commercial.c.a aVar) {
        aVar.setAdTemplate(adTemplate);
        c.d(d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 1.0d : 0.01d).b(e.bA(adTemplate)).Q("ad_sdk_small_app_performance", "status").A(aVar));
    }

    public static void a(AdTemplate adTemplate, JumpFrom jumpFrom, AdInfo.SmallAppJumpInfo smallAppJumpInfo) {
        if (adTemplate == null || smallAppJumpInfo == null) {
            return;
        }
        try {
            a(adTemplate, b.a(jumpFrom).dE(1).dJ(smallAppJumpInfo.mediaSmallAppId).dI(smallAppJumpInfo.originId).dH(smallAppJumpInfo.smallAppJumpUrl));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, JumpFrom jumpFrom, String str, String str2, String str3) {
        try {
            a(adTemplate, b.a(jumpFrom).dE(3).dJ(str).dI(str2).dH(str3));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(AdTemplate adTemplate, JumpFrom jumpFrom, @Nullable AdInfo.SmallAppJumpInfo smallAppJumpInfo, String str) {
        String str2;
        if (adTemplate == null) {
            return;
        }
        try {
            String str3 = "";
            b bVarDJ = b.a(jumpFrom).dE(4).dJ(smallAppJumpInfo == null ? "" : smallAppJumpInfo.mediaSmallAppId);
            if (smallAppJumpInfo == null) {
                str2 = "";
            } else {
                str2 = smallAppJumpInfo.originId;
            }
            b bVarDI = bVarDJ.dI(str2);
            if (smallAppJumpInfo != null) {
                str3 = smallAppJumpInfo.smallAppJumpUrl;
            }
            a(adTemplate, true, bVarDI.dH(str3).setErrorCode(100008).setErrorMsg(str));
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
