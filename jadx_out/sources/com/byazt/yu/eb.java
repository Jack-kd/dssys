package com.byazt.yu;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 94})
/* loaded from: classes3.dex */
public class eb extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28284a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28285w;

    public eb(Context context, s sVar) {
        super(false, false);
        this.f28285w = context;
        this.f28284a = sVar;
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws JSONException {
        jSONObject.put("sdk_version", MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME);
        jSONObject.put("sdk_version_name", "7.5.0.0.baseChina-alpha.3");
        jSONObject.put("channel", this.f28284a.gu());
        q.hp(jSONObject, "aid", this.f28284a.e());
        q.hp(jSONObject, "release_build", this.f28284a.o());
        q.hp(jSONObject, "app_region", this.f28284a.zy());
        q.hp(jSONObject, "app_language", this.f28284a.jl());
        q.hp(jSONObject, "user_agent", this.f28284a.d());
        q.hp(jSONObject, "ab_sdk_version", this.f28284a.v());
        q.hp(jSONObject, "ab_version", this.f28284a.ec());
        q.hp(jSONObject, "aliyun_uuid", this.f28284a.l());
        String strDi = this.f28284a.di();
        if (!TextUtils.isEmpty(strDi)) {
            try {
                jSONObject.put("app_track", new JSONObject(strDi));
            } catch (Throwable th) {
                com.byazt.gt.e.l(th);
            }
        }
        String strK = this.f28284a.k();
        if (strK != null && strK.length() > 0) {
            jSONObject.put("custom", new JSONObject(strK));
        }
        q.hp(jSONObject, "user_unique_id", this.f28284a.u());
        return true;
    }
}
