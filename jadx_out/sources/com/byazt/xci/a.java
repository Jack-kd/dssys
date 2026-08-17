package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public String f27176a;

    /* renamed from: e, reason: collision with root package name */
    public String f27177e;
    public String eb;
    public String gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27178j;
    public float jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public HashMap<String, String> f27179k = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public String f27180l;

    /* renamed from: q, reason: collision with root package name */
    public JSONArray f27181q;

    /* renamed from: s, reason: collision with root package name */
    public String f27182s;

    /* renamed from: w, reason: collision with root package name */
    public String f27183w;
    public JSONArray zy;

    public a() {
    }

    public String a() {
        return this.f27180l;
    }

    public String e() {
        return this.eb;
    }

    public String eb() {
        return this.jx;
    }

    public String gu() {
        return this.f27182s;
    }

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f27179k.put(str, str2);
    }

    public JSONArray j() {
        return this.zy;
    }

    public JSONArray jl() {
        return this.f27181q;
    }

    public float jx() {
        return this.jl;
    }

    public String k() {
        return this.gu;
    }

    public String l() {
        return this.f27183w;
    }

    public String q() {
        return this.f27176a;
    }

    public String s() {
        return this.f27178j;
    }

    public String w() {
        return this.hp;
    }

    public String zy() {
        return this.f27177e;
    }

    public void a(String str) {
        this.f27176a = str;
    }

    public void e(String str) {
        this.gu = str;
    }

    public void eb(String str) {
        this.eb = str;
    }

    public void j(String str) {
        this.jx = str;
    }

    public void jx(String str) {
        this.f27180l = str;
    }

    public void l(String str) {
        this.hp = str;
    }

    public void q(String str) {
        this.f27177e = str;
    }

    public void s(String str) {
        this.f27182s = str;
    }

    public void w(String str) {
        this.f27178j = str;
    }

    public a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        j(jSONObject.optString("developer_name"));
        l(jSONObject.optString("app_version"));
        l(jSONObject.optJSONArray("permissions"));
        w(jSONObject.optString("privacy_policy_url"));
        q(jSONObject.optString("package_name"));
        e(jSONObject.optString("app_name"));
        hp((float) jSONObject.optDouble("score", 0.0d));
        hp(jSONObject.optJSONArray("creative_tags"));
        hp(jSONObject.optString("permissions_url"));
        a(jSONObject.optString("desc_url"));
        eb(jSONObject.optString("reg_number"));
        s(jSONObject.optString("reg_url"));
    }

    public HashMap<String, String> hp() {
        return this.f27179k;
    }

    public void l(JSONArray jSONArray) {
        this.f27181q = jSONArray;
    }

    public void hp(String str) {
        this.f27183w = str;
    }

    public void hp(float f2) {
        this.jl = f2;
    }

    public void hp(JSONArray jSONArray) {
        this.zy = jSONArray;
    }
}
