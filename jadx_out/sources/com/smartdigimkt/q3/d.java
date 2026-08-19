package com.smartdigimkt.q3;

import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public String f42843a;

    /* renamed from: b, reason: collision with root package name */
    public int f42844b;

    /* renamed from: c, reason: collision with root package name */
    public String f42845c;

    /* renamed from: d, reason: collision with root package name */
    public String f42846d;

    /* renamed from: e, reason: collision with root package name */
    public String f42847e;

    /* renamed from: f, reason: collision with root package name */
    public long f42848f;

    /* renamed from: g, reason: collision with root package name */
    public String f42849g;

    public static String a(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("business_type", i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }
}
