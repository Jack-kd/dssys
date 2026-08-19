package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT})
/* loaded from: classes3.dex */
public class xh {

    /* renamed from: a, reason: collision with root package name */
    public long f27603a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27604j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27605l;

    /* renamed from: w, reason: collision with root package name */
    public String f27606w;

    public xh() {
    }

    public String a() {
        return this.hp;
    }

    public String hp() {
        return this.f27605l;
    }

    public String j() {
        return this.f27606w;
    }

    public String jx() {
        return this.f27604j;
    }

    public String l() {
        return this.jx;
    }

    public long w() {
        return this.f27603a;
    }

    public xh(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        hp(jSONObject.optString("reward_live_deep_link_user_id"));
        w(jSONObject.optString("reward_live_deep_link_request_id"));
        l(jSONObject.optString("reward_live_deep_link_room_id"));
        jx(jSONObject.optString("reawrd_live_short_touch_params"));
        j(jSONObject.optString("reawrd_live_extra_pangle_scheme_params"));
        hp(jSONObject.optLong("reward_live_last_time"));
    }

    public void hp(String str) {
        this.f27605l = str;
    }

    public void j(String str) {
        this.f27606w = str;
    }

    public void jx(String str) {
        this.f27604j = str;
    }

    public void l(String str) {
        this.jx = str;
    }

    public void w(String str) {
        this.hp = str;
    }

    public void hp(long j2) {
        this.f27603a = j2;
    }
}
