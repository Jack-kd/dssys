package com.anythink.core.common.h;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f4268a;

    /* renamed from: b, reason: collision with root package name */
    public long f4269b;

    private void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f4268a = jSONObject.optInt("number");
            this.f4269b = jSONObject.optLong("loadTime");
        } catch (Exception unused) {
        }
    }

    public final String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("number", this.f4268a);
            jSONObject.put("loadTime", this.f4269b);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }
}
