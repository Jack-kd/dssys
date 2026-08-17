package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class lo implements com.kwad.sdk.core.d<AdMatrixInfo.ShakeInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.ShakeInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.ShakeInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.ShakeInfo shakeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        shakeInfo.title = jSONObject.optString(g.a.f3271h);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(shakeInfo.title)) {
            shakeInfo.title = "";
        }
        shakeInfo.subtitle = jSONObject.optString(MediaFormat.KEY_SUBTITLE);
        if (obj.toString().equals(shakeInfo.subtitle)) {
            shakeInfo.subtitle = "";
        }
        shakeInfo.acceleration = jSONObject.optInt("acceleration");
        shakeInfo.clickDisabled = jSONObject.optBoolean("clickDisabled");
        shakeInfo.componentIndex = jSONObject.optInt("componentIndex");
        shakeInfo.enable = jSONObject.optBoolean(com.umeng.analytics.pro.cl.f49062q);
        shakeInfo.bidirectionalSwitch = jSONObject.optBoolean("bidirectionalSwitch");
    }

    private static JSONObject b(AdMatrixInfo.ShakeInfo shakeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = shakeInfo.title;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3271h, shakeInfo.title);
        }
        String str2 = shakeInfo.subtitle;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediaFormat.KEY_SUBTITLE, shakeInfo.subtitle);
        }
        int i2 = shakeInfo.acceleration;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "acceleration", i2);
        }
        boolean z2 = shakeInfo.clickDisabled;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickDisabled", z2);
        }
        int i3 = shakeInfo.componentIndex;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "componentIndex", i3);
        }
        boolean z3 = shakeInfo.enable;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.cl.f49062q, z3);
        }
        boolean z4 = shakeInfo.bidirectionalSwitch;
        if (z4) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidirectionalSwitch", z4);
        }
        return jSONObject;
    }
}
