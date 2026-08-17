package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.logger.BaseInnerEcMsg;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cb implements com.kwad.sdk.core.d<BaseInnerEcMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((BaseInnerEcMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((BaseInnerEcMsg) bVar, jSONObject);
    }

    private static void a(BaseInnerEcMsg baseInnerEcMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        baseInnerEcMsg.adStyle = jSONObject.optInt("ad_style");
        baseInnerEcMsg.materialType = jSONObject.optInt("material_type");
        baseInnerEcMsg.userId = jSONObject.optString("user_id");
        if (JSONObject.NULL.toString().equals(baseInnerEcMsg.userId)) {
            baseInnerEcMsg.userId = "";
        }
        baseInnerEcMsg.status = jSONObject.optInt("status");
    }

    private static JSONObject b(BaseInnerEcMsg baseInnerEcMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = baseInnerEcMsg.adStyle;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i2);
        }
        int i3 = baseInnerEcMsg.materialType;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i3);
        }
        String str = baseInnerEcMsg.userId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "user_id", baseInnerEcMsg.userId);
        }
        int i4 = baseInnerEcMsg.status;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i4);
        }
        return jSONObject;
    }
}
