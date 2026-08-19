package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.sigmob.sdk.base.mta.PointType;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class la implements com.kwad.sdk.core.d<AdMatrixInfo.RewardVideoInteractInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.RewardVideoInteractInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.RewardVideoInteractInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.RewardVideoInteractInfo rewardVideoInteractInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rewardVideoInteractInfo.templateId = jSONObject.optString("templateId");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(rewardVideoInteractInfo.templateId)) {
            rewardVideoInteractInfo.templateId = "";
        }
        rewardVideoInteractInfo.showTime = jSONObject.optInt("showTime", new Integer("15").intValue());
        rewardVideoInteractInfo.duration = jSONObject.optInt("duration", new Integer(PointType.SIGMOB_APP).intValue());
        rewardVideoInteractInfo.rewardTime = jSONObject.optInt("rewardTime", new Integer("5").intValue());
        rewardVideoInteractInfo.intervalShow = jSONObject.optInt("intervalShow", new Integer("3").intValue());
        rewardVideoInteractInfo.dayMaxLimit = jSONObject.optInt("dayMaxLimit", new Integer("2").intValue());
        rewardVideoInteractInfo.style = jSONObject.optInt("style");
        rewardVideoInteractInfo.successfulMsg = jSONObject.optString("successfulMsg");
        if (obj.toString().equals(rewardVideoInteractInfo.successfulMsg)) {
            rewardVideoInteractInfo.successfulMsg = "";
        }
        rewardVideoInteractInfo.errorMsg = jSONObject.optString(MediationConstant.KEY_ERROR_MSG);
        if (obj.toString().equals(rewardVideoInteractInfo.errorMsg)) {
            rewardVideoInteractInfo.errorMsg = "";
        }
        AdMatrixInfo.StyleInfo styleInfo = new AdMatrixInfo.StyleInfo();
        rewardVideoInteractInfo.styleInfo = styleInfo;
        styleInfo.parseJson(jSONObject.optJSONObject("styleInfo"));
    }

    private static JSONObject b(AdMatrixInfo.RewardVideoInteractInfo rewardVideoInteractInfo, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = rewardVideoInteractInfo.templateId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "templateId", rewardVideoInteractInfo.templateId);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "showTime", rewardVideoInteractInfo.showTime);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "duration", rewardVideoInteractInfo.duration);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardTime", rewardVideoInteractInfo.rewardTime);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "intervalShow", rewardVideoInteractInfo.intervalShow);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "dayMaxLimit", rewardVideoInteractInfo.dayMaxLimit);
        int i2 = rewardVideoInteractInfo.style;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "style", i2);
        }
        String str2 = rewardVideoInteractInfo.successfulMsg;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "successfulMsg", rewardVideoInteractInfo.successfulMsg);
        }
        String str3 = rewardVideoInteractInfo.errorMsg;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_ERROR_MSG, rewardVideoInteractInfo.errorMsg);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "styleInfo", rewardVideoInteractInfo.styleInfo);
        return jSONObject;
    }
}
