package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 115})
/* loaded from: classes3.dex */
public class ux {

    /* renamed from: a, reason: collision with root package name */
    public int f27563a;
    public String eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27564j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27565l;

    /* renamed from: s, reason: collision with root package name */
    public String f27566s;

    /* renamed from: w, reason: collision with root package name */
    public int f27567w;

    public int a() {
        return this.f27563a;
    }

    public String eb() {
        return this.eb;
    }

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.f27564j;
    }

    public String jx() {
        return this.jx;
    }

    public int l() {
        return this.f27565l;
    }

    public JSONObject q() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("wc_skip_type", l());
            jSONObject.put("wc_miniapp_link", hp());
            jSONObject.put("adv_id", jx());
            jSONObject.put("site_id", j());
            jSONObject.put("wc_open_method", a());
            jSONObject.put("wc_miniapp_sdk", eb());
            jSONObject.put("wc_appid", s());
            return jSONObject;
        } catch (Throwable th) {
            th.getMessage();
            return jSONObject;
        }
    }

    public String s() {
        return this.f27566s;
    }

    public String toString() {
        return q().toString();
    }

    public int w() {
        return this.f27567w;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void j(String str) {
        this.eb = str;
    }

    public void jx(String str) {
        this.f27564j = str;
    }

    public void l(String str) {
        this.jx = str;
    }

    public void w(String str) {
        this.f27566s = str;
    }

    public void hp(int i2) {
        this.f27565l = i2;
    }

    public void jx(int i2) {
        this.f27563a = i2;
    }

    public void l(int i2) {
        this.f27567w = i2;
    }

    public static ux hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ux uxVar = new ux();
        try {
            uxVar.hp(jSONObject.optInt("wc_skip_type"));
            uxVar.hp(jSONObject.optString("wc_miniapp_link"));
            uxVar.l(jSONObject.optString("adv_id"));
            uxVar.jx(jSONObject.optString("site_id"));
            uxVar.jx(jSONObject.optInt("wc_open_method"));
            uxVar.j(jSONObject.optString("wc_miniapp_sdk"));
            uxVar.w(jSONObject.optString("wc_appid"));
            return uxVar;
        } catch (Throwable th) {
            th.getMessage();
            return uxVar;
        }
    }
}
