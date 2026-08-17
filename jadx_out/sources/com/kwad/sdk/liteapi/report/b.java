package com.kwad.sdk.liteapi.report;

import android.os.Build;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.LiteOAIDHelper;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
final class b {
    public String Np;
    public String Nq;
    public String Nr;
    public String aRa;
    public String aWZ;
    public int aqw;
    public int aqy;
    public String aqz;

    public static b RI() {
        b bVar = new b();
        try {
            bVar.aRa = LiteOAIDHelper.obtainCurrent();
            bVar.aqy = Build.VERSION.SDK_INT;
            bVar.Nr = Build.VERSION.RELEASE;
            bVar.aqw = 1;
            bVar.aqz = Locale.getDefault().getLanguage();
            bVar.aWZ = Build.MANUFACTURER;
            bVar.Np = Build.MODEL;
            bVar.Nq = Build.BRAND;
        } catch (Throwable unused) {
        }
        return bVar;
    }

    public final JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("oaid", this.aRa);
            return jSONObject;
        } catch (JSONException e2) {
            LiteApiLogger.printStackTrace(e2);
            return jSONObject;
        }
    }
}
