package com.kwad.sdk.core.adlog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.reward.monitor.FraudVerifyCode;
import com.kwad.sdk.commercial.e;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.h;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {
    public static void IS() {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.sdk.core.adlog.b.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.core.adlog.a.a aVarIY = com.kwad.sdk.core.adlog.a.b.IV().IY();
                if (aVarIY != null) {
                    JSONObject jSONObject = aVarIY.aLM;
                    ac.putValue(jSONObject, "retryCount", aVarIY.retryCount);
                    ac.putValue(jSONObject, "cacheType", 1);
                    b.a(aVarIY.url, jSONObject, aVarIY.aLN, aVarIY);
                }
            }
        });
    }

    public static void a(@NonNull final com.kwad.sdk.core.adlog.c.a aVar) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.sdk.core.adlog.b.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a aVar2 = new a(aVar);
                b.a(aVar2.getUrl(), aVar2.getBody(), aVar, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public static void a(String str, JSONObject jSONObject, @NonNull com.kwad.sdk.core.adlog.c.a aVar, @Nullable com.kwad.sdk.core.adlog.a.a aVar2) {
        int i2;
        AdTemplate adTemplate;
        AdTemplate adTemplate2 = aVar.adTemplate;
        int i3 = aVar.aKI;
        try {
            com.kwad.sdk.core.adlog.b.c.a(adTemplate2, i3, aVar2);
            try {
                if (!aq.isNetworkConnected(ServiceProvider.getContext())) {
                    com.kwad.sdk.core.d.c.w("AdLogRequestManager", "no network while report log");
                    com.kwad.sdk.core.adlog.b.c.a(adTemplate2, i3, str, 100004, "no network", aVar2);
                    com.kwad.sdk.core.adlog.a.b.IV().a(aVar2, str, jSONObject, aVar, 100004, "no network");
                    return;
                }
                if (by.ir(str)) {
                    com.kwad.sdk.core.adlog.b.c.b(adTemplate2, i3, str, FraudVerifyCode.RerwardFraudUnknown, "", aVar2);
                    return;
                }
                com.kwad.sdk.core.network.c cVarDoPost = h.EG().doPost(str, (Map<String, String>) null, jSONObject);
                AdLogRequestResult adLogRequestResult = new AdLogRequestResult();
                adLogRequestResult.parseResult(cVarDoPost.aSY);
                int i4 = cVarDoPost.code;
                ?? r8 = 200;
                try {
                    if (i4 != 200) {
                        try {
                            int iDt = e.dt(i4);
                            String str2 = cVarDoPost.aSY;
                            com.kwad.sdk.core.adlog.b.c.d(adTemplate2, i3, str, iDt, str2, aVar2);
                            com.kwad.sdk.core.adlog.a.b.IV().a(aVar2, str, jSONObject, aVar, iDt, str2);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            r8 = adTemplate2;
                            adTemplate = r8;
                            i2 = i3;
                            com.kwad.sdk.core.adlog.b.c.b(adTemplate, i2, "", 100000, by.y(th), aVar2);
                            com.kwad.sdk.core.d.c.printStackTrace(th);
                            ServiceProvider.reportSdkCaughtException(th);
                        }
                    }
                    if (adLogRequestResult.isResultOk()) {
                        com.kwad.sdk.core.adlog.b.c.b(adTemplate2, i3, aVar2);
                        b(aVar);
                        com.kwad.sdk.core.adlog.a.b.IV().IW();
                        return;
                    }
                    if (!adLogRequestResult.isCheatingFlow()) {
                        int i5 = adLogRequestResult.result;
                        String str3 = adLogRequestResult.errorMsg;
                        com.kwad.sdk.core.d.c.w("AdLogRequestManager", "request fail code:" + i5 + ", errorMsg:" + str3 + ", url=" + str);
                        com.kwad.sdk.core.adlog.b.c.c(adTemplate2, i3, str, i5, str3, aVar2);
                        com.kwad.sdk.core.adlog.a.b.IV().a(aVar2, str, jSONObject, aVar, i5, str3);
                        return;
                    }
                    try {
                        adTemplate2.setCheatingFlow(adLogRequestResult.isCheatingFlow());
                        com.kwad.sdk.core.adlog.b.c.c(adTemplate2, i3, str, adLogRequestResult.result, adLogRequestResult.errorMsg, aVar2);
                    } catch (Throwable th2) {
                        th = th2;
                        adTemplate2 = adTemplate2;
                        i3 = i3;
                        adTemplate = adTemplate2;
                        i2 = i3;
                        com.kwad.sdk.core.adlog.b.c.b(adTemplate, i2, "", 100000, by.y(th), aVar2);
                        com.kwad.sdk.core.d.c.printStackTrace(th);
                        ServiceProvider.reportSdkCaughtException(th);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static void b(@NonNull com.kwad.sdk.core.adlog.c.a aVar) {
        try {
            com.kwad.sdk.core.track.a.e(aVar);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTrace(th);
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
