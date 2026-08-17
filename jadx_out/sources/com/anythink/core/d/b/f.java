package com.anythink.core.d.b;

import com.anythink.core.d.b.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final double f8613a = -1.0d;

    /* renamed from: b, reason: collision with root package name */
    private static final String f8614b = "UserValueCalculator";

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f8615c = {"MAX", "MIN", "AVG", "SUM", "COUNT"};

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f8616d = {"=", ">", "<", "!=", ">=", "<="};

    /* renamed from: e, reason: collision with root package name */
    private static final String[] f8617e = {"OR", "AND"};

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f8618f = {"DESC", "ASC"};

    /* renamed from: g, reason: collision with root package name */
    private final e f8619g;

    public f(e eVar) {
        this.f8619g = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double a(int r22, java.lang.String r23) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.d.b.f.a(int, java.lang.String):double");
    }

    private static JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("f", 2);
            jSONObject.put("q_f", "price");
            JSONArray jSONArray = new JSONArray();
            jSONArray.put("type");
            jSONObject.put("w_c_f", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0);
            jSONObject.put("w_c_o", jSONArray2);
            JSONArray jSONArray3 = new JSONArray();
            jSONArray3.put("4");
            jSONObject.put("w_c_v", jSONArray3);
            jSONObject.put("o_f", e.a.f8607i);
            jSONObject.put("o", 0);
            jSONObject.put("l", 3);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
