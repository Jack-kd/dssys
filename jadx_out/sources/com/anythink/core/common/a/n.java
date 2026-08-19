package com.anythink.core.common.a;

import android.text.TextUtils;
import com.anythink.core.common.f.s;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class n {

    /* renamed from: b, reason: collision with root package name */
    private static volatile n f2264b;

    /* renamed from: f, reason: collision with root package name */
    private long f2269f;

    /* renamed from: a, reason: collision with root package name */
    final String f2265a = n.class.getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f2268e = false;

    /* renamed from: g, reason: collision with root package name */
    private long f2270g = 0;

    /* renamed from: c, reason: collision with root package name */
    private s f2266c = s.a(com.anythink.core.common.f.e.a(com.anythink.core.common.d.s.b().g()));

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Integer> f2267d = new HashMap();

    /* renamed from: com.anythink.core.common.a.n$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f2272a;

        public AnonymousClass2(m mVar) {
            this.f2272a = mVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                File file = new File(this.f2272a.b());
                if (file.exists()) {
                    file.delete();
                }
            } catch (Throwable unused) {
            }
            n.this.f2266c.c(this.f2272a.a());
        }
    }

    private n() {
        this.f2269f = 209715200L;
        this.f2269f = com.anythink.core.common.d.s.b().e(4);
    }

    private long e() {
        return this.f2270g;
    }

    private long d() {
        return this.f2269f;
    }

    public final void b() {
        if (this.f2268e) {
            return;
        }
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cY, new Runnable() { // from class: com.anythink.core.common.a.n.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    n.this.f2268e = true;
                    new ArrayList();
                    n nVar = n.this;
                    nVar.f2270g = nVar.f2266c.a();
                    if (n.this.f2270g > n.this.f2269f) {
                        for (m mVar : n.this.f2266c.b()) {
                            try {
                                File file = new File(mVar.b());
                                if (file.exists()) {
                                    file.delete();
                                }
                            } catch (Throwable unused) {
                            }
                            try {
                                if (!TextUtils.isEmpty(mVar.a())) {
                                    String strA = mVar.a();
                                    n.this.f2267d.remove(strA);
                                    com.anythink.core.common.res.b.c.a().a(strA);
                                }
                            } catch (Throwable unused2) {
                            }
                        }
                    }
                } catch (Throwable unused3) {
                }
                n.this.f2268e = false;
            }
        }));
    }

    public final void c() {
        this.f2269f = com.anythink.core.common.d.s.b().e(4);
    }

    public static n a() {
        if (f2264b == null) {
            synchronized (n.class) {
                try {
                    if (f2264b == null) {
                        f2264b = new n();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2264b;
    }

    private synchronized int b(String str) {
        if (this.f2267d.containsKey(str) && this.f2267d.get(str) != null) {
            return this.f2267d.get(str).intValue();
        }
        m mVarA = this.f2266c.a(str);
        if (mVarA == null || mVarA.c() <= 0) {
            return 0;
        }
        File file = new File(mVarA.b());
        if (file.exists() && file.length() >= mVarA.d()) {
            this.f2267d.put(str, Integer.valueOf(mVarA.c()));
            this.f2266c.b(str);
            return mVarA.c();
        }
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cZ, new AnonymousClass2(mVarA)));
        return 0;
    }

    private void a(m mVar) {
        if (mVar == null) {
            return;
        }
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cZ, new AnonymousClass2(mVar)));
    }

    public final void a(String str, String str2, long j2, long j3, int i2, boolean z2) {
        this.f2267d.put(str, Integer.valueOf(i2));
        if (z2) {
            a(str, str2, j2, j3, i2);
        }
    }

    public final void a(final String str, final String str2, final long j2, final long j3, final int i2) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.da, new Runnable() { // from class: com.anythink.core.common.a.n.3
            @Override // java.lang.Runnable
            public final void run() {
                n.this.f2266c.a(str, str2, j2, j3, i2);
            }
        }));
    }

    private m a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f2266c.a(str);
    }

    private synchronized boolean a(String str, int i2) {
        return b(str) >= i2;
    }
}
