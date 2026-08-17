package com.byazt.moz;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 746, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public boolean f23161a;

    /* renamed from: e, reason: collision with root package name */
    public int f23162e;
    public JSONArray eb;
    public boolean gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f23163j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23164l;

    /* renamed from: q, reason: collision with root package name */
    public String f23165q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f23166s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f23167w;

    @com.byazt.kj.hp(hp = {0, 1, 746, 219})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f23168a;

        /* renamed from: e, reason: collision with root package name */
        public com.byazt.iw.hp f23169e;
        public int eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f23170j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f23171l;

        /* renamed from: q, reason: collision with root package name */
        public boolean f23172q;

        /* renamed from: s, reason: collision with root package name */
        public int f23173s;

        /* renamed from: w, reason: collision with root package name */
        public JSONArray f23174w;

        public jx hp() {
            return new jx(this.hp, this.f23171l, this.jx, this.f23173s, this.f23170j, this.f23174w, this.f23168a, this.f23169e, this.eb, this.f23172q);
        }

        public hp j(int i2) {
            this.f23173s = i2;
            return this;
        }

        public hp jx(int i2) {
            this.eb = i2;
            return this;
        }

        public hp l(int i2) {
            this.jx = i2;
            return this;
        }

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp jx(boolean z2) {
            this.f23172q = z2;
            return this;
        }

        public hp l(boolean z2) {
            this.f23168a = z2;
            return this;
        }

        public hp hp(int i2) {
            this.f23171l = i2;
            return this;
        }

        public hp hp(boolean z2) {
            this.f23170j = z2;
            return this;
        }

        public hp hp(Set<Integer> set) {
            this.f23174w = new JSONArray((Collection) set);
            return this;
        }

        public hp hp(com.byazt.iw.hp hpVar) {
            this.f23169e = hpVar;
            return this;
        }
    }

    public String a() {
        return this.f23165q;
    }

    public int e() {
        return this.f23163j;
    }

    public int eb() {
        return this.f23162e;
    }

    public boolean gu() {
        return this.gu;
    }

    public String hp() {
        return this.hp;
    }

    public boolean j() {
        return this.f23167w;
    }

    public int jx() {
        return this.jx;
    }

    public int l() {
        return this.f23164l;
    }

    public JSONObject q() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("meta_md5", this.hp);
            jSONObject.put("consume_time", this.f23164l);
            jSONObject.put("reduce_time", this.jx);
            jSONObject.put("is_video_completed", this.f23167w);
            jSONObject.put("is_user_interacted", this.f23161a);
            jSONObject.put("reward_verify_array", this.eb);
            jSONObject.put("is_mute", this.f23166s);
            jSONObject.put("play_again_string", this.f23165q);
            jSONObject.put("carousel_type", this.f23162e);
            jSONObject.put("eternal_global_time", this.f23163j);
            jSONObject.put("first_ad_is_video", this.gu);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public Map<Integer, Boolean> s() {
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < this.eb.length(); i2++) {
            try {
                map.put((Integer) this.eb.get(i2), Boolean.TRUE);
            } catch (Exception unused) {
            }
        }
        return map;
    }

    public boolean w() {
        return this.f23166s;
    }

    private jx(String str, int i2, int i3, int i4, boolean z2, JSONArray jSONArray, boolean z3, com.byazt.iw.hp hpVar, int i5, boolean z4) {
        this.hp = str;
        this.f23164l = i2;
        this.jx = i3;
        this.f23163j = i4;
        this.f23167w = z2;
        this.eb = jSONArray;
        this.f23166s = z3;
        this.f23165q = hpVar.s();
        this.f23162e = i5;
        this.gu = z4;
    }

    public jx(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.hp = jSONObject.optString("meta_md5");
            this.f23164l = jSONObject.optInt("consume_time");
            this.jx = jSONObject.optInt("reduce_time");
            this.f23167w = jSONObject.optBoolean("is_video_completed");
            this.eb = jSONObject.optJSONArray("reward_verify_array");
            this.f23166s = jSONObject.optBoolean("is_mute");
            this.f23165q = jSONObject.optString("play_again_string");
            this.f23162e = jSONObject.optInt("carousel_type");
            this.f23163j = jSONObject.optInt("eternal_global_time");
            this.gu = jSONObject.optBoolean("first_ad_is_video");
        } catch (Exception unused) {
        }
    }
}
