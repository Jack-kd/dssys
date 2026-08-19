package com.anythink.core.common.b;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private int f2297a;

    /* renamed from: b, reason: collision with root package name */
    private int f2298b;

    public static b c() {
        b bVar = new b();
        bVar.f2297a = 7;
        bVar.f2298b = 2;
        return bVar;
    }

    public final int a() {
        return this.f2297a;
    }

    public final int b() {
        return this.f2298b;
    }

    private void a(int i2) {
        this.f2297a = i2;
    }

    private void b(int i2) {
        this.f2298b = i2;
    }

    public static b a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        bVar.f2297a = jSONObject.optInt("period_days", 7);
        bVar.f2298b = jSONObject.optInt("max_count", 2);
        return bVar;
    }
}
