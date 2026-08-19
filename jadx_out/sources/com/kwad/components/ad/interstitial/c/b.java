package com.kwad.components.ad.interstitial.c;

import android.content.Context;
import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.utils.ai;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.core.response.a.a {
    private static SimpleDateFormat kc = new SimpleDateFormat("yyyy-MM-dd");
    public long kd = -1;
    public int mA = 0;
    public int mB = 0;

    public static void J(Context context) throws Throwable {
        String strVj = ai.Vj();
        b bVar = new b();
        if (TextUtils.isEmpty(strVj)) {
            bVar.mA = 1;
            bVar.kd = System.currentTimeMillis();
            ai.ai(context, bVar.toJson().toString());
            return;
        }
        try {
            bVar.parseJson(new JSONObject(strVj));
            if (b(bVar.kd, System.currentTimeMillis())) {
                bVar.mA++;
            } else {
                bVar.mA = 1;
                bVar.mB = 0;
                bVar.kd = System.currentTimeMillis();
            }
            ai.ai(context, bVar.toJson().toString());
        } catch (Exception e2) {
            c.printStackTraceOnly(e2);
        }
    }

    public static void K(Context context) throws Throwable {
        String strVj = ai.Vj();
        b bVar = new b();
        if (TextUtils.isEmpty(strVj)) {
            bVar.mB = 1;
            bVar.kd = System.currentTimeMillis();
            ai.ai(context, bVar.toJson().toString());
            return;
        }
        try {
            bVar.parseJson(new JSONObject(strVj));
            if (b(bVar.kd, System.currentTimeMillis())) {
                bVar.mB++;
            } else {
                bVar.mB = 1;
                bVar.mA = 0;
                bVar.kd = System.currentTimeMillis();
            }
            ai.ai(context, bVar.toJson().toString());
        } catch (Exception e2) {
            c.printStackTraceOnly(e2);
        }
    }

    private static boolean b(long j2, long j3) {
        if (j2 > 0 && j3 > 0) {
            try {
                return kc.format(new Date(j2)).equals(kc.format(new Date(j3)));
            } catch (Exception e2) {
                c.printStackTraceOnly(e2);
            }
        }
        return false;
    }

    public static int dV() {
        String strVj = ai.Vj();
        if (TextUtils.isEmpty(strVj)) {
            return 0;
        }
        b bVar = new b();
        try {
            bVar.parseJson(new JSONObject(strVj));
            return bVar.mA;
        } catch (Exception e2) {
            c.printStackTraceOnly(e2);
            return 0;
        }
    }

    public static int dW() {
        String strVj = ai.Vj();
        if (TextUtils.isEmpty(strVj)) {
            return 0;
        }
        b bVar = new b();
        try {
            bVar.parseJson(new JSONObject(strVj));
            return bVar.mB;
        } catch (Exception e2) {
            c.printStackTraceOnly(e2);
            return 0;
        }
    }
}
