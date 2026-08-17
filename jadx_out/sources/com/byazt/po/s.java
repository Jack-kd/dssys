package com.byazt.po;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 212, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f24468j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public String f24469l;

    public static s hp() {
        return new s();
    }

    public JSONObject j() {
        return this.jx;
    }

    public String jx() {
        return this.f24469l;
    }

    public s l(String str) {
        this.f24469l = str;
        return this;
    }

    public JSONObject w() {
        return this.f24468j;
    }

    public s hp(JSONObject jSONObject) {
        this.f24468j = jSONObject;
        return this;
    }

    public s l(JSONObject jSONObject) {
        this.jx = jSONObject;
        return this;
    }

    public s hp(String str) {
        this.hp = str;
        return this;
    }

    public String l() {
        return this.hp;
    }
}
