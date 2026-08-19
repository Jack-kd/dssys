package com.anythink.core.common.u.a.b.a.a;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: h, reason: collision with root package name */
    public static final String f7755h = "business_type";

    /* renamed from: i, reason: collision with root package name */
    public static final int f7756i = 1000;

    /* renamed from: j, reason: collision with root package name */
    public static final int f7757j = 1001;

    /* renamed from: a, reason: collision with root package name */
    public String f7758a;

    /* renamed from: b, reason: collision with root package name */
    public int f7759b;

    /* renamed from: c, reason: collision with root package name */
    public String f7760c;

    /* renamed from: d, reason: collision with root package name */
    public String f7761d;

    /* renamed from: e, reason: collision with root package name */
    public String f7762e;

    /* renamed from: f, reason: collision with root package name */
    public long f7763f;

    /* renamed from: g, reason: collision with root package name */
    public String f7764g;

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
        return "content: " + this.f7762e;
    }
}
