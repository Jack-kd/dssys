package com.ubix.ssp.ad.e.x;

import android.content.Context;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.x.a;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f47406a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final String f47407b = "b";

    private b(Context context) {
    }

    public static b a(Context context) {
        if (f47406a == null) {
            synchronized (b.class) {
                try {
                    if (f47406a == null) {
                        f47406a = new b(context);
                    }
                } finally {
                }
            }
        }
        return f47406a;
    }

    public void a(String str, a.f fVar) {
        g.b().a(f.a(str), fVar);
        if (u.a()) {
            u.e(f47407b, "appId:" + str + "loadInitUrl: " + f.a(str));
        }
    }

    public void a(String str, com.ubix.ssp.ad.e.y.a.d dVar, a.e eVar) {
        g.b().a(f.e(), str, dVar, eVar);
        if (u.a()) {
            u.e(f47407b, "slot id:" + str + "   loadAdUrl: " + f.e());
        }
    }
}
