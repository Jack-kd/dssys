package com.kwad.components.ad.adbit;

import android.os.SystemClock;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.bi;

/* loaded from: classes4.dex */
public final class c {
    public static void a(boolean z2, boolean z3) {
        int i2 = z3 ? 1 : 2;
        try {
            d dVarR = d.R();
            dVarR.bG = i2;
            dVarR.bI = z2 ? "v1" : "v2";
            a(dVarR);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static void a(long j2, boolean z2, boolean z3) {
        int i2 = z3 ? 1 : 2;
        try {
            d dVarS = d.S();
            dVarS.bG = i2;
            dVarS.bH = SystemClock.elapsedRealtime() - j2;
            dVarS.bI = z2 ? "v1" : "v2";
            a(dVarS);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private static void a(final d dVar) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.adbit.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.z(dVar);
            }
        });
    }
}
