package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gx implements com.kwad.sdk.core.d<AdMatrixInfo.InstalledActivateInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.InstalledActivateInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.InstalledActivateInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.InstalledActivateInfo installedActivateInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        installedActivateInfo.cardSwitch = jSONObject.optBoolean("cardSwitch");
        installedActivateInfo.showTime = jSONObject.optLong("showTime");
    }

    private static JSONObject b(AdMatrixInfo.InstalledActivateInfo installedActivateInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = installedActivateInfo.cardSwitch;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardSwitch", z2);
        }
        long j2 = installedActivateInfo.showTime;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showTime", j2);
        }
        return jSONObject;
    }
}
