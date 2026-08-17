package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public int f27574a;
    public String eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27575j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27576l;

    /* renamed from: w, reason: collision with root package name */
    public int f27577w;

    public int a() {
        return this.f27577w;
    }

    public int eb() {
        return this.f27574a;
    }

    public String hp() {
        return this.eb;
    }

    public String j() {
        return this.jx;
    }

    public String jx() {
        return this.f27576l;
    }

    public String l() {
        return this.hp;
    }

    public JSONObject s() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", jx());
            jSONObject.put("app_size", eb());
            jSONObject.put("comment_num", a());
            jSONObject.put("download_url", l());
            jSONObject.put("package_name", j());
            jSONObject.put("score", w());
            return jSONObject;
        } catch (Exception e2) {
            com.byazt.ymw.u.hp(e2.toString());
            return jSONObject;
        }
    }

    public int w() {
        return this.f27575j;
    }

    public void hp(String str) {
        this.eb = str;
    }

    public void j(String str) {
        this.jx = str;
    }

    public void jx(String str) {
        this.f27576l = str;
    }

    public void l(String str) {
        this.hp = str;
    }

    public void hp(int i2) {
        this.f27575j = i2;
    }

    public void jx(int i2) {
        this.f27574a = i2;
    }

    public void l(int i2) {
        this.f27577w = i2;
    }
}
