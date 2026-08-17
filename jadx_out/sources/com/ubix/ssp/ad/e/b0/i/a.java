package com.ubix.ssp.ad.e.b0.i;

import android.os.Handler;
import android.os.Looper;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f46759a = null;

    /* renamed from: b, reason: collision with root package name */
    private static Handler f46760b = null;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f46761c = true;

    /* renamed from: d, reason: collision with root package name */
    private LinkedHashMap<Integer, b> f46762d = new LinkedHashMap<>();

    /* renamed from: com.ubix.ssp.ad.e.b0.i.a$a, reason: collision with other inner class name */
    public class RunnableC0817a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46763a;

        public RunnableC0817a(int i2) {
            this.f46763a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f46761c) {
                return;
            }
            a.this.c();
            a.this.a(this.f46763a);
        }
    }

    public static synchronized a b() {
        try {
            if (f46759a == null) {
                f46759a = new a();
                f46760b = new Handler(Looper.getMainLooper());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f46759a;
    }

    public void a(int i2) {
        f46760b.postDelayed(new RunnableC0817a(i2), 150L);
    }

    public boolean c() {
        try {
            for (Map.Entry entry : (Map.Entry[]) this.f46762d.entrySet().toArray(new Map.Entry[0])) {
                b bVar = (b) entry.getValue();
                if (bVar != null) {
                    if (bVar.a()) {
                        bVar.b();
                    } else {
                        bVar.c();
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void a(int i2, b bVar) {
        synchronized (this) {
            try {
                if (!this.f46762d.containsKey(Integer.valueOf(i2))) {
                    this.f46762d.put(Integer.valueOf(i2), bVar);
                }
                if (this.f46762d.size() > 0 && f46761c) {
                    f46761c = false;
                    a(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(int i2) {
        synchronized (this) {
            try {
                if (this.f46762d.containsKey(Integer.valueOf(i2))) {
                    this.f46762d.remove(Integer.valueOf(i2));
                }
                if (this.f46762d.size() == 0) {
                    f46761c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
