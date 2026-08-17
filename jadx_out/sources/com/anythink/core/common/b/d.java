package com.anythink.core.common.b;

import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private int[] f2308a;

    /* renamed from: b, reason: collision with root package name */
    private c f2309b;

    public final int[] a() {
        return this.f2308a;
    }

    public final c b() {
        return this.f2309b;
    }

    public final String toString() {
        return "AnrDynaStrategyItem{range=" + Arrays.toString(this.f2308a) + ", strategy=" + this.f2309b + '}';
    }

    private void a(int[] iArr) {
        this.f2308a = iArr;
    }

    private void a(c cVar) {
        this.f2309b = cVar;
    }

    public static d a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("range");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() >= 2) {
            dVar.f2308a = new int[]{jSONArrayOptJSONArray.optInt(0, 0), jSONArrayOptJSONArray.optInt(1, 0)};
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("st");
        if (jSONObjectOptJSONObject != null) {
            dVar.f2309b = c.a(jSONObjectOptJSONObject);
        }
        return dVar;
    }
}
