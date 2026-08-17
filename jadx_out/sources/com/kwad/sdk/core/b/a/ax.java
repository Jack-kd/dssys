package com.kwad.sdk.core.b.a;

import com.anythink.network.ks.KSATConst;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdStatusInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.AdVideoPreCacheConfig;
import com.kwad.sdk.core.response.model.LiveDetailReward;
import com.kwad.sdk.core.response.model.LiveInfo;
import com.kwad.sdk.core.response.model.PageInfo;
import com.kwad.sdk.core.response.model.VideoPlayerStatus;
import com.kwad.sdk.internal.api.SceneImpl;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ax implements com.kwad.sdk.core.d<AdTemplate> {
    private static void l(AdTemplate adTemplate, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adTemplate.mOriginJString = jSONObject.optString("mOriginJString");
        if (JSONObject.NULL.toString().equals(adTemplate.mOriginJString)) {
            adTemplate.mOriginJString = "";
        }
        adTemplate.posId = jSONObject.optLong("posId");
        adTemplate.adStyle = jSONObject.optInt("adStyle");
        adTemplate.type = jSONObject.optInt("type");
        adTemplate.subType = jSONObject.optInt("subType");
        adTemplate.defaultType = jSONObject.optInt("defaultType");
        adTemplate.contentType = jSONObject.optInt("contentType");
        adTemplate.adInfoList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("adInfo");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                AdInfo adInfo = new AdInfo();
                adInfo.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                adTemplate.adInfoList.add(adInfo);
            }
        }
        LiveInfo liveInfo = new LiveInfo();
        adTemplate.liveInfo = liveInfo;
        liveInfo.parseJson(jSONObject.optJSONObject("liveInfo"));
        adTemplate.impAdExtra = jSONObject.optString("impAdExtra");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(adTemplate.impAdExtra)) {
            adTemplate.impAdExtra = "";
        }
        adTemplate.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
        adTemplate.mIsFromContent = jSONObject.optBoolean("mIsFromContent");
        adTemplate.extra = jSONObject.optString("extra");
        if (obj.toString().equals(adTemplate.extra)) {
            adTemplate.extra = "";
        }
        adTemplate.mUniqueId = jSONObject.optString("mUniqueId");
        if (obj.toString().equals(adTemplate.mUniqueId)) {
            adTemplate.mUniqueId = "";
        }
        adTemplate.mBidEcpm = jSONObject.optLong("mBidEcpm");
        SceneImpl sceneImpl = new SceneImpl();
        adTemplate.mAdScene = sceneImpl;
        sceneImpl.parseJson(jSONObject.optJSONObject("mAdScene"));
        adTemplate.realShowType = jSONObject.optInt("realShowType");
        adTemplate.mInitVoiceStatus = jSONObject.optInt("mInitVoiceStatus");
        adTemplate.mMediaPlayerType = jSONObject.optInt("mMediaPlayerType");
        VideoPlayerStatus videoPlayerStatus = new VideoPlayerStatus();
        adTemplate.mVideoPlayerStatus = videoPlayerStatus;
        videoPlayerStatus.parseJson(jSONObject.optJSONObject("mVideoPlayerStatus"));
        LiveDetailReward liveDetailReward = new LiveDetailReward();
        adTemplate.mLiveDetailRewardFromAdLive = liveDetailReward;
        liveDetailReward.parseJson(jSONObject.optJSONObject("mLiveDetailRewardFromAdLive"));
        adTemplate.mOutClickTimeParam = jSONObject.optLong("mOutClickTimeParam", new Long("-1").longValue());
        adTemplate.mVisibleTimeParam = jSONObject.optLong("mVisibleTimeParam", new Long("-1").longValue());
        adTemplate.mIsLeftSlipStatus = jSONObject.optInt("mIsLeftSlipStatus");
        adTemplate.mPhotoResponseType = jSONObject.optInt("mPhotoResponseType");
        PageInfo pageInfo = new PageInfo();
        adTemplate.mPageInfo = pageInfo;
        pageInfo.parseJson(jSONObject.optJSONObject("mPageInfo"));
        adTemplate.mIsForceJumpLandingPage = jSONObject.optBoolean("mIsForceJumpLandingPage", new Boolean("false").booleanValue());
        adTemplate.mIsAudioEnable = jSONObject.optBoolean("mIsAudioEnable");
        adTemplate.mRewardVerifyCalled = jSONObject.optBoolean("mRewardVerifyCalled");
        adTemplate.isWebViewDownload = jSONObject.optBoolean("isWebViewDownload");
        adTemplate.watched = jSONObject.optBoolean("watched");
        adTemplate.swipeAngle = jSONObject.optInt("swipeAngle");
        adTemplate.converted = jSONObject.optBoolean("converted");
        adTemplate.fromCache = jSONObject.optBoolean("fromCache", new Boolean("false").booleanValue());
        adTemplate.requestStartTime = jSONObject.optLong("requestStartTime");
        adTemplate.loadDataTime = jSONObject.optLong("loadDataTime");
        adTemplate.showStartTime = jSONObject.optLong("showStartTime");
        adTemplate.addStartTime = jSONObject.optLong("addStartTime");
        adTemplate.showTime = jSONObject.optLong("showTime");
        adTemplate.notNetworkRequest = jSONObject.optBoolean("notNetworkRequest");
        adTemplate.downloadDuration = jSONObject.optLong("downloadDuration");
        adTemplate.adLoadTotalTime = jSONObject.optLong("adLoadTotalTime");
        adTemplate.adShowStartTimeStamp = jSONObject.optLong("adShowStartTimeStamp");
        AdStatusInfo adStatusInfo = new AdStatusInfo();
        adTemplate.mAdStatusInfo = adStatusInfo;
        adStatusInfo.parseJson(jSONObject.optJSONObject("mAdStatusInfo"));
        AdVideoPreCacheConfig adVideoPreCacheConfig = new AdVideoPreCacheConfig();
        adTemplate.adVideoPreCacheConfig = adVideoPreCacheConfig;
        adVideoPreCacheConfig.parseJson(jSONObject.optJSONObject("adVideoPreCacheConfig"));
        adTemplate.isNativeRewardPreview = jSONObject.optBoolean("isNativeRewardPreview");
        adTemplate.mInstallApkFromSDK = jSONObject.optBoolean("mInstallApkFromSDK");
        adTemplate.mInstallApkFormUser = jSONObject.optBoolean("mInstallApkFormUser");
        adTemplate.mClickOpenAppStore = jSONObject.optBoolean("mClickOpenAppStore");
        adTemplate.mDataLoadTraceElement = jSONObject.optString("mDataLoadTraceElement");
        if (obj.toString().equals(adTemplate.mDataLoadTraceElement)) {
            adTemplate.mDataLoadTraceElement = "";
        }
        adTemplate.mDataCacheTraceElement = jSONObject.optString("mDataCacheTraceElement");
        if (obj.toString().equals(adTemplate.mDataCacheTraceElement)) {
            adTemplate.mDataCacheTraceElement = "";
        }
        adTemplate.downLoadType = jSONObject.optInt("downLoadType", new Integer("3").intValue());
        adTemplate.hasInnerEcFailed = jSONObject.optBoolean("hasInnerEcFailed");
        adTemplate.isDoAuth = jSONObject.optBoolean("isDoAuth");
    }

    private static JSONObject m(AdTemplate adTemplate, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = adTemplate.mOriginJString;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mOriginJString", adTemplate.mOriginJString);
        }
        long j2 = adTemplate.posId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j2);
        }
        int i2 = adTemplate.adStyle;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i2);
        }
        int i3 = adTemplate.type;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i3);
        }
        int i4 = adTemplate.subType;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "subType", i4);
        }
        int i5 = adTemplate.defaultType;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "defaultType", i5);
        }
        int i6 = adTemplate.contentType;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "contentType", i6);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "adInfo", adTemplate.adInfoList);
        com.kwad.sdk.utils.ac.a(jSONObject, "liveInfo", adTemplate.liveInfo);
        String str2 = adTemplate.impAdExtra;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "impAdExtra", adTemplate.impAdExtra);
        }
        long j3 = adTemplate.llsid;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, j3);
        }
        boolean z2 = adTemplate.mIsFromContent;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsFromContent", z2);
        }
        String str3 = adTemplate.extra;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "extra", adTemplate.extra);
        }
        String str4 = adTemplate.mUniqueId;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mUniqueId", adTemplate.mUniqueId);
        }
        long j4 = adTemplate.mBidEcpm;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mBidEcpm", j4);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mAdScene", adTemplate.mAdScene);
        int i7 = adTemplate.realShowType;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realShowType", i7);
        }
        int i8 = adTemplate.mInitVoiceStatus;
        if (i8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mInitVoiceStatus", i8);
        }
        int i9 = adTemplate.mMediaPlayerType;
        if (i9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mMediaPlayerType", i9);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mVideoPlayerStatus", adTemplate.mVideoPlayerStatus);
        com.kwad.sdk.utils.ac.a(jSONObject, "mLiveDetailRewardFromAdLive", adTemplate.mLiveDetailRewardFromAdLive);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "mOutClickTimeParam", adTemplate.mOutClickTimeParam);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "mVisibleTimeParam", adTemplate.mVisibleTimeParam);
        int i10 = adTemplate.mIsLeftSlipStatus;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsLeftSlipStatus", i10);
        }
        int i11 = adTemplate.mPhotoResponseType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mPhotoResponseType", i11);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mPageInfo", adTemplate.mPageInfo);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsForceJumpLandingPage", adTemplate.mIsForceJumpLandingPage);
        boolean z3 = adTemplate.mIsAudioEnable;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsAudioEnable", z3);
        }
        boolean z4 = adTemplate.mRewardVerifyCalled;
        if (z4) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mRewardVerifyCalled", z4);
        }
        boolean z5 = adTemplate.isWebViewDownload;
        if (z5) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isWebViewDownload", z5);
        }
        boolean z6 = adTemplate.watched;
        if (z6) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "watched", z6);
        }
        int i12 = adTemplate.swipeAngle;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "swipeAngle", i12);
        }
        boolean z7 = adTemplate.converted;
        if (z7) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "converted", z7);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "fromCache", adTemplate.fromCache);
        long j5 = adTemplate.requestStartTime;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestStartTime", j5);
        }
        long j6 = adTemplate.loadDataTime;
        if (j6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "loadDataTime", j6);
        }
        long j7 = adTemplate.showStartTime;
        if (j7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showStartTime", j7);
        }
        long j8 = adTemplate.addStartTime;
        if (j8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "addStartTime", j8);
        }
        long j9 = adTemplate.showTime;
        if (j9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showTime", j9);
        }
        boolean z8 = adTemplate.notNetworkRequest;
        if (z8) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "notNetworkRequest", z8);
        }
        long j10 = adTemplate.downloadDuration;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadDuration", j10);
        }
        long j11 = adTemplate.adLoadTotalTime;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adLoadTotalTime", j11);
        }
        long j12 = adTemplate.adShowStartTimeStamp;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adShowStartTimeStamp", j12);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mAdStatusInfo", adTemplate.mAdStatusInfo);
        com.kwad.sdk.utils.ac.a(jSONObject, "adVideoPreCacheConfig", adTemplate.adVideoPreCacheConfig);
        boolean z9 = adTemplate.isNativeRewardPreview;
        if (z9) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isNativeRewardPreview", z9);
        }
        boolean z10 = adTemplate.mInstallApkFromSDK;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mInstallApkFromSDK", z10);
        }
        boolean z11 = adTemplate.mInstallApkFormUser;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mInstallApkFormUser", z11);
        }
        boolean z12 = adTemplate.mClickOpenAppStore;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mClickOpenAppStore", z12);
        }
        String str5 = adTemplate.mDataLoadTraceElement;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mDataLoadTraceElement", adTemplate.mDataLoadTraceElement);
        }
        String str6 = adTemplate.mDataCacheTraceElement;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mDataCacheTraceElement", adTemplate.mDataCacheTraceElement);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "downLoadType", adTemplate.downLoadType);
        boolean z13 = adTemplate.hasInnerEcFailed;
        if (z13) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "hasInnerEcFailed", z13);
        }
        boolean z14 = adTemplate.isDoAuth;
        if (z14) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isDoAuth", z14);
        }
        return jSONObject;
    }

    @Override // com.kwad.sdk.core.d
    public final /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        l((AdTemplate) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return m((AdTemplate) bVar, jSONObject);
    }
}
