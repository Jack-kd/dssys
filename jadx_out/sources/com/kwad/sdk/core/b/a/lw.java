package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class lw implements com.kwad.sdk.core.d<AdInfo.SlideConvertInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdInfo.SlideConvertInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdInfo.SlideConvertInfo) bVar, jSONObject);
    }

    private static void a(AdInfo.SlideConvertInfo slideConvertInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        slideConvertInfo.convertDistance = jSONObject.optInt("convertDistance");
        slideConvertInfo.convertSlideDirection = jSONObject.optString("convertSlideDirection");
        if (JSONObject.NULL.toString().equals(slideConvertInfo.convertSlideDirection)) {
            slideConvertInfo.convertSlideDirection = "";
        }
        slideConvertInfo.convertAngle = jSONObject.optInt("convertAngle");
    }

    private static JSONObject b(AdInfo.SlideConvertInfo slideConvertInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = slideConvertInfo.convertDistance;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertDistance", i2);
        }
        String str = slideConvertInfo.convertSlideDirection;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertSlideDirection", slideConvertInfo.convertSlideDirection);
        }
        int i3 = slideConvertInfo.convertAngle;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertAngle", i3);
        }
        return jSONObject;
    }
}
