package com.anythink.core.common.b;

import com.anythink.core.e.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private int[] f2292a;

    /* renamed from: b, reason: collision with root package name */
    private int f2293b;

    /* renamed from: c, reason: collision with root package name */
    private int f2294c;

    /* renamed from: d, reason: collision with root package name */
    private h f2295d;

    /* renamed from: e, reason: collision with root package name */
    private String f2296e;

    private int e() {
        return this.f2293b;
    }

    public final int[] a() {
        return this.f2292a;
    }

    public final int b() {
        return this.f2294c;
    }

    public final h c() {
        return this.f2295d;
    }

    public final String d() {
        String str = this.f2296e;
        return str != null ? str : "";
    }

    public final String toString() {
        return d();
    }

    private void a(int[] iArr) {
        this.f2292a = iArr;
    }

    private void b(int i2) {
        this.f2294c = i2;
    }

    private void a(int i2) {
        this.f2293b = i2;
    }

    private void a(h hVar) {
        this.f2295d = hVar;
    }

    private static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        a aVar = new a();
        aVar.f2296e = jSONObject.toString();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("range");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() >= 2) {
            aVar.f2292a = new int[]{jSONArrayOptJSONArray.optInt(0, 0), jSONArrayOptJSONArray.optInt(1, 0)};
        }
        aVar.f2293b = jSONObject.optInt("max_req_thread", 0);
        aVar.f2294c = jSONObject.optInt("share_pl_sw", 2);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(b.a.ae);
        if (jSONObjectOptJSONObject != null) {
            aVar.f2295d = h.a(jSONObjectOptJSONObject);
        }
        return aVar;
    }

    public static List<a> a(JSONArray jSONArray) {
        a aVar;
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject == null) {
                aVar = null;
            } else {
                aVar = new a();
                aVar.f2296e = jSONObjectOptJSONObject.toString();
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("range");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() >= 2) {
                    aVar.f2292a = new int[]{jSONArrayOptJSONArray.optInt(0, 0), jSONArrayOptJSONArray.optInt(1, 0)};
                }
                aVar.f2293b = jSONObjectOptJSONObject.optInt("max_req_thread", 0);
                aVar.f2294c = jSONObjectOptJSONObject.optInt("share_pl_sw", 2);
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(b.a.ae);
                if (jSONObjectOptJSONObject2 != null) {
                    aVar.f2295d = h.a(jSONObjectOptJSONObject2);
                }
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }
}
