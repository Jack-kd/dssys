package com.ubix.ssp.ad.core.monitor.data.c;

import android.content.Context;
import com.ubix.ssp.ad.e.w.h;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f45725a;

    /* renamed from: b, reason: collision with root package name */
    private final c f45726b;

    /* renamed from: c, reason: collision with root package name */
    private a f45727c;

    private b(Context context, String str) {
        this.f45726b = c.a(str);
        this.f45727c = new d(context.getApplicationContext());
    }

    public static b b() {
        b bVar = f45725a;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalStateException("The static method getInstance(Context context, String packageName) should be called before calling getInstance()");
    }

    public int a(String str) {
        this.f45727c.a(this.f45726b.a(), str);
        return this.f45727c.b(this.f45726b.a());
    }

    public int c() {
        return this.f45727c.b(this.f45726b.a());
    }

    public int a(JSONObject jSONObject) {
        int iA = this.f45727c.a(this.f45726b.a(), jSONObject);
        return iA == 0 ? this.f45727c.b(this.f45726b.a()) : iA;
    }

    public static b a(Context context, String str) {
        if (f45725a == null) {
            f45725a = new b(context, str);
        }
        return f45725a;
    }

    public void a() {
        this.f45727c.a(this.f45726b.a(), "DB_DELETE_ALL");
    }

    public String[] a(String str, int i2) {
        try {
            return this.f45727c.a(this.f45726b.a(), i2);
        } catch (Exception e2) {
            h.a(e2);
            return null;
        }
    }
}
