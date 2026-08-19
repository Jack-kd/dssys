package com.anythink.core.common.h;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ar {

    /* renamed from: h, reason: collision with root package name */
    public static final String f3799h = "business_type";

    /* renamed from: i, reason: collision with root package name */
    public static final int f3800i = 1000;

    /* renamed from: j, reason: collision with root package name */
    public static final int f3801j = 1001;

    /* renamed from: a, reason: collision with root package name */
    public String f3802a;

    /* renamed from: b, reason: collision with root package name */
    public int f3803b;

    /* renamed from: c, reason: collision with root package name */
    public String f3804c;

    /* renamed from: d, reason: collision with root package name */
    public String f3805d;

    /* renamed from: e, reason: collision with root package name */
    public String f3806e;

    /* renamed from: f, reason: collision with root package name */
    public long f3807f;

    /* renamed from: g, reason: collision with root package name */
    public String f3808g;

    private static String a(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("business_type", i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }

    private String a() {
        return this.f3805d + "--extra: " + this.f3808g + "--requestType: " + this.f3803b + "--content:" + this.f3806e;
    }
}
