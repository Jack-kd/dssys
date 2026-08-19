package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.s;
import com.anythink.network.ks.KSATConst;
import com.kwad.components.core.video.a.d;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ny implements com.kwad.sdk.core.d<d.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((d.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((d.b) bVar, jSONObject);
    }

    private static void a(d.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.aop = jSONObject.optLong("start_play_duration_ms");
        bVar.aoq = jSONObject.optLong("first_frame_duration_ms");
        bVar.aor = jSONObject.optLong("block_total_duration_ms");
        bVar.videoDuration = jSONObject.optLong("video_duration_ms");
        bVar.anU = jSONObject.optInt("block_times");
        bVar.videoUrl = jSONObject.optString(s.a.f3400b);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.videoUrl)) {
            bVar.videoUrl = "";
        }
        bVar.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
        bVar.creativeId = jSONObject.optLong("creative_id");
        bVar.authorId = jSONObject.optLong("ad_info_uid");
        bVar.aon = jSONObject.optString("ad_info_user_name");
        if (obj.toString().equals(bVar.aon)) {
            bVar.aon = "";
        }
        bVar.adStyle = jSONObject.optInt("ad_style");
        bVar.aoo = jSONObject.optInt("ad_media_player_type");
    }

    private static JSONObject b(d.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = bVar.aop;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "start_play_duration_ms", j2);
        }
        long j3 = bVar.aoq;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "first_frame_duration_ms", j3);
        }
        long j4 = bVar.aor;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "block_total_duration_ms", j4);
        }
        long j5 = bVar.videoDuration;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "video_duration_ms", j5);
        }
        int i2 = bVar.anU;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "block_times", i2);
        }
        String str = bVar.videoUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, s.a.f3400b, bVar.videoUrl);
        }
        long j6 = bVar.llsid;
        if (j6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, j6);
        }
        long j7 = bVar.creativeId;
        if (j7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j7);
        }
        long j8 = bVar.authorId;
        if (j8 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_uid", j8);
        }
        String str2 = bVar.aon;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_user_name", bVar.aon);
        }
        int i3 = bVar.adStyle;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i3);
        }
        int i4 = bVar.aoo;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_media_player_type", i4);
        }
        return jSONObject;
    }
}
