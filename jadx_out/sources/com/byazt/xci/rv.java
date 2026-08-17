package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1275})
/* loaded from: classes3.dex */
public class rv {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27481j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27482l;

    /* renamed from: w, reason: collision with root package name */
    public int f27483w;

    public static rv hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        rv rvVar = new rv();
        rvVar.hp = jSONObject.optInt("auth_type");
        rvVar.f27482l = jSONObject.optInt("auth_time");
        rvVar.jx = jSONObject.optLong("auth_out_time");
        rvVar.f27481j = jSONObject.optInt("video_open_deeplink");
        rvVar.f27483w = jSONObject.optInt("reject_in");
        return rvVar;
    }

    public int a() {
        return this.f27483w;
    }

    public int j() {
        return this.f27481j;
    }

    public int jx() {
        return this.f27482l;
    }

    public int l() {
        return this.hp;
    }

    public long w() {
        return this.jx;
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auth_type", this.hp);
            jSONObject.put("auth_time", this.f27482l);
            jSONObject.put("auth_out_time", this.jx);
            jSONObject.put("video_open_deeplink", this.f27481j);
            jSONObject.put("reject_in", this.f27483w);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
