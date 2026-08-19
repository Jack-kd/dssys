package com.sigmob.sdk.downloader.core.download;

import android.os.SystemClock;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class e extends com.sigmob.sdk.downloader.core.b implements Comparable<e> {

    /* renamed from: b, reason: collision with root package name */
    static final int f37507b = 3;

    /* renamed from: j, reason: collision with root package name */
    private static final ExecutorService f37508j = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload Block", false));

    /* renamed from: k, reason: collision with root package name */
    private static final String f37509k = "DownloadCall";

    /* renamed from: c, reason: collision with root package name */
    public final com.sigmob.sdk.downloader.f f37510c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f37511d;

    /* renamed from: e, reason: collision with root package name */
    final ArrayList<f> f37512e;

    /* renamed from: f, reason: collision with root package name */
    volatile d f37513f;

    /* renamed from: g, reason: collision with root package name */
    volatile boolean f37514g;

    /* renamed from: h, reason: collision with root package name */
    volatile boolean f37515h;

    /* renamed from: i, reason: collision with root package name */
    volatile Thread f37516i;

    /* renamed from: l, reason: collision with root package name */
    private final j f37517l;

    private e(com.sigmob.sdk.downloader.f fVar, boolean z2, j jVar) {
        this(fVar, z2, new ArrayList(), jVar);
    }

    private void h() {
        this.f37517l.d(this.f37510c.c());
        com.sigmob.sdk.downloader.g.j().b().a().a_(this.f37510c);
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e eVar) {
        return eVar.f() - f();
    }

    public b b(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        return new b(this.f37510c, cVar);
    }

    public void c(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        f.c.a(this.f37510c, cVar);
    }

    public boolean d() {
        return this.f37514g;
    }

    public boolean e() {
        return this.f37515h;
    }

    public int f() {
        return this.f37510c.G();
    }

    public File g() {
        return this.f37510c.m();
    }

    public e(com.sigmob.sdk.downloader.f fVar, boolean z2, ArrayList<f> arrayList, j jVar) {
        super("download call: " + fVar.c());
        this.f37510c = fVar;
        this.f37511d = z2;
        this.f37512e = arrayList;
        this.f37517l = jVar;
    }

    public a a(com.sigmob.sdk.downloader.core.breakpoint.c cVar, long j2) {
        return new a(this.f37510c, cVar, j2);
    }

    @Override // com.sigmob.sdk.downloader.core.b
    public void b() {
        com.sigmob.sdk.downloader.g.j().a().c(this);
        com.sigmob.sdk.downloader.core.c.b(f37509k, "call is finished " + this.f37510c.c());
    }

    public boolean c() {
        synchronized (this) {
            try {
                if (this.f37514g) {
                    return true;
                }
                if (this.f37515h) {
                    return false;
                }
                this.f37514g = true;
                long jUptimeMillis = SystemClock.uptimeMillis();
                com.sigmob.sdk.downloader.g.j().a().b(this);
                d dVar = this.f37513f;
                if (dVar != null) {
                    dVar.l();
                }
                Object[] array = this.f37512e.toArray();
                if (array != null && array.length != 0) {
                    for (Object obj : array) {
                        if (obj instanceof f) {
                            ((f) obj).b();
                        }
                    }
                } else if (this.f37516i != null) {
                    com.sigmob.sdk.downloader.core.c.b(f37509k, "interrupt thread with cancel operation because of chains are not running " + this.f37510c.c());
                    this.f37516i.interrupt();
                }
                if (dVar != null) {
                    dVar.a().a();
                }
                com.sigmob.sdk.downloader.core.c.b(f37509k, "cancel task " + this.f37510c.c() + " consume: " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public d a(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        return new d(com.sigmob.sdk.downloader.g.j().f().a(this.f37510c, cVar, this.f37517l));
    }

    public static e a(com.sigmob.sdk.downloader.f fVar, boolean z2, j jVar) {
        return new e(fVar, z2, jVar);
    }

    public Future<?> a(f fVar) {
        return f37508j.submit(fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0167 A[EDGE_INSN: B:84:0x0167->B:52:0x0167 BREAK  A[LOOP:0: B:3:0x0013->B:88:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0167 A[EDGE_INSN: B:85:0x0167->B:52:0x0167 BREAK  A[LOOP:0: B:3:0x0013->B:88:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[LOOP:0: B:3:0x0013->B:88:?, LOOP_END, SYNTHETIC] */
    @Override // com.sigmob.sdk.downloader.core.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.downloader.core.download.e.a():void");
    }

    public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar, b bVar, com.sigmob.sdk.downloader.core.cause.b bVar2) {
        com.sigmob.sdk.downloader.core.c.a(this.f37510c, cVar, bVar.e(), bVar.d());
        com.sigmob.sdk.downloader.g.j().b().a().a(this.f37510c, cVar, bVar2);
    }

    public void a(d dVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) throws InterruptedException {
        int iG = cVar.g();
        ArrayList arrayList = new ArrayList(cVar.g());
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < iG; i2++) {
            com.sigmob.sdk.downloader.core.breakpoint.a aVarB = cVar.b(i2);
            if (!com.sigmob.sdk.downloader.core.c.a(aVarB.a(), aVarB.d())) {
                com.sigmob.sdk.downloader.core.c.a(aVarB);
                f fVarA = f.a(i2, this.f37510c, cVar, dVar, this.f37517l);
                arrayList.add(fVarA);
                arrayList2.add(Integer.valueOf(fVarA.e()));
            }
        }
        if (this.f37514g) {
            return;
        }
        dVar.a().a(arrayList2);
        a(arrayList);
    }

    private void a(d dVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        if (aVar == com.sigmob.sdk.downloader.core.cause.a.CANCELED) {
            throw new IllegalAccessError("can't recognize cancelled on here");
        }
        synchronized (this) {
            try {
                if (this.f37514g) {
                    return;
                }
                this.f37515h = true;
                this.f37517l.a(this.f37510c.c(), aVar, exc);
                if (aVar == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
                    this.f37517l.g(this.f37510c.c());
                    com.sigmob.sdk.downloader.g.j().f().a(dVar.a(), this.f37510c);
                }
                com.sigmob.sdk.downloader.g.j().b().a().a(this.f37510c, aVar, exc);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.sigmob.sdk.downloader.core.b
    public void a(InterruptedException interruptedException) {
    }

    public void a(List<f> list) throws InterruptedException {
        ArrayList arrayList = new ArrayList(list.size());
        int i2 = 0;
        try {
            Iterator<f> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            this.f37512e.addAll(list);
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                Future future = (Future) obj;
                if (!future.isDone()) {
                    try {
                        future.get();
                    } catch (CancellationException | ExecutionException unused) {
                    }
                }
            }
            this.f37512e.removeAll(list);
        } catch (Throwable th) {
            try {
                int size2 = arrayList.size();
                while (i2 < size2) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    ((Future) obj2).cancel(true);
                }
                throw th;
            } finally {
                this.f37512e.removeAll(list);
            }
        }
    }

    public boolean a(com.sigmob.sdk.downloader.f fVar) {
        return this.f37510c.equals(fVar);
    }
}
