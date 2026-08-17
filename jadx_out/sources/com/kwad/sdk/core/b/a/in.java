package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class in implements com.kwad.sdk.core.d<AdInfo.AdMaterialInfo.MaterialFeature> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdInfo.AdMaterialInfo.MaterialFeature) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdInfo.AdMaterialInfo.MaterialFeature) bVar, jSONObject);
    }

    private static void a(AdInfo.AdMaterialInfo.MaterialFeature materialFeature, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        materialFeature.featureType = jSONObject.optInt("featureType");
        materialFeature.materialUrl = jSONObject.optString("materialUrl");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(materialFeature.materialUrl)) {
            materialFeature.materialUrl = "";
        }
        materialFeature.photoId = jSONObject.optLong("photoId");
        materialFeature.coverUrl = jSONObject.optString("coverUrl");
        if (obj.toString().equals(materialFeature.coverUrl)) {
            materialFeature.coverUrl = "";
        }
        materialFeature.videoDuration = jSONObject.optInt("videoDuration");
        materialFeature.videoDurationMs = jSONObject.optLong("videoDurationMs");
        materialFeature.firstFrame = jSONObject.optString("firstFrame");
        if (obj.toString().equals(materialFeature.firstFrame)) {
            materialFeature.firstFrame = "";
        }
        materialFeature.blurBackgroundUrl = jSONObject.optString("blurBackgroundUrl");
        if (obj.toString().equals(materialFeature.blurBackgroundUrl)) {
            materialFeature.blurBackgroundUrl = "";
        }
        materialFeature.webpCoverUrl = jSONObject.optString("webpCoverUrl");
        if (obj.toString().equals(materialFeature.webpCoverUrl)) {
            materialFeature.webpCoverUrl = "";
        }
        materialFeature.videoWidth = jSONObject.optInt("videoWidth");
        materialFeature.videoHeight = jSONObject.optInt("videoHeight");
        materialFeature.likeCount = jSONObject.optLong("likeCount");
        materialFeature.commentCount = jSONObject.optLong("commentCount");
        materialFeature.source = jSONObject.optInt(com.sigmob.sdk.base.n.f36449l);
        materialFeature.ruleId = jSONObject.optString("ruleId");
        if (obj.toString().equals(materialFeature.ruleId)) {
            materialFeature.ruleId = "";
        }
    }

    private static JSONObject b(AdInfo.AdMaterialInfo.MaterialFeature materialFeature, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = materialFeature.featureType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "featureType", i2);
        }
        String str = materialFeature.materialUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "materialUrl", materialFeature.materialUrl);
        }
        long j2 = materialFeature.photoId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoId", j2);
        }
        String str2 = materialFeature.coverUrl;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "coverUrl", materialFeature.coverUrl);
        }
        int i3 = materialFeature.videoDuration;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "videoDuration", i3);
        }
        long j3 = materialFeature.videoDurationMs;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "videoDurationMs", j3);
        }
        String str3 = materialFeature.firstFrame;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "firstFrame", materialFeature.firstFrame);
        }
        String str4 = materialFeature.blurBackgroundUrl;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "blurBackgroundUrl", materialFeature.blurBackgroundUrl);
        }
        String str5 = materialFeature.webpCoverUrl;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "webpCoverUrl", materialFeature.webpCoverUrl);
        }
        int i4 = materialFeature.videoWidth;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "videoWidth", i4);
        }
        int i5 = materialFeature.videoHeight;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "videoHeight", i5);
        }
        long j4 = materialFeature.likeCount;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "likeCount", j4);
        }
        long j5 = materialFeature.commentCount;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "commentCount", j5);
        }
        int i6 = materialFeature.source;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.sigmob.sdk.base.n.f36449l, i6);
        }
        String str6 = materialFeature.ruleId;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ruleId", materialFeature.ruleId);
        }
        return jSONObject;
    }
}
