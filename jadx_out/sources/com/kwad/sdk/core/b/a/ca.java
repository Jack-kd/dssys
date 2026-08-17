package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import com.kwad.sdk.core.response.model.PhotoInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ca implements com.kwad.sdk.core.d<PhotoInfo.BaseInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((PhotoInfo.BaseInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((PhotoInfo.BaseInfo) bVar, jSONObject);
    }

    private static void a(PhotoInfo.BaseInfo baseInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        baseInfo.photoId = jSONObject.optLong("photoId");
        baseInfo.sdkExtraData = jSONObject.optString("sdkExtraData");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(baseInfo.sdkExtraData)) {
            baseInfo.sdkExtraData = "";
        }
        baseInfo.title = jSONObject.optString(g.a.f3271h);
        if (obj.toString().equals(baseInfo.title)) {
            baseInfo.title = "";
        }
        baseInfo.photoDescribeSize = jSONObject.optInt("photoDescribeSize");
        baseInfo.photoTitleSize = jSONObject.optInt("photoTitleSize");
        baseInfo.shareUrl = jSONObject.optString("shareUrl");
        if (obj.toString().equals(baseInfo.shareUrl)) {
            baseInfo.shareUrl = "";
        }
        baseInfo.waterMarkPosition = jSONObject.optInt("waterMarkPosition", new Integer("1").intValue());
        baseInfo.waterMarkShowDuration = jSONObject.optLong("waterMarkShowDuration", new Long("-1").longValue());
        baseInfo.recoExt = jSONObject.optString("recoExt");
        if (obj.toString().equals(baseInfo.recoExt)) {
            baseInfo.recoExt = "";
        }
        baseInfo.likeCount = jSONObject.optLong("likeCount");
        baseInfo.commentCount = jSONObject.optLong("commentCount");
        baseInfo.viewCount = jSONObject.optLong("viewCount");
        baseInfo.createTime = jSONObject.optLong("createTime");
        baseInfo.videoDesc = jSONObject.optString("videoDesc");
        if (obj.toString().equals(baseInfo.videoDesc)) {
            baseInfo.videoDesc = "";
        }
        baseInfo.playTimes = jSONObject.optLong("playTimes");
        baseInfo.videoUrlCacheTime = jSONObject.optLong("videoUrlCacheTime");
        baseInfo.contentSourceType = jSONObject.optInt("contentSourceType");
        baseInfo.toolbarDisable = jSONObject.optBoolean("toolbarDisable");
    }

    private static JSONObject b(PhotoInfo.BaseInfo baseInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = baseInfo.photoId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoId", j2);
        }
        String str = baseInfo.sdkExtraData;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkExtraData", baseInfo.sdkExtraData);
        }
        String str2 = baseInfo.title;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3271h, baseInfo.title);
        }
        int i2 = baseInfo.photoDescribeSize;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoDescribeSize", i2);
        }
        int i3 = baseInfo.photoTitleSize;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoTitleSize", i3);
        }
        String str3 = baseInfo.shareUrl;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "shareUrl", baseInfo.shareUrl);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "waterMarkPosition", baseInfo.waterMarkPosition);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "waterMarkShowDuration", baseInfo.waterMarkShowDuration);
        String str4 = baseInfo.recoExt;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "recoExt", baseInfo.recoExt);
        }
        long j3 = baseInfo.likeCount;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "likeCount", j3);
        }
        long j4 = baseInfo.commentCount;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "commentCount", j4);
        }
        long j5 = baseInfo.viewCount;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "viewCount", j5);
        }
        long j6 = baseInfo.createTime;
        if (j6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "createTime", j6);
        }
        String str5 = baseInfo.videoDesc;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "videoDesc", baseInfo.videoDesc);
        }
        long j7 = baseInfo.playTimes;
        if (j7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playTimes", j7);
        }
        long j8 = baseInfo.videoUrlCacheTime;
        if (j8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "videoUrlCacheTime", j8);
        }
        int i4 = baseInfo.contentSourceType;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "contentSourceType", i4);
        }
        boolean z2 = baseInfo.toolbarDisable;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "toolbarDisable", z2);
        }
        return jSONObject;
    }
}
