package com.anythink.core.common.u.a;

import com.anythink.core.common.d.i;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile b f7741a;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, c> f7742b = new HashMap();

    /* renamed from: com.anythink.core.common.u.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f7743a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f7744b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f7745c;

        public AnonymousClass1(a aVar, c cVar, String str) {
            this.f7743a = aVar;
            this.f7744b = cVar;
            this.f7745c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f7743a.a();
            this.f7744b.f7809e = com.anythink.core.common.v.b.c.a().b(new d(e.aZ + "_" + this.f7745c, this), this.f7744b.a());
        }
    }

    public interface a {
        void a();
    }

    /* renamed from: com.anythink.core.common.u.a.b$b, reason: collision with other inner class name */
    public static class C0083b {

        /* renamed from: a, reason: collision with root package name */
        public long f7802a;

        /* renamed from: b, reason: collision with root package name */
        public a f7803b;

        /* renamed from: c, reason: collision with root package name */
        private final long f7804c = 10000;

        public C0083b(long j2, a aVar) {
            this.f7802a = j2 <= 10000 ? 10000L : j2;
            this.f7803b = aVar;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        private String f7805a;

        /* renamed from: b, reason: collision with root package name */
        private long f7806b;

        /* renamed from: c, reason: collision with root package name */
        private int f7807c = 0;

        /* renamed from: d, reason: collision with root package name */
        private Runnable f7808d;

        /* renamed from: e, reason: collision with root package name */
        private ScheduledFuture<?> f7809e;

        public c(String str, long j2) {
            this.f7805a = str;
            this.f7806b = j2;
        }

        public final void c() {
            this.f7807c = 0;
        }

        public final void d() {
            com.anythink.core.common.v.b.c.a();
            com.anythink.core.common.v.b.c.a(this.f7809e);
            this.f7809e = null;
        }

        public final void b() {
            this.f7807c++;
        }

        public final long a() {
            int i2 = this.f7807c;
            if (i2 == 0) {
                return this.f7806b;
            }
            long jPow = this.f7806b * ((long) Math.pow(2.0d, i2));
            if (jPow <= i.l.f2678c) {
                return jPow;
            }
            this.f7807c = 0;
            return this.f7806b;
        }

        public final void a(long j2) {
            this.f7806b = j2;
        }
    }

    public static b a() {
        if (f7741a == null) {
            synchronized (b.class) {
                try {
                    if (f7741a == null) {
                        f7741a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7741a;
    }

    private void b() {
        Iterator<c> it = this.f7742b.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    private void c(String str) {
        c cVar = this.f7742b.get(str);
        if (cVar == null || cVar.f7808d == null) {
            return;
        }
        cVar.d();
        cVar.f7809e = com.anythink.core.common.v.b.c.a().b(new d(e.aY + "_" + str, cVar.f7808d), cVar.f7806b);
    }

    private void d(String str) {
        c cVar = this.f7742b.get(str);
        if (cVar != null) {
            cVar.d();
        }
    }

    public final void b(String str) {
        c cVar = this.f7742b.get(str);
        if (cVar != null) {
            cVar.c();
        }
    }

    private void a(String str, long j2, a aVar) {
        c cVar = new c(str, j2);
        cVar.f7808d = new AnonymousClass1(aVar, cVar, str);
        this.f7742b.put(str, cVar);
    }

    private void a(String str, long j2) {
        c cVar = this.f7742b.get(str);
        if (cVar != null) {
            cVar.a(j2);
        }
    }

    public final void a(String str) {
        c cVar = this.f7742b.get(str);
        if (cVar != null) {
            cVar.b();
        }
    }

    public final void a(Map<String, C0083b> map) {
        Iterator<c> it = this.f7742b.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        for (Map.Entry<String, C0083b> entry : map.entrySet()) {
            C0083b value = entry.getValue();
            String key = entry.getKey();
            long j2 = value.f7802a;
            a aVar = value.f7803b;
            c cVar = new c(key, j2);
            cVar.f7808d = new AnonymousClass1(aVar, cVar, key);
            this.f7742b.put(key, cVar);
            String key2 = entry.getKey();
            c cVar2 = this.f7742b.get(key2);
            if (cVar2 != null && cVar2.f7808d != null) {
                cVar2.d();
                cVar2.f7809e = com.anythink.core.common.v.b.c.a().b(new d(e.aY + "_" + key2, cVar2.f7808d), cVar2.f7806b);
            }
        }
    }
}
