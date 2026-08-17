package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import com.anythink.core.common.f.s;
import com.kwad.components.ad.interstitial.report.InterstitialReportInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class he implements com.kwad.sdk.core.d<InterstitialReportInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((InterstitialReportInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((InterstitialReportInfo) bVar, jSONObject);
    }

    private static void a(InterstitialReportInfo interstitialReportInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        interstitialReportInfo.status = jSONObject.optInt("status");
        interstitialReportInfo.type = jSONObject.optInt("type");
        interstitialReportInfo.loadDataTime = jSONObject.optLong("load_data_duration_ms");
        interstitialReportInfo.renderDuration = jSONObject.optLong("render_duration_ms");
        interstitialReportInfo.renderType = jSONObject.optInt("render_type");
        interstitialReportInfo.expectedRenderType = jSONObject.optInt("expected_render_type");
        interstitialReportInfo.materialType = jSONObject.optInt("material_type");
        interstitialReportInfo.downloadDuration = jSONObject.optLong("download_duration_ms");
        interstitialReportInfo.downloadType = jSONObject.optInt(g.a.f3275l);
        interstitialReportInfo.downloadSize = jSONObject.optLong(s.a.f3403e);
        interstitialReportInfo.creativeId = jSONObject.optLong("creative_id");
        interstitialReportInfo.videoUrl = jSONObject.optString(s.a.f3400b);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(interstitialReportInfo.videoUrl)) {
            interstitialReportInfo.videoUrl = "";
        }
        interstitialReportInfo.videoDuration = jSONObject.optLong("video_duration_ms");
        interstitialReportInfo.playStartedDuration = jSONObject.optLong("play_started_duration_ms");
        interstitialReportInfo.abParams = jSONObject.optString("ab_params");
        if (obj.toString().equals(interstitialReportInfo.abParams)) {
            interstitialReportInfo.abParams = "";
        }
        interstitialReportInfo.actionType = jSONObject.optLong("action_type");
        interstitialReportInfo.callbackType = jSONObject.optLong("callback_type");
        interstitialReportInfo.clickSceneType = jSONObject.optLong("click_scene_type");
        interstitialReportInfo.itemClickType = jSONObject.optLong("item_click_type");
        interstitialReportInfo.visiblePercent = jSONObject.optDouble("visible_percent");
    }

    private static JSONObject b(InterstitialReportInfo interstitialReportInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = interstitialReportInfo.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        int i3 = interstitialReportInfo.type;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i3);
        }
        long j2 = interstitialReportInfo.loadDataTime;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_data_duration_ms", j2);
        }
        long j3 = interstitialReportInfo.renderDuration;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_duration_ms", j3);
        }
        int i4 = interstitialReportInfo.renderType;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_type", i4);
        }
        int i5 = interstitialReportInfo.expectedRenderType;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "expected_render_type", i5);
        }
        int i6 = interstitialReportInfo.materialType;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i6);
        }
        long j4 = interstitialReportInfo.downloadDuration;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "download_duration_ms", j4);
        }
        int i7 = interstitialReportInfo.downloadType;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3275l, i7);
        }
        long j5 = interstitialReportInfo.downloadSize;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, s.a.f3403e, j5);
        }
        long j6 = interstitialReportInfo.creativeId;
        if (j6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j6);
        }
        String str = interstitialReportInfo.videoUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, s.a.f3400b, interstitialReportInfo.videoUrl);
        }
        long j7 = interstitialReportInfo.videoDuration;
        if (j7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "video_duration_ms", j7);
        }
        long j8 = interstitialReportInfo.playStartedDuration;
        if (j8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "play_started_duration_ms", j8);
        }
        String str2 = interstitialReportInfo.abParams;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ab_params", interstitialReportInfo.abParams);
        }
        long j9 = interstitialReportInfo.actionType;
        if (j9 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "action_type", j9);
        }
        long j10 = interstitialReportInfo.callbackType;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "callback_type", j10);
        }
        long j11 = interstitialReportInfo.clickSceneType;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "click_scene_type", j11);
        }
        long j12 = interstitialReportInfo.itemClickType;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "item_click_type", j12);
        }
        double d2 = interstitialReportInfo.visiblePercent;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "visible_percent", d2);
        }
        return jSONObject;
    }
}
