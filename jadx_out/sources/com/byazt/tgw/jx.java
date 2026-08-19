package com.byazt.tgw;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public double f25839a;
    public double eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f25840j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25841l;

    /* renamed from: w, reason: collision with root package name */
    public String f25842w;

    public jx(String str, String str2, String str3, int i2, String str4, double d2, double d3) {
        this.hp = str;
        this.f25841l = str2;
        this.jx = str3;
        this.f25840j = i2;
        this.f25842w = str4;
        this.f25839a = d2;
        this.eb = d3;
    }

    public double a() {
        return this.eb;
    }

    public String hp() {
        return this.f25841l;
    }

    public String j() {
        return this.f25842w;
    }

    public int jx() {
        return this.f25840j;
    }

    public String l() {
        return this.jx;
    }

    public double w() {
        return this.f25839a;
    }

    public static jx hp(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return null;
        }
        return new jx(str, jSONObject.optString("label_name"), jSONObject.optString("timestamp"), jSONObject.optInt("label_id"), jSONObject.optString("label_version"), jSONObject.optDouble("upper_bound"), jSONObject.optDouble("lower_bound"));
    }
}
