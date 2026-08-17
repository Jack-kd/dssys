package com.kwad.sdk.core.b.a;

import com.anythink.network.ks.KSATConst;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cc implements com.kwad.sdk.core.d<com.kwad.sdk.commercial.c.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.commercial.c.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.commercial.c.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.commercial.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.creativeId = jSONObject.optLong("creative_id");
        aVar.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
        aVar.posId = jSONObject.optLong("pos_Id");
        aVar.templateId = jSONObject.optString("template_id");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.templateId)) {
            aVar.templateId = "";
        }
        aVar.templateVersion = jSONObject.optString("template_version");
        if (obj.toString().equals(aVar.templateVersion)) {
            aVar.templateVersion = "";
        }
        aVar.tkPublishType = jSONObject.optInt("tk_publish_type");
        aVar.errorCode = jSONObject.optInt("error_code");
        aVar.errorMsg = jSONObject.optString("error_msg");
        if (obj.toString().equals(aVar.errorMsg)) {
            aVar.errorMsg = "";
        }
        aVar.campaignType = jSONObject.optInt("campaign_type");
        aVar.ocpcActionType = jSONObject.optInt("ocpc_action_type");
        aVar.industryFirstLevelId = jSONObject.optInt("industry_first_level_id");
        aVar.adOperationType = jSONObject.optInt("ad_operation_type");
        aVar.webUriSourceType = jSONObject.optInt("web_uri_source_type");
    }

    private static JSONObject b(com.kwad.sdk.commercial.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = aVar.creativeId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j2);
        }
        long j3 = aVar.llsid;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, j3);
        }
        long j4 = aVar.posId;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pos_Id", j4);
        }
        String str = aVar.templateId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_id", aVar.templateId);
        }
        String str2 = aVar.templateVersion;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_version", aVar.templateVersion);
        }
        int i2 = aVar.tkPublishType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_publish_type", i2);
        }
        int i3 = aVar.errorCode;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_code", i3);
        }
        String str3 = aVar.errorMsg;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_msg", aVar.errorMsg);
        }
        int i4 = aVar.campaignType;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "campaign_type", i4);
        }
        int i5 = aVar.ocpcActionType;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ocpc_action_type", i5);
        }
        int i6 = aVar.industryFirstLevelId;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "industry_first_level_id", i6);
        }
        int i7 = aVar.adOperationType;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_operation_type", i7);
        }
        int i8 = aVar.webUriSourceType;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "web_uri_source_type", i8);
        }
        return jSONObject;
    }
}
