package com.anythink.core.e;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f8793a;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, String> f8794b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, String> f8795c;

    /* renamed from: d, reason: collision with root package name */
    final String f8796d = e.class.getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    private Map<String, String> f8797e;

    /* renamed from: f, reason: collision with root package name */
    private int f8798f;

    /* renamed from: g, reason: collision with root package name */
    private int f8799g;

    public final void a(JSONObject jSONObject, String str) {
        String strOptString = jSONObject.optString("cached");
        Map<String, String> mapBa = ba();
        if (TextUtils.isEmpty(strOptString) || this.f8793a == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(strOptString);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString2 = jSONObject2.optString(next);
                String str2 = mapBa.get(next);
                jSONObject.put(next, this.f8793a.opt(next));
                if (!TextUtils.equals(strOptString2, str2)) {
                    com.anythink.core.common.u.f.a(str, TextUtils.isEmpty(str) ? "1" : "2", next, strOptString2, str2);
                    jSONObject2.put(next, str2);
                }
            }
            jSONObject.put("cached", jSONObject2.toString());
        } catch (Throwable unused) {
        }
    }

    public final JSONObject aY() {
        return this.f8793a;
    }

    public final boolean aZ() {
        Map<String, String> map = this.f8795c;
        return map == null || map.size() == 0;
    }

    public final void b(JSONObject jSONObject) {
        this.f8793a = jSONObject;
    }

    public final synchronized Map<String, String> ba() {
        try {
            if (this.f8797e == null) {
                HashMap map = new HashMap();
                this.f8797e = map;
                Map<String, String> map2 = this.f8794b;
                if (map2 != null) {
                    map.putAll(map2);
                }
                Map<String, String> map3 = this.f8795c;
                if (map3 != null) {
                    this.f8797e.putAll(map3);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f8797e;
    }

    public final boolean bb() {
        return this.f8799g > 0;
    }

    public final int bc() {
        return this.f8798f;
    }

    public final void c(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("cached");
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        this.f8794b = map;
    }

    public final void d(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(com.anythink.core.common.m.f.aq);
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        this.f8795c = map;
    }

    public final void e(int i2) {
        this.f8799g = i2;
    }

    public final void f(int i2) {
        this.f8798f = i2;
    }

    private Map<String, String> b() {
        return this.f8795c;
    }

    private Map<String, String> a() {
        return this.f8794b;
    }
}
