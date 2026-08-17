package com.sigmob.sdk.downloader;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.sigmob.sdk.downloader.core.listener.f;
import com.sigmob.sdk.downloader.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    private static final String f37250c = "DownloadContext";

    /* renamed from: d, reason: collision with root package name */
    private static final Executor f37251d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload Serial", false));

    /* renamed from: a, reason: collision with root package name */
    volatile boolean f37252a;

    /* renamed from: b, reason: collision with root package name */
    final com.sigmob.sdk.downloader.b f37253b;

    /* renamed from: e, reason: collision with root package name */
    private final f[] f37254e;

    /* renamed from: f, reason: collision with root package name */
    private final d f37255f;

    /* renamed from: g, reason: collision with root package name */
    private Handler f37256g;

    /* renamed from: com.sigmob.sdk.downloader.a$a, reason: collision with other inner class name */
    public static class C0768a {

        /* renamed from: a, reason: collision with root package name */
        private final a f37261a;

        public C0768a(a aVar) {
            this.f37261a = aVar;
        }

        public C0768a a(f fVar, f fVar2) {
            f[] fVarArr = this.f37261a.f37254e;
            for (int i2 = 0; i2 < fVarArr.length; i2++) {
                if (fVarArr[i2] == fVar) {
                    fVarArr[i2] = fVar2;
                }
            }
            return this;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        final ArrayList<f> f37262a;

        /* renamed from: b, reason: collision with root package name */
        private final d f37263b;

        /* renamed from: c, reason: collision with root package name */
        private com.sigmob.sdk.downloader.b f37264c;

        public b() {
            this(new d());
        }

        public b a(com.sigmob.sdk.downloader.b bVar) {
            this.f37264c = bVar;
            return this;
        }

        public void b(f fVar) {
            this.f37262a.remove(fVar);
        }

        public b(d dVar) {
            this(dVar, new ArrayList());
        }

        public b a(f fVar) {
            int iIndexOf = this.f37262a.indexOf(fVar);
            if (iIndexOf >= 0) {
                this.f37262a.set(iIndexOf, fVar);
                return this;
            }
            this.f37262a.add(fVar);
            return this;
        }

        public b(d dVar, ArrayList<f> arrayList) {
            this.f37263b = dVar;
            this.f37262a = arrayList;
        }

        public a a() {
            return new a((f[]) this.f37262a.toArray(new f[this.f37262a.size()]), this.f37264c, this.f37263b);
        }

        public f a(f.a aVar) {
            if (this.f37263b.f37268a != null) {
                aVar.a(this.f37263b.f37268a);
            }
            if (this.f37263b.f37270c != null) {
                aVar.d(this.f37263b.f37270c.intValue());
            }
            if (this.f37263b.f37271d != null) {
                aVar.e(this.f37263b.f37271d.intValue());
            }
            if (this.f37263b.f37272e != null) {
                aVar.f(this.f37263b.f37272e.intValue());
            }
            if (this.f37263b.f37277j != null) {
                aVar.d(this.f37263b.f37277j.booleanValue());
            }
            if (this.f37263b.f37273f != null) {
                aVar.g(this.f37263b.f37273f.intValue());
            }
            if (this.f37263b.f37274g != null) {
                aVar.b(this.f37263b.f37274g.booleanValue());
            }
            if (this.f37263b.f37275h != null) {
                aVar.b(this.f37263b.f37275h.intValue());
            }
            if (this.f37263b.f37276i != null) {
                aVar.c(this.f37263b.f37276i.booleanValue());
            }
            f fVarA = aVar.a();
            if (this.f37263b.f37278k != null) {
                fVarA.a(this.f37263b.f37278k);
            }
            this.f37262a.add(fVarA);
            return fVarA;
        }

        public f a(String str) {
            if (this.f37263b.f37269b != null) {
                return a(new f.a(str, this.f37263b.f37269b).a(Boolean.TRUE));
            }
            throw new IllegalArgumentException("If you want to bind only with url, you have to provide parentPath on QueueSet!");
        }

        public void a(int i2) {
            for (f fVar : (List) this.f37262a.clone()) {
                if (fVar.c() == i2) {
                    this.f37262a.remove(fVar);
                }
            }
        }
    }

    public static class c extends com.sigmob.sdk.downloader.core.listener.b {

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f37265a;

        /* renamed from: b, reason: collision with root package name */
        private final com.sigmob.sdk.downloader.b f37266b;

        /* renamed from: c, reason: collision with root package name */
        private final a f37267c;

        public c(a aVar, com.sigmob.sdk.downloader.b bVar, int i2) {
            this.f37265a = new AtomicInteger(i2);
            this.f37266b = bVar;
            this.f37267c = aVar;
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
            int iDecrementAndGet = this.f37265a.decrementAndGet();
            this.f37266b.a(this.f37267c, fVar, aVar, exc, iDecrementAndGet);
            if (iDecrementAndGet <= 0) {
                this.f37266b.a(this.f37267c);
                com.sigmob.sdk.downloader.core.c.b(a.f37250c, "taskEnd and remainCount " + iDecrementAndGet);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a_(f fVar) {
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private Map<String, List<String>> f37268a;

        /* renamed from: b, reason: collision with root package name */
        private Uri f37269b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f37270c;

        /* renamed from: d, reason: collision with root package name */
        private Integer f37271d;

        /* renamed from: e, reason: collision with root package name */
        private Integer f37272e;

        /* renamed from: f, reason: collision with root package name */
        private Integer f37273f;

        /* renamed from: g, reason: collision with root package name */
        private Boolean f37274g;

        /* renamed from: h, reason: collision with root package name */
        private Integer f37275h;

        /* renamed from: i, reason: collision with root package name */
        private Boolean f37276i;

        /* renamed from: j, reason: collision with root package name */
        private Boolean f37277j;

        /* renamed from: k, reason: collision with root package name */
        private Object f37278k;

        public Uri b() {
            return this.f37269b;
        }

        public int c() {
            Integer num = this.f37270c;
            if (num == null) {
                return 4096;
            }
            return num.intValue();
        }

        public d d(int i2) {
            this.f37273f = Integer.valueOf(i2);
            return this;
        }

        public int e() {
            Integer num = this.f37271d;
            if (num == null) {
                return 16384;
            }
            return num.intValue();
        }

        public int f() {
            Integer num = this.f37272e;
            if (num == null) {
                return 65536;
            }
            return num.intValue();
        }

        public int g() {
            Integer num = this.f37273f;
            if (num == null) {
                return 2000;
            }
            return num.intValue();
        }

        public int i() {
            Integer num = this.f37275h;
            if (num == null) {
                return 1000;
            }
            return num.intValue();
        }

        public b l() {
            return new b(this);
        }

        public d a(int i2) {
            this.f37270c = Integer.valueOf(i2);
            return this;
        }

        public d b(int i2) {
            this.f37271d = Integer.valueOf(i2);
            return this;
        }

        public d c(int i2) {
            this.f37272e = Integer.valueOf(i2);
            return this;
        }

        public boolean h() {
            Boolean bool = this.f37274g;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public Object j() {
            return this.f37278k;
        }

        public boolean k() {
            Boolean bool = this.f37276i;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public d a(Uri uri) {
            this.f37269b = uri;
            return this;
        }

        public d b(Boolean bool) {
            this.f37274g = bool;
            return this;
        }

        public boolean d() {
            Boolean bool = this.f37277j;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }

        public d a(File file) {
            if (file.isFile()) {
                throw new IllegalArgumentException("parent path only accept directory path");
            }
            this.f37269b = Uri.fromFile(file);
            return this;
        }

        public d a(Boolean bool) {
            this.f37277j = bool;
            return this;
        }

        public d a(Integer num) {
            this.f37275h = num;
            return this;
        }

        public d a(Object obj) {
            this.f37278k = obj;
            return this;
        }

        public d a(String str) {
            return a(new File(str));
        }

        public d a(boolean z2) {
            this.f37276i = Boolean.valueOf(z2);
            return this;
        }

        public Map<String, List<String>> a() {
            return this.f37268a;
        }

        public void a(Map<String, List<String>> map) {
            this.f37268a = map;
        }
    }

    public a(f[] fVarArr, com.sigmob.sdk.downloader.b bVar, d dVar) {
        this.f37252a = false;
        this.f37254e = fVarArr;
        this.f37253b = bVar;
        this.f37255f = dVar;
    }

    public void b(com.sigmob.sdk.downloader.c cVar) {
        a(cVar, false);
    }

    public C0768a c() {
        return new C0768a(this);
    }

    public void d() {
        if (this.f37252a) {
            g.j().a().a((com.sigmob.sdk.downloader.core.a[]) this.f37254e);
        }
        this.f37252a = false;
    }

    public b e() {
        return new b(this.f37255f, new ArrayList(Arrays.asList(this.f37254e))).a(this.f37253b);
    }

    public a(f[] fVarArr, com.sigmob.sdk.downloader.b bVar, d dVar, Handler handler) {
        this(fVarArr, bVar, dVar);
        this.f37256g = handler;
    }

    public void a(com.sigmob.sdk.downloader.c cVar) {
        a(cVar, true);
    }

    public f[] b() {
        return this.f37254e;
    }

    public void a(final com.sigmob.sdk.downloader.c cVar, boolean z2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        com.sigmob.sdk.downloader.core.c.b(f37250c, "start " + z2);
        this.f37252a = true;
        if (this.f37253b != null) {
            cVar = new f.a().a(cVar).a(new c(this, this.f37253b, this.f37254e.length)).a();
        }
        if (z2) {
            final ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, this.f37254e);
            Collections.sort(arrayList);
            a(new Runnable() { // from class: com.sigmob.sdk.downloader.a.1
                @Override // java.lang.Runnable
                public void run() {
                    for (f fVar : arrayList) {
                        if (!a.this.a()) {
                            a.this.a(fVar.s());
                            return;
                        }
                        fVar.c(cVar);
                    }
                }
            });
        } else {
            f.a(this.f37254e, cVar);
        }
        com.sigmob.sdk.downloader.core.c.b(f37250c, "start finish " + z2 + " " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
    }

    public void a(Runnable runnable) {
        f37251d.execute(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2) {
        com.sigmob.sdk.downloader.b bVar = this.f37253b;
        if (bVar == null) {
            return;
        }
        if (!z2) {
            bVar.a(this);
            return;
        }
        if (this.f37256g == null) {
            this.f37256g = new Handler(Looper.getMainLooper());
        }
        this.f37256g.post(new Runnable() { // from class: com.sigmob.sdk.downloader.a.2
            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.f37253b.a(aVar);
            }
        });
    }

    public boolean a() {
        return this.f37252a;
    }
}
