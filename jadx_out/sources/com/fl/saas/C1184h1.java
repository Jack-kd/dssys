package com.fl.saas;

import android.content.Context;
import com.fl.saas.V;
import com.fl.saas.adx.util.FLImageLoader;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.fl.saas.h1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1184h1 {

    /* renamed from: d, reason: collision with root package name */
    private static volatile C1184h1 f30400d;

    /* renamed from: a, reason: collision with root package name */
    private V f30401a;

    /* renamed from: b, reason: collision with root package name */
    private long f30402b = 314572800;

    /* renamed from: c, reason: collision with root package name */
    private Map f30403c = new HashMap();

    /* renamed from: com.fl.saas.h1$a */
    public class a implements Q {
        public a() {
        }

        @Override // com.fl.saas.Q
        public Map a(String str) {
            return C1184h1.this.f30403c;
        }
    }

    private V b(Context context) {
        long availableStorageSpace = FLImageLoader.getAvailableStorageSpace();
        long totalStorageSpace = FLImageLoader.getTotalStorageSpace();
        if (availableStorageSpace < 314572800) {
            this.f30402b = Math.min((long) (totalStorageSpace * 0.005d), (availableStorageSpace * 5) / 10);
        }
        return new V.b(context).a(AbstractC1212r.a(context)).a(new a()).a(this.f30402b).a();
    }

    public static C1184h1 a() {
        if (f30400d == null) {
            synchronized (C1184h1.class) {
                try {
                    if (f30400d == null) {
                        f30400d = new C1184h1();
                    }
                } finally {
                }
            }
        }
        return f30400d;
    }

    public V a(Context context) {
        if (this.f30401a == null && context != null) {
            this.f30401a = b(context);
        }
        return this.f30401a;
    }

    public String a(Context context, C1181g1 c1181g1) {
        String strA = a().a(context.getApplicationContext()).a(c1181g1.a(), false);
        C1225v0.a().a(c1181g1.a(), c1181g1.b());
        return strA;
    }
}
