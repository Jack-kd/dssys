package com.byazt.ql;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1306, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u {
    public com.byazt.xs.jx hp;

    /* renamed from: j, reason: collision with root package name */
    public u f24946j;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public int f24947l;

    /* renamed from: w, reason: collision with root package name */
    public u f24948w;

    public com.byazt.xs.jx hp() {
        return this.hp;
    }

    public u j() {
        return this.f24946j;
    }

    public JSONObject jx() {
        return this.jx;
    }

    public int l() {
        return this.f24947l;
    }

    public String toString() {
        return "UGenEvent{mWidget=" + this.hp + ", mEventType=" + this.f24947l + ", mEvent=" + this.jx + '}';
    }

    public void hp(com.byazt.xs.jx jxVar) {
        this.hp = jxVar;
    }

    public void l(u uVar) {
        this.f24948w = uVar;
    }

    public void hp(int i2) {
        this.f24947l = i2;
    }

    public void hp(JSONObject jSONObject) {
        this.jx = jSONObject;
    }

    public void hp(u uVar) {
        this.f24946j = uVar;
    }
}
