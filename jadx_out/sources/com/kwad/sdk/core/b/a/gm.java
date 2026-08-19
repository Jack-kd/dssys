package com.kwad.sdk.core.b.a;

import com.kwad.components.core.request.model.ImpInfo;
import com.kwad.sdk.core.scene.URLPackage;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gm implements com.kwad.sdk.core.d<ImpInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ImpInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ImpInfo) bVar, jSONObject);
    }

    private static void a(ImpInfo impInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        impInfo.pageScene = jSONObject.optLong("pageScene");
        impInfo.subPageScene = jSONObject.optLong("subPageScene");
        impInfo.sdkExtraData = jSONObject.optString("sdkExtraData");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(impInfo.sdkExtraData)) {
            impInfo.sdkExtraData = "";
        }
        impInfo.posId = jSONObject.optLong("posId");
        impInfo.entryScene = jSONObject.optLong("entryScene");
        impInfo.adNum = jSONObject.optInt("adNum");
        impInfo.action = jSONObject.optInt(com.umeng.ccg.a.f49772z);
        impInfo.width = jSONObject.optInt("width");
        impInfo.height = jSONObject.optInt("height");
        impInfo.cpmBidFloor = jSONObject.optLong("cpmBidFloor");
        impInfo.adStyle = jSONObject.optInt("adStyle");
        URLPackage uRLPackage = new URLPackage();
        impInfo.urlPackage = uRLPackage;
        uRLPackage.parseJson(jSONObject.optJSONObject("urlPackage"));
        impInfo.promoteId = jSONObject.optString("promoteId");
        if (obj.toString().equals(impInfo.promoteId)) {
            impInfo.promoteId = "";
        }
        impInfo.comment = jSONObject.optString("comment");
        if (obj.toString().equals(impInfo.comment)) {
            impInfo.comment = "";
        }
        impInfo.backUrl = jSONObject.optString("backUrl");
        if (obj.toString().equals(impInfo.backUrl)) {
            impInfo.backUrl = "";
        }
        impInfo.userCommRateBuying = jSONObject.optLong("userCommRateBuying");
        impInfo.userCommRateSharing = jSONObject.optLong("userCommRateSharing");
        impInfo.screenOrientation = jSONObject.optInt("screenOrientation");
        impInfo.extraData = jSONObject.optString("extraData");
        if (obj.toString().equals(impInfo.extraData)) {
            impInfo.extraData = "";
        }
        impInfo.query = jSONObject.optString("query");
        if (obj.toString().equals(impInfo.query)) {
            impInfo.query = "";
        }
    }

    private static JSONObject b(ImpInfo impInfo, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = impInfo.pageScene;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pageScene", j2);
        }
        long j3 = impInfo.subPageScene;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "subPageScene", j3);
        }
        String str = impInfo.sdkExtraData;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkExtraData", impInfo.sdkExtraData);
        }
        long j4 = impInfo.posId;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j4);
        }
        long j5 = impInfo.entryScene;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "entryScene", j5);
        }
        int i2 = impInfo.adNum;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adNum", i2);
        }
        int i3 = impInfo.action;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.ccg.a.f49772z, i3);
        }
        int i4 = impInfo.width;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i4);
        }
        int i5 = impInfo.height;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i5);
        }
        long j6 = impInfo.cpmBidFloor;
        if (j6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cpmBidFloor", j6);
        }
        int i6 = impInfo.adStyle;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i6);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "urlPackage", impInfo.urlPackage);
        String str2 = impInfo.promoteId;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "promoteId", impInfo.promoteId);
        }
        String str3 = impInfo.comment;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "comment", impInfo.comment);
        }
        String str4 = impInfo.backUrl;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "backUrl", impInfo.backUrl);
        }
        long j7 = impInfo.userCommRateBuying;
        if (j7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateBuying", j7);
        }
        long j8 = impInfo.userCommRateSharing;
        if (j8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateSharing", j8);
        }
        int i7 = impInfo.screenOrientation;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenOrientation", i7);
        }
        String str5 = impInfo.extraData;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "extraData", impInfo.extraData);
        }
        String str6 = impInfo.query;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "query", impInfo.query);
        }
        return jSONObject;
    }
}
