package com.anythink.core.d;

import com.anythink.core.common.h.as;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import com.anythink.core.d.a.d;
import com.anythink.core.d.b.c;
import com.anythink.core.e.g;
import com.anythink.core.e.m;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile b f8571a;

    /* renamed from: b, reason: collision with root package name */
    private final c f8572b = new c();

    private b() {
    }

    public static b a() {
        if (f8571a == null) {
            synchronized (b.class) {
                try {
                    if (f8571a == null) {
                        f8571a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8571a;
    }

    public final void b(String str) {
        this.f8572b.b(str);
    }

    public final void a(String str, String str2, int i2, as asVar, by byVar) {
        this.f8572b.a(str, str2, i2, asVar != null ? asVar.b() : null, byVar);
    }

    public final void a(bx bxVar, by byVar) {
        this.f8572b.a(bxVar, byVar);
    }

    public final JSONObject a(String str) {
        return this.f8572b.a(str, 0);
    }

    public final JSONObject a(String str, int i2) {
        return this.f8572b.a(str, 4, i2);
    }

    public final d a(String str, m mVar, g gVar) {
        return this.f8572b.a(str, mVar.ax(), gVar);
    }
}
