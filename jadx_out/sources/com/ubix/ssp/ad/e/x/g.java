package com.ubix.ssp.ad.e.x;

import com.anythink.core.common.m.AbstractC1114b;
import com.ubix.ssp.ad.e.a0.h;
import com.ubix.ssp.ad.e.a0.n;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.x.a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static ExecutorService f47417a;

    /* renamed from: b, reason: collision with root package name */
    public static ExecutorService f47418b;

    /* renamed from: c, reason: collision with root package name */
    private static g f47419c;

    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.RequestExecuteThread");
        }
    }

    public class b implements ThreadFactory {
        public b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.ReportExecuteThread");
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47422a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f47423b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f47424c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.x.a f47425d;

        public c(String str, Map map, Map map2, com.ubix.ssp.ad.e.x.a aVar) {
            this.f47422a = str;
            this.f47423b = map;
            this.f47424c = map2;
            this.f47425d = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ubix.ssp.ad.e.x.d dVarA = new com.ubix.ssp.ad.e.x.c().a(g.this.a(this.f47422a, (Map<String, String>) this.f47423b), this.f47424c);
            if (dVarA.f47411c == 200) {
                this.f47425d.d(dVarA);
            } else {
                this.f47425d.a(dVarA);
            }
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47427a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ HashMap f47428b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.x.a f47429c;

        public d(String str, HashMap map, com.ubix.ssp.ad.e.x.a aVar) {
            this.f47427a = str;
            this.f47428b = map;
            this.f47429c = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.ubix.ssp.ad.e.x.d dVarA = new com.ubix.ssp.ad.e.x.c().a(this.f47427a, this.f47428b);
                if (dVarA.f47411c == 200) {
                    this.f47429c.d(dVarA);
                } else {
                    this.f47429c.a(dVarA);
                }
            } catch (Throwable unused) {
                this.f47429c.a((com.ubix.ssp.ad.e.x.d) null);
            }
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.y.a.d f47431a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f47432b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f47433c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.x.a f47434d;

        public e(com.ubix.ssp.ad.e.y.a.d dVar, String str, Map map, com.ubix.ssp.ad.e.x.a aVar) {
            this.f47431a = dVar;
            this.f47432b = str;
            this.f47433c = map;
            this.f47434d = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u.a()) {
                u.f("req： " + com.ubix.ssp.ad.e.a0.e.a(this.f47431a));
                u.f("reqBase： " + n.b().b(com.ubix.ssp.ad.e.y.c.f.a(this.f47431a)));
                u.f("reqUrl： " + this.f47432b);
            }
            com.ubix.ssp.ad.e.x.d dVarA = new com.ubix.ssp.ad.e.x.c().a(this.f47432b, com.ubix.ssp.ad.e.y.c.f.a(this.f47431a), this.f47433c);
            if (dVarA.f47411c == 200) {
                try {
                    com.ubix.ssp.ad.e.y.a.e eVarA = com.ubix.ssp.ad.e.y.a.e.a(dVarA.f47414f);
                    if (u.a()) {
                        u.f(com.ubix.ssp.ad.e.a0.e.a(eVarA));
                    }
                    this.f47434d.a(eVarA);
                    return;
                } catch (Throwable unused) {
                }
            }
            this.f47434d.a(dVarA);
        }
    }

    public class f implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private String f47436a;

        /* renamed from: b, reason: collision with root package name */
        private com.ubix.ssp.ad.e.x.a<com.ubix.ssp.ad.e.x.d> f47437b;

        /* renamed from: c, reason: collision with root package name */
        private int f47438c = 1;

        public f(String str, com.ubix.ssp.ad.e.x.a<com.ubix.ssp.ad.e.x.d> aVar) {
            this.f47436a = str;
            this.f47437b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.ubix.ssp.ad.e.x.d dVarA = new com.ubix.ssp.ad.e.x.c().a(this.f47436a, 5000);
                if (dVarA.f47411c == 200) {
                    this.f47437b.d(dVarA);
                    return;
                }
                u.c("--------reward uploadAction retry  " + this.f47438c);
                int i2 = this.f47438c + (-1);
                this.f47438c = i2;
                if (i2 < 0) {
                    this.f47437b.a(dVarA);
                } else {
                    run();
                }
            } catch (Throwable unused) {
                this.f47437b.a((com.ubix.ssp.ad.e.x.d) null);
            }
        }
    }

    public g() {
        a();
    }

    public static g b() {
        g gVar = f47419c;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g();
        f47419c = gVar2;
        return gVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, Map<String, String> map) {
        if (map == null) {
            return str;
        }
        String str2 = str + "?";
        for (String str3 : map.keySet()) {
            str2 = str2 + str3 + "=" + map.get(str3) + "&";
        }
        return str2.substring(0, str2.length() - 1);
    }

    public void b(String str, com.ubix.ssp.ad.e.x.a<com.ubix.ssp.ad.e.x.d> aVar) {
        f47418b.execute(new f(str, aVar));
    }

    private HashMap<String, String> a(String str, String str2) {
        HashMap<String, String> map = new HashMap<>();
        map.put(AbstractC1114b.f5589g, "application/octet-stream");
        map.put("X-U-Authorization", h.a(str2 + "+" + com.ubix.ssp.ad.d.b.f45810q + "+" + str, "75eba40d7fa850ee"));
        map.put("User-Agent", com.ubix.ssp.ad.d.b.f45809p);
        return map;
    }

    private void b(String str, Map<String, String> map, Map<String, String> map2, com.ubix.ssp.ad.e.x.a aVar) {
        f47417a.execute(new c(str, map, map2, aVar));
    }

    private void a() {
        ExecutorService executorService = f47417a;
        if (executorService == null || executorService.isTerminated() || f47417a.isShutdown()) {
            f47417a = new ThreadPoolExecutor(3, 5, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());
        }
        ExecutorService executorService2 = f47418b;
        if (executorService2 == null || executorService2.isTerminated() || f47418b.isShutdown()) {
            f47418b = new ThreadPoolExecutor(3, 5, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b());
        }
    }

    public void a(String str, a.c cVar) {
        HashMap<String, String> map = new HashMap<>();
        map.put("User-Agent", com.ubix.ssp.ad.d.b.f45809p);
        a(str, map, (com.ubix.ssp.ad.e.x.a<com.ubix.ssp.ad.e.x.d>) cVar);
    }

    public void a(String str, com.ubix.ssp.ad.e.x.a aVar) {
        a(str, (HashMap<String, String>) null, (com.ubix.ssp.ad.e.x.a<com.ubix.ssp.ad.e.x.d>) aVar);
    }

    private void a(String str, com.ubix.ssp.ad.e.y.a.d dVar, Map<String, String> map, com.ubix.ssp.ad.e.x.a aVar) {
        f47417a.execute(new e(dVar, str, map, aVar));
    }

    public void a(String str, String str2, com.ubix.ssp.ad.e.y.a.d dVar, com.ubix.ssp.ad.e.x.a aVar) {
        a(str, dVar, a(str2, dVar.f47614b), aVar);
    }

    private void a(String str, HashMap<String, String> map, com.ubix.ssp.ad.e.x.a<com.ubix.ssp.ad.e.x.d> aVar) {
        f47418b.execute(new d(str, map, aVar));
    }

    public void a(String str, Map<String, String> map, com.ubix.ssp.ad.e.x.a aVar) {
        HashMap map2 = new HashMap();
        map2.put("User-Agent", com.ubix.ssp.ad.d.b.f45809p);
        a(str, map, map2, aVar);
    }

    public void a(String str, Map<String, String> map, Map<String, String> map2, com.ubix.ssp.ad.e.x.a aVar) {
        b(str, map, map2, aVar);
    }
}
