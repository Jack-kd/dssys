package com.umeng.analytics.pro;

import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ae extends ac {

    /* renamed from: a, reason: collision with root package name */
    private String f48650a;

    /* renamed from: b, reason: collision with root package name */
    private String f48651b;

    public ae(String str, ArrayList<ad> arrayList) {
        super(str, arrayList);
        this.f48650a = "";
        this.f48651b = "";
    }

    @Override // com.umeng.analytics.pro.ac, com.umeng.analytics.pro.ak
    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObjectA = super.a(str, jSONObject);
        if (jSONObjectA != null) {
            try {
                jSONObjectA.put(com.umeng.ccg.a.f49771y, this.f48650a);
                jSONObjectA.put(com.umeng.ccg.a.f49772z, this.f48651b);
            } catch (Throwable unused) {
            }
        }
        return jSONObjectA;
    }

    @Override // com.umeng.analytics.pro.ac, com.umeng.analytics.pro.ak
    public void b(String str, JSONObject jSONObject) {
        super.b(str, jSONObject);
        if (jSONObject.has(com.umeng.ccg.a.f49772z)) {
            d(jSONObject.optString(com.umeng.ccg.a.f49772z));
        }
        if (jSONObject.has(com.umeng.ccg.a.f49771y)) {
            c(jSONObject.optString(com.umeng.ccg.a.f49771y));
        }
    }

    public void c(String str) {
        this.f48650a = str;
    }

    public String d() {
        return this.f48650a;
    }

    public String e() {
        return this.f48651b;
    }

    public void d(String str) {
        this.f48651b = str;
    }
}
