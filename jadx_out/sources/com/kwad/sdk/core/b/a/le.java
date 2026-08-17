package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class le implements com.kwad.sdk.core.d<AdMatrixInfo.RotateDegreeInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.RotateDegreeInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.RotateDegreeInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rotateDegreeInfo.rotateDegree = jSONObject.optInt("rotateDegree");
        rotateDegreeInfo.direction = jSONObject.optInt("direction");
    }

    private static JSONObject b(AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = rotateDegreeInfo.rotateDegree;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rotateDegree", i2);
        }
        int i3 = rotateDegreeInfo.direction;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "direction", i3);
        }
        return jSONObject;
    }
}
