package com.kwad.components.ad.reward.d;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.utils.ai;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a {
    public static void S(@NonNull Context context) throws Throwable {
        long jCurrentTimeMillis = System.currentTimeMillis();
        b bVar = new b();
        String strDt = ai.dt(context);
        int i2 = 0;
        if (!TextUtils.isEmpty(strDt)) {
            try {
                bVar.parseJson(new JSONObject(strDt));
                if (b(bVar.kd, jCurrentTimeMillis)) {
                    i2 = bVar.vn;
                }
            } catch (Exception e2) {
                c.printStackTraceOnly(e2);
            }
        }
        bVar.kd = jCurrentTimeMillis;
        bVar.vn = i2 + 1;
        ai.aj(context, bVar.toJson().toString());
    }

    private static boolean b(long j2, long j3) {
        return j2 > 0 && j3 > 0 && j2 / 2460601000L == j3 / 2460601000L;
    }

    private static void c(@NonNull Context context, int i2) {
        int iDs = ai.ds(context);
        if (iDs % i2 == 0) {
            ai.m(context, 1);
        } else {
            ai.m(context, iDs + 1);
        }
    }

    private static boolean d(@NonNull Context context, int i2) {
        return i2 != 0 && ai.ds(context) % i2 == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean e(@androidx.annotation.NonNull android.content.Context r7, int r8) {
        /*
            long r0 = java.lang.System.currentTimeMillis()
            com.kwad.components.ad.reward.d.b r2 = new com.kwad.components.ad.reward.d.b
            r2.<init>()
            java.lang.String r7 = com.kwad.sdk.utils.ai.dt(r7)
            boolean r3 = android.text.TextUtils.isEmpty(r7)
            r4 = 0
            if (r3 != 0) goto L29
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L27
            r3.<init>(r7)     // Catch: java.lang.Exception -> L27
            r2.parseJson(r3)     // Catch: java.lang.Exception -> L27
            long r5 = r2.kd     // Catch: java.lang.Exception -> L27
            boolean r7 = b(r5, r0)     // Catch: java.lang.Exception -> L27
            if (r7 == 0) goto L29
            int r7 = r2.vn     // Catch: java.lang.Exception -> L27
            goto L2f
        L27:
            r7 = move-exception
            goto L2b
        L29:
            r7 = r4
            goto L2f
        L2b:
            com.kwad.sdk.core.d.c.printStackTraceOnly(r7)
            goto L29
        L2f:
            if (r7 >= r8) goto L33
            r7 = 1
            return r7
        L33:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.reward.d.a.e(android.content.Context, int):boolean");
    }

    public static boolean b(@NonNull Context context, AdInfo adInfo) {
        if (!com.kwad.sdk.core.response.helper.a.aM(adInfo)) {
            return false;
        }
        int iMax = Math.max(com.kwad.sdk.core.response.helper.a.aN(adInfo) + 1, 1);
        boolean zD = d(context, iMax);
        c(context, iMax);
        return zD && e(context, com.kwad.sdk.core.response.helper.a.aO(adInfo));
    }
}
