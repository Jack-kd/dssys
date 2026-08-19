package com.byazt.tgw;

import com.anythink.core.common.f.a;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public String f25835a;
    public JSONObject eb;
    public double hp;

    /* renamed from: j, reason: collision with root package name */
    public String f25836j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public double f25837l;

    /* renamed from: w, reason: collision with root package name */
    public int f25838w;

    private j(double d2, double d3, int i2, String str, int i3, String str2, JSONObject jSONObject) {
        this.hp = d2;
        this.f25837l = d3;
        this.jx = i2;
        this.f25836j = str;
        this.f25838w = i3;
        this.f25835a = str2;
        this.eb = jSONObject;
    }

    public static void hp(JSONObject jSONObject, Map<String, j> map) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("prime_rits")) == null) {
            return;
        }
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            try {
                String strOptString = jSONArrayOptJSONArray.optString(i2);
                try {
                    map.put(strOptString, new j(jSONObject.optDouble("upper", 0.0d), jSONObject.optDouble("lower", 0.0d), jSONObject.optInt("type"), strOptString, jSONObject.optInt("js_mode"), jSONObject.optString(a.C0051a.f3218o), jSONObject.optJSONObject("refresh_time")));
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
            }
        }
    }

    public int getType() {
        return this.jx;
    }

    public String j() {
        return this.f25835a;
    }

    public int jx() {
        return this.f25838w;
    }

    public double l() {
        return this.f25837l;
    }

    public boolean w() {
        return this.hp <= 0.0d && this.f25837l <= 0.0d;
    }

    public double hp() {
        return this.hp;
    }

    public int hp(String str) {
        JSONObject jSONObject = this.eb;
        if (jSONObject != null) {
            return jSONObject.optInt(str);
        }
        return 0;
    }
}
