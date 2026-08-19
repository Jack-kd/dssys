package com.anythink.core.e;

import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private int f8806a = 1;

    /* renamed from: b, reason: collision with root package name */
    private int f8807b = 0;

    /* renamed from: c, reason: collision with root package name */
    private int f8808c = 3;

    /* renamed from: d, reason: collision with root package name */
    private int f8809d = 1;

    /* renamed from: e, reason: collision with root package name */
    private double f8810e = 2.0d;

    /* renamed from: f, reason: collision with root package name */
    private int f8811f = 3;

    /* renamed from: g, reason: collision with root package name */
    private int[] f8812g;

    /* renamed from: h, reason: collision with root package name */
    private String f8813h;

    public final int a() {
        return this.f8806a;
    }

    public final int b() {
        return this.f8807b;
    }

    public final int c() {
        return this.f8808c;
    }

    public final int d() {
        return this.f8809d;
    }

    public final double e() {
        return this.f8810e;
    }

    public final int f() {
        return this.f8811f;
    }

    public final int[] g() {
        return this.f8812g;
    }

    public final String h() {
        return this.f8813h;
    }

    public final String toString() {
        return "DynamicWaterfallStrategy{limitSegmentSwitch=" + this.f8806a + ", latestDay=" + this.f8807b + ", maxCollectCount=" + this.f8808c + ", minCollectCount=" + this.f8809d + ", premiumRate=" + this.f8810e + ", premiumLevel=" + this.f8811f + '}';
    }

    public static g a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            g gVar = new g();
            gVar.f8806a = jSONObject.optInt("limit_sw", 1);
            gVar.f8807b = jSONObject.optInt("latest_day", 0);
            gVar.f8808c = jSONObject.optInt("max_n", 3);
            gVar.f8809d = jSONObject.optInt("min_m", 1);
            gVar.f8810e = jSONObject.optDouble("premium_rate", 2.0d);
            gVar.f8811f = jSONObject.optInt("premium_level", 3);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("not_filter_list");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                gVar.f8813h = jSONArrayOptJSONArray.toString();
                gVar.f8812g = new int[jSONArrayOptJSONArray.length()];
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    gVar.f8812g[i2] = jSONArrayOptJSONArray.optInt(i2);
                }
            }
            return gVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}
