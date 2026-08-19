package com.anythink.core.common.h;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class aa {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3596a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f3597b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f3598c = 3;

    /* renamed from: d, reason: collision with root package name */
    public int f3599d = 1;

    /* renamed from: e, reason: collision with root package name */
    public int f3600e = 1;

    /* renamed from: f, reason: collision with root package name */
    public int f3601f = 1;

    /* renamed from: g, reason: collision with root package name */
    public int f3602g = 1;

    /* renamed from: h, reason: collision with root package name */
    public int f3603h = 1;

    private aa() {
    }

    public static aa a() {
        aa aaVar = new aa();
        aaVar.f3599d = 3;
        aaVar.f3600e = 3;
        aaVar.f3601f = 3;
        aaVar.f3602g = 3;
        aaVar.f3603h = 1;
        return aaVar;
    }

    public final String toString() {
        return super.toString();
    }

    public static aa a(String str) {
        aa aaVar = new aa();
        try {
            JSONObject jSONObject = new JSONObject(str);
            aaVar.f3599d = jSONObject.optInt("b_e", 1);
            aaVar.f3600e = jSONObject.optInt("r_s", 1);
            aaVar.f3601f = jSONObject.optInt("r_f", 1);
            aaVar.f3602g = jSONObject.optInt("g_ad", 1);
            aaVar.f3603h = jSONObject.optInt("ip_af", 1);
        } catch (Throwable unused) {
        }
        return aaVar;
    }
}
