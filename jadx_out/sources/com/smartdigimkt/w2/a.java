package com.smartdigimkt.w2;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class a {
    public static void a(Object obj, String str) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            com.smartdigimkt.a3.a.a().a(obj, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public static void b(Object obj, String str) throws JSONException {
        try {
            com.smartdigimkt.a3.a.a().b(obj, str);
        } catch (Exception e2) {
            a(obj, e2.getMessage());
        }
    }

    public static void a(Object obj, JSONObject jSONObject) throws JSONException {
        try {
            new JSONObject().put("data", jSONObject);
            com.smartdigimkt.a3.a.a().b(obj, jSONObject.toString());
        } catch (Exception e2) {
            a(obj, e2.getMessage());
        }
    }
}
