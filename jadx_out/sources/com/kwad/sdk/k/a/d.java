package com.kwad.sdk.k.a;

import android.content.Context;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.kwad.sdk.utils.ac;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class d extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
    public int bmw = 0;
    public int bmx = 0;
    public int bmy = 0;
    public int bmz = 0;
    public int bmA = 0;
    public int bmB = 0;
    public int bmC = 0;

    public d(Context context) {
        if (context != null) {
            try {
                co(Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) > 0);
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.bmw = jSONObject.optInt("isRoot");
        dVar.bmx = jSONObject.optInt("isXPosed");
        dVar.bmy = jSONObject.optInt("isFrameworkHooked");
        dVar.bmz = jSONObject.optInt("isVirtual");
        dVar.bmA = jSONObject.optInt("isAdbEnabled");
        dVar.bmB = jSONObject.optInt("isEmulator");
        dVar.bmC = jSONObject.optInt("isGroupControl");
    }

    private static JSONObject b(d dVar, JSONObject jSONObject) {
        ac.putValue(jSONObject, "isRoot", dVar.bmw);
        ac.putValue(jSONObject, "isXPosed", dVar.bmx);
        ac.putValue(jSONObject, "isFrameworkHooked", dVar.bmy);
        ac.putValue(jSONObject, "isVirtual", dVar.bmz);
        ac.putValue(jSONObject, "isAdbEnabled", dVar.bmA);
        ac.putValue(jSONObject, "isEmulator", dVar.bmB);
        ac.putValue(jSONObject, "isGroupControl", dVar.bmC);
        return jSONObject;
    }

    private void co(boolean z2) {
        this.bmA = cr(z2);
    }

    private static int cr(boolean z2) {
        return z2 ? 1 : 2;
    }

    public final void cl(boolean z2) {
        this.bmw = cr(z2);
    }

    public final void cm(boolean z2) {
        this.bmx = cr(z2);
    }

    public final void cn(boolean z2) {
        this.bmy = cr(z2);
    }

    public final void cp(boolean z2) {
        this.bmB = cr(z2);
    }

    public final void cq(boolean z2) {
        this.bmC = cr(z2);
    }

    @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
    public final void parseJson(@Nullable JSONObject jSONObject) {
        a(this, jSONObject);
        afterParseJson(jSONObject);
    }

    @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
    public final JSONObject toJson() {
        JSONObject jSONObjectB = b(this, new JSONObject());
        afterToJson(jSONObjectB);
        return jSONObjectB;
    }
}
