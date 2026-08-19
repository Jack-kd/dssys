package com.kwad.sdk.a.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.utils.ai;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {
    public static int auj = 0;
    public static long vL = -1;

    public static void J(Context context) throws Throwable {
        a aVar = new a();
        if (m(System.currentTimeMillis())) {
            auj++;
        } else {
            auj = 1;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        vL = jCurrentTimeMillis;
        aVar.auj = auj;
        aVar.kd = jCurrentTimeMillis;
        ai.at(context, aVar.toJson().toString());
    }

    public static int dV() {
        if (!m(System.currentTimeMillis())) {
            auj = 0;
        }
        return auj;
    }

    private static long ir() {
        long j2 = vL;
        if (j2 != -1) {
            return j2;
        }
        String strVv = ai.Vv();
        if (TextUtils.isEmpty(strVv)) {
            return 0L;
        }
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(strVv));
            vL = aVar.kd;
            auj = aVar.auj;
        } catch (Exception e2) {
            c.printStackTraceOnly(e2);
        }
        return vL;
    }

    private static boolean m(long j2) {
        return ir() > 0 && j2 > 0 && ir() / 2460601000L == j2 / 2460601000L;
    }
}
