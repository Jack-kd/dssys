package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ky implements com.kwad.sdk.core.d<com.kwad.components.ad.reward.retryReward.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.reward.retryReward.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.reward.retryReward.c) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.reward.retryReward.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.status = jSONObject.optInt("status");
        cVar.Bz = jSONObject.optString("convert_url");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(cVar.Bz)) {
            cVar.Bz = "";
        }
        cVar.convertType = jSONObject.optInt("convert_type");
        cVar.BA = jSONObject.optString("ad_desc");
        if (obj.toString().equals(cVar.BA)) {
            cVar.BA = "";
        }
        cVar.productName = jSONObject.optString(DeepLinkPresetEvent.UMEventParamProductName);
        if (obj.toString().equals(cVar.productName)) {
            cVar.productName = "";
        }
        cVar.tT = jSONObject.optString(g.a.f3279p);
        if (obj.toString().equals(cVar.tT)) {
            cVar.tT = "";
        }
        cVar.errorCode = jSONObject.optInt("error_code");
        cVar.errorMsg = jSONObject.optString("error_msg");
        if (obj.toString().equals(cVar.errorMsg)) {
            cVar.errorMsg = "";
        }
    }

    private static JSONObject b(com.kwad.components.ad.reward.retryReward.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = cVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        String str = cVar.Bz;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convert_url", cVar.Bz);
        }
        int i3 = cVar.convertType;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convert_type", i3);
        }
        String str2 = cVar.BA;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_desc", cVar.BA);
        }
        String str3 = cVar.productName;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, DeepLinkPresetEvent.UMEventParamProductName, cVar.productName);
        }
        String str4 = cVar.tT;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3279p, cVar.tT);
        }
        int i4 = cVar.errorCode;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_code", i4);
        }
        String str5 = cVar.errorMsg;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_msg", cVar.errorMsg);
        }
        return jSONObject;
    }
}
