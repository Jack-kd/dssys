package com.kwad.sdk.core.b.a;

import com.kwad.sdk.commercial.convert.AdLinkMonitorMsg;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ac implements com.kwad.sdk.core.d<AdLinkMonitorMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdLinkMonitorMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdLinkMonitorMsg) bVar, jSONObject);
    }

    private static void a(AdLinkMonitorMsg adLinkMonitorMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adLinkMonitorMsg.status = jSONObject.optInt("status");
        adLinkMonitorMsg.durationTime = jSONObject.optLong("duration_time");
        adLinkMonitorMsg.renderType = jSONObject.optInt("render_type");
        adLinkMonitorMsg.adStyle = jSONObject.optInt("ad_style");
        adLinkMonitorMsg.materialLoadType = jSONObject.optInt("material_load_type");
    }

    private static JSONObject b(AdLinkMonitorMsg adLinkMonitorMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = adLinkMonitorMsg.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        long j2 = adLinkMonitorMsg.durationTime;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "duration_time", j2);
        }
        int i3 = adLinkMonitorMsg.renderType;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_type", i3);
        }
        int i4 = adLinkMonitorMsg.adStyle;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i4);
        }
        int i5 = adLinkMonitorMsg.materialLoadType;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_load_type", i5);
        }
        return jSONObject;
    }
}
