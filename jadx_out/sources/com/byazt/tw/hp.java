package com.byazt.tw;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 593, 28})
/* loaded from: classes3.dex */
public class hp {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public String f26059l;

    /* renamed from: s, reason: collision with root package name */
    public int f26060s;
    public long jx = -2147483648L;

    /* renamed from: j, reason: collision with root package name */
    public int f26058j = Integer.MIN_VALUE;

    /* renamed from: w, reason: collision with root package name */
    public long f26061w = -2147483648L;

    /* renamed from: a, reason: collision with root package name */
    public double f26057a = -2.147483648E9d;
    public double eb = -2.147483648E9d;

    public double a() {
        return this.f26057a;
    }

    public int eb() {
        return this.f26060s;
    }

    public JSONObject hp() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(this.f26059l)) {
                jSONObject.putOpt("audio_url", this.f26059l);
            }
            if (!TextUtils.isEmpty(this.hp)) {
                jSONObject.putOpt("file_hash", this.hp);
            }
            long j2 = this.jx;
            if (j2 > 0) {
                jSONObject.put("size", j2);
            }
            int i2 = this.f26058j;
            if (i2 >= 0) {
                jSONObject.put("reward_audio_cached_type", i2);
            }
            long j3 = this.f26061w;
            if (j3 >= 0) {
                jSONObject.put("audio_preload_size", j3);
            }
            double d2 = this.f26057a;
            if (d2 > 0.0d) {
                jSONObject.put("audio_duration", d2);
            }
            double d3 = this.eb;
            if (d3 > 0.0d) {
                jSONObject.put("start", d3);
            }
            int i3 = this.f26060s;
            if (i3 > 0) {
                jSONObject.put("repeat_count", i3);
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    public double j() {
        return this.eb;
    }

    public long jx() {
        return this.jx;
    }

    public String l() {
        return this.hp;
    }

    public String w() {
        return this.f26059l;
    }

    public void l(long j2) {
        this.f26061w = j2;
    }

    public void l(String str) {
        this.f26059l = str;
    }

    public void l(double d2) {
        this.f26057a = d2;
    }

    public void l(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        this.f26060s = i2;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void hp(long j2) {
        this.jx = j2;
    }

    public void hp(int i2) {
        this.f26058j = i2;
    }

    public void hp(double d2) {
        this.eb = d2;
    }
}
