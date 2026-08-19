package com.byazt.du;

import androidx.core.app.NotificationCompat;
import com.byazt.jz.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes2.dex */
public class di extends com.byazt.oa.w<JSONObject, JSONObject> {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jz.ud f19314l;

    public di(String str, com.byazt.jz.ud udVar) {
        this.f19314l = udVar;
        this.hp = str;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("appInfo", (com.byazt.oa.w<?, ?>) new di("appInfo", udVar));
        xsVar.hp("adInfo", (com.byazt.oa.w<?, ?>) new di("adInfo", udVar));
        xsVar.hp("getTemplateInfo", (com.byazt.oa.w<?, ?>) new di("getTemplateInfo", udVar));
        xsVar.hp("getTeMaiAds", (com.byazt.oa.w<?, ?>) new di("getTeMaiAds", udVar));
        xsVar.hp("isViewable", (com.byazt.oa.w<?, ?>) new di("isViewable", udVar));
        xsVar.hp("getScreenSize", (com.byazt.oa.w<?, ?>) new di("getScreenSize", udVar));
        xsVar.hp("getCloseButtonInfo", (com.byazt.oa.w<?, ?>) new di("getCloseButtonInfo", udVar));
        xsVar.hp("getVolume", (com.byazt.oa.w<?, ?>) new di("getVolume", udVar));
        xsVar.hp("sendReward", (com.byazt.oa.w<?, ?>) new di("sendReward", udVar));
        xsVar.hp("subscribe_app_ad", (com.byazt.oa.w<?, ?>) new di("subscribe_app_ad", udVar));
        xsVar.hp("download_app_ad", (com.byazt.oa.w<?, ?>) new di("download_app_ad", udVar));
        xsVar.hp("cancel_download_app_ad", (com.byazt.oa.w<?, ?>) new di("cancel_download_app_ad", udVar));
        xsVar.hp("unsubscribe_app_ad", (com.byazt.oa.w<?, ?>) new di("unsubscribe_app_ad", udVar));
        xsVar.hp("clickEvent", (com.byazt.oa.w<?, ?>) new di("clickEvent", udVar));
        xsVar.hp("renderDidFinish", (com.byazt.oa.w<?, ?>) new di("renderDidFinish", udVar));
        xsVar.hp("dynamicTrack", (com.byazt.oa.w<?, ?>) new di("dynamicTrack", udVar));
        xsVar.hp("skipVideo", (com.byazt.oa.w<?, ?>) new di("skipVideo", udVar));
        xsVar.hp("muteVideo", (com.byazt.oa.w<?, ?>) new di("muteVideo", udVar));
        xsVar.hp("changeVideoState", (com.byazt.oa.w<?, ?>) new di("changeVideoState", udVar));
        xsVar.hp("getCurrentVideoState", (com.byazt.oa.w<?, ?>) new di("getCurrentVideoState", udVar));
        xsVar.hp("send_temai_product_ids", (com.byazt.oa.w<?, ?>) new di("send_temai_product_ids", udVar));
        xsVar.hp("getMaterialMeta", (com.byazt.oa.w<?, ?>) new di("getMaterialMeta", udVar));
        xsVar.hp("endcard_load", (com.byazt.oa.w<?, ?>) new di("endcard_load", udVar));
        xsVar.hp("pauseWebView", (com.byazt.oa.w<?, ?>) new di("pauseWebView", udVar));
        xsVar.hp("pauseWebViewTimers", (com.byazt.oa.w<?, ?>) new di("pauseWebViewTimers", udVar));
        xsVar.hp("webview_time_track", (com.byazt.oa.w<?, ?>) new di("webview_time_track", udVar));
        xsVar.hp("adInfoStash", (com.byazt.oa.w<?, ?>) new di("adInfoStash", udVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        ud.hp hpVar = new ud.hp();
        hpVar.hp = NotificationCompat.CATEGORY_CALL;
        hpVar.jx = this.hp;
        hpVar.f21989j = jSONObject;
        return this.f19314l.hp(hpVar, 3);
    }
}
