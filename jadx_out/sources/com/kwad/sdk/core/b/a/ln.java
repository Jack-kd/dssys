package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.scene.URLPackage;
import com.kwad.sdk.internal.api.AdLabelImpl;
import com.kwad.sdk.internal.api.NativeAdExtraDataImpl;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.internal.api.SplashExtraDataImpl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ln implements com.kwad.sdk.core.d<SceneImpl> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((SceneImpl) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((SceneImpl) bVar, jSONObject);
    }

    private static void a(SceneImpl sceneImpl, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        URLPackage uRLPackage = new URLPackage();
        sceneImpl.urlPackage = uRLPackage;
        uRLPackage.parseJson(jSONObject.optJSONObject("urlPackage"));
        sceneImpl.posId = jSONObject.optLong("posId");
        sceneImpl.entryScene = jSONObject.optLong("entryScene");
        sceneImpl.adNum = jSONObject.optInt("adNum");
        sceneImpl.action = jSONObject.optInt(com.umeng.ccg.a.f49772z);
        sceneImpl.width = jSONObject.optInt("width");
        sceneImpl.height = jSONObject.optInt("height");
        sceneImpl.adStyle = jSONObject.optInt("adStyle");
        sceneImpl.screenOrientation = jSONObject.optInt("screenOrientation");
        AdLabelImpl adLabelImpl = new AdLabelImpl();
        sceneImpl.mKsAdLabel = adLabelImpl;
        adLabelImpl.parseJson(jSONObject.optJSONObject("mKsAdLabel"));
        SplashExtraDataImpl splashExtraDataImpl = new SplashExtraDataImpl();
        sceneImpl.splashExtraData = splashExtraDataImpl;
        splashExtraDataImpl.parseJson(jSONObject.optJSONObject("splashExtraData"));
        NativeAdExtraDataImpl nativeAdExtraDataImpl = new NativeAdExtraDataImpl();
        sceneImpl.nativeAdExtraData = nativeAdExtraDataImpl;
        nativeAdExtraDataImpl.parseJson(jSONObject.optJSONObject("nativeAdExtraData"));
        sceneImpl.promoteId = jSONObject.optString("promoteId");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(sceneImpl.promoteId)) {
            sceneImpl.promoteId = "";
        }
        sceneImpl.comment = jSONObject.optString("comment");
        if (obj.toString().equals(sceneImpl.comment)) {
            sceneImpl.comment = "";
        }
        sceneImpl.userCommRateBuying = jSONObject.optLong("userCommRateBuying");
        sceneImpl.userCommRateSharing = jSONObject.optLong("userCommRateSharing");
        sceneImpl.backUrl = jSONObject.optString("backUrl");
        if (obj.toString().equals(sceneImpl.backUrl)) {
            sceneImpl.backUrl = "";
        }
        sceneImpl.bidResponse = jSONObject.optString("bidResponse");
        if (obj.toString().equals(sceneImpl.bidResponse)) {
            sceneImpl.bidResponse = "";
        }
        sceneImpl.bidResponseV2 = jSONObject.optString("bidResponseV2");
        if (obj.toString().equals(sceneImpl.bidResponseV2)) {
            sceneImpl.bidResponseV2 = "";
        }
        sceneImpl.query = jSONObject.optString("query");
        if (obj.toString().equals(sceneImpl.query)) {
            sceneImpl.query = "";
        }
    }

    private static JSONObject b(SceneImpl sceneImpl, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "urlPackage", sceneImpl.urlPackage);
        long j2 = sceneImpl.posId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j2);
        }
        long j3 = sceneImpl.entryScene;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "entryScene", j3);
        }
        int i2 = sceneImpl.adNum;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adNum", i2);
        }
        int i3 = sceneImpl.action;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.ccg.a.f49772z, i3);
        }
        int i4 = sceneImpl.width;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i4);
        }
        int i5 = sceneImpl.height;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i5);
        }
        int i6 = sceneImpl.adStyle;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i6);
        }
        int i7 = sceneImpl.screenOrientation;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenOrientation", i7);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mKsAdLabel", sceneImpl.mKsAdLabel);
        com.kwad.sdk.utils.ac.a(jSONObject, "splashExtraData", sceneImpl.splashExtraData);
        com.kwad.sdk.utils.ac.a(jSONObject, "nativeAdExtraData", sceneImpl.nativeAdExtraData);
        String str = sceneImpl.promoteId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "promoteId", sceneImpl.promoteId);
        }
        String str2 = sceneImpl.comment;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "comment", sceneImpl.comment);
        }
        long j4 = sceneImpl.userCommRateBuying;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateBuying", j4);
        }
        long j5 = sceneImpl.userCommRateSharing;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateSharing", j5);
        }
        String str3 = sceneImpl.backUrl;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "backUrl", sceneImpl.backUrl);
        }
        String str4 = sceneImpl.bidResponse;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidResponse", sceneImpl.bidResponse);
        }
        String str5 = sceneImpl.bidResponseV2;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidResponseV2", sceneImpl.bidResponseV2);
        }
        String str6 = sceneImpl.query;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "query", sceneImpl.query);
        }
        return jSONObject;
    }
}
