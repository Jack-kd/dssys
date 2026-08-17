package com.ubix.ssp.ad.e.a0.y.e;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class c implements com.ubix.ssp.ad.e.a0.y.e.a {

    /* renamed from: a, reason: collision with root package name */
    private static c f46536a;

    /* renamed from: b, reason: collision with root package name */
    private static ScheduledExecutorService f46537b;

    /* renamed from: c, reason: collision with root package name */
    private C0813c f46538c = new C0813c();

    /* renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<Integer, com.ubix.ssp.ad.e.a0.y.e.b> f46539d = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private b f46540e = new b();

    public final class b extends Handler {
        public b() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            try {
                com.ubix.ssp.ad.e.a0.y.e.a aVar = (com.ubix.ssp.ad.e.a0.y.e.a) message.obj;
                if (aVar != null) {
                    int i2 = message.what;
                    if (i2 == 1) {
                        aVar.a(message.arg1);
                    } else if (i2 == 2 || i2 == 3) {
                        aVar.b(message.arg1);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.a0.y.e.c$c, reason: collision with other inner class name */
    public class C0813c {

        /* renamed from: a, reason: collision with root package name */
        private int f46542a;

        /* renamed from: b, reason: collision with root package name */
        private float f46543b;

        /* renamed from: c, reason: collision with root package name */
        private int f46544c;

        public C0813c() {
            this.f46542a = 100;
            this.f46543b = 0.5f;
            this.f46544c = -1;
        }

        public C0813c(float f2, int i2, int i3) {
            this.f46543b = f2;
            this.f46542a = i2;
            this.f46544c = i3;
        }
    }

    public final class d implements Runnable {
        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                for (Map.Entry entry : (Map.Entry[]) c.this.f46539d.entrySet().toArray(new Map.Entry[0])) {
                    com.ubix.ssp.ad.e.a0.y.e.b bVar = (com.ubix.ssp.ad.e.a0.y.e.b) entry.getValue();
                    if (bVar != null) {
                        bVar.b();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private c() {
        ScheduledExecutorService scheduledExecutorService = f46537b;
        if (scheduledExecutorService == null || scheduledExecutorService.isTerminated()) {
            f46537b = Executors.newScheduledThreadPool(1);
        }
    }

    public static c a() {
        if (f46536a == null) {
            f46536a = new c();
        }
        return f46536a;
    }

    @Override // com.ubix.ssp.ad.e.a0.y.e.a
    public void b(int i2) {
        ConcurrentHashMap<Integer, com.ubix.ssp.ad.e.a0.y.e.b> concurrentHashMap = this.f46539d;
        if (concurrentHashMap != null) {
            com.ubix.ssp.ad.e.a0.y.e.b bVar = concurrentHashMap.get(Integer.valueOf(i2));
            this.f46539d.remove(Integer.valueOf(i2));
            if (bVar == null || bVar.a() == null) {
                return;
            }
            Message message = new Message();
            message.what = 2;
            message.obj = bVar.a();
            message.arg1 = i2;
            this.f46540e.sendMessage(message);
        }
    }

    public void c(int i2) {
        try {
            ConcurrentHashMap<Integer, com.ubix.ssp.ad.e.a0.y.e.b> concurrentHashMap = this.f46539d;
            if (concurrentHashMap == null) {
                return;
            }
            concurrentHashMap.remove(Integer.valueOf(i2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public c a(float f2) {
        this.f46538c.f46543b = f2;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.a0.y.e.a
    public void a(int i2) {
        ConcurrentHashMap<Integer, com.ubix.ssp.ad.e.a0.y.e.b> concurrentHashMap = this.f46539d;
        if (concurrentHashMap != null) {
            com.ubix.ssp.ad.e.a0.y.e.b bVar = concurrentHashMap.get(Integer.valueOf(i2));
            this.f46539d.remove(Integer.valueOf(i2));
            if (bVar == null || bVar.a() == null) {
                return;
            }
            Message message = new Message();
            message.what = 1;
            message.obj = bVar.a();
            message.arg1 = i2;
            this.f46540e.sendMessage(message);
        }
    }

    public void a(int i2, View view, com.ubix.ssp.ad.e.a0.y.e.a aVar) throws Throwable {
        Throwable th;
        c cVar;
        synchronized (this) {
            try {
                try {
                    if (this.f46539d == null) {
                        try {
                            this.f46539d = new ConcurrentHashMap<>();
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    if (this.f46539d.get(Integer.valueOf(i2)) == null) {
                        cVar = this;
                        cVar.f46539d.put(Integer.valueOf(i2), new com.ubix.ssp.ad.e.a0.y.e.b(i2, view, this.f46538c.f46543b, this.f46538c.f46544c, aVar, cVar));
                    } else {
                        cVar = this;
                    }
                    if (((ScheduledThreadPoolExecutor) f46537b).getTaskCount() == 0) {
                        f46537b.scheduleAtFixedRate(new d(), 0L, cVar.f46538c.f46542a, TimeUnit.MILLISECONDS);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }
}
