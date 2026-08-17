package com.sigmob.sdk.downloader.core.file;

import android.net.Uri;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: n, reason: collision with root package name */
    private static final String f37564n = "MultiPointOutputStream";

    /* renamed from: o, reason: collision with root package name */
    private static final ExecutorService f37565o = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload file io", false));

    /* renamed from: a, reason: collision with root package name */
    final SparseArray<com.sigmob.sdk.downloader.core.file.a> f37566a;

    /* renamed from: b, reason: collision with root package name */
    final SparseArray<AtomicLong> f37567b;

    /* renamed from: c, reason: collision with root package name */
    final AtomicLong f37568c;

    /* renamed from: d, reason: collision with root package name */
    final AtomicLong f37569d;

    /* renamed from: e, reason: collision with root package name */
    boolean f37570e;

    /* renamed from: f, reason: collision with root package name */
    volatile Future f37571f;

    /* renamed from: g, reason: collision with root package name */
    volatile Thread f37572g;

    /* renamed from: h, reason: collision with root package name */
    final SparseArray<Thread> f37573h;

    /* renamed from: i, reason: collision with root package name */
    IOException f37574i;

    /* renamed from: j, reason: collision with root package name */
    ArrayList<Integer> f37575j;

    /* renamed from: k, reason: collision with root package name */
    List<Integer> f37576k;

    /* renamed from: l, reason: collision with root package name */
    final a f37577l;

    /* renamed from: m, reason: collision with root package name */
    a f37578m;

    /* renamed from: p, reason: collision with root package name */
    private final int f37579p;

    /* renamed from: q, reason: collision with root package name */
    private final int f37580q;

    /* renamed from: r, reason: collision with root package name */
    private final int f37581r;

    /* renamed from: s, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f37582s;

    /* renamed from: t, reason: collision with root package name */
    private final f f37583t;

    /* renamed from: u, reason: collision with root package name */
    private final j f37584u;

    /* renamed from: v, reason: collision with root package name */
    private final boolean f37585v;

    /* renamed from: w, reason: collision with root package name */
    private final boolean f37586w;

    /* renamed from: x, reason: collision with root package name */
    private final Runnable f37587x;

    /* renamed from: y, reason: collision with root package name */
    private String f37588y;

    /* renamed from: z, reason: collision with root package name */
    private volatile boolean f37589z;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f37592a;

        /* renamed from: b, reason: collision with root package name */
        List<Integer> f37593b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        List<Integer> f37594c = new ArrayList();

        public boolean a() {
            return this.f37592a || this.f37594c.size() > 0;
        }
    }

    public d(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, j jVar) {
        this(fVar, cVar, jVar, null);
    }

    private void m() {
        if (this.f37588y != null || this.f37583t.m() == null) {
            return;
        }
        this.f37588y = this.f37583t.m().getAbsolutePath();
    }

    public void a() {
        f37565o.execute(new Runnable() { // from class: com.sigmob.sdk.downloader.core.file.d.2
            @Override // java.lang.Runnable
            public void run() {
                d.this.b();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00d3 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #5 {, blocks: (B:3:0x0001, B:7:0x0007, B:12:0x000e, B:17:0x0022, B:18:0x0028, B:20:0x002e, B:21:0x0034, B:26:0x0040, B:27:0x006d, B:43:0x00c7, B:44:0x00cd, B:46:0x00d3, B:47:0x00d9, B:50:0x00e2, B:51:0x010f, B:54:0x011e, B:55:0x0124, B:57:0x012a, B:58:0x0130, B:61:0x0139, B:62:0x0166, B:63:0x0173, B:14:0x0016, B:30:0x007c, B:32:0x0080, B:34:0x0088, B:37:0x00a0, B:41:0x00b5, B:42:0x00c6, B:36:0x009d), top: B:75:0x0001, inners: #0, #1, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void b() {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.downloader.core.file.d.b():void");
    }

    public synchronized void c(int i2) throws IOException {
        com.sigmob.sdk.downloader.core.file.a aVar = this.f37566a.get(i2);
        if (aVar != null) {
            aVar.a();
            synchronized (this.f37567b) {
                this.f37566a.remove(i2);
                this.f37567b.remove(i2);
            }
            com.sigmob.sdk.downloader.core.c.b(f37564n, "OutputStream close task[" + this.f37583t.c() + "] block[" + i2 + "]");
        }
    }

    public void d() throws IOException {
        IOException iOException = this.f37574i;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f37571f == null) {
            synchronized (this.f37587x) {
                try {
                    if (this.f37571f == null) {
                        this.f37571f = f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public synchronized com.sigmob.sdk.downloader.core.file.a e(int i2) throws IOException {
        com.sigmob.sdk.downloader.core.file.a aVar;
        Uri uriH;
        try {
            aVar = this.f37566a.get(i2);
            if (aVar == null) {
                boolean zB = com.sigmob.sdk.downloader.core.c.b(this.f37583t.h());
                if (zB) {
                    File fileM = this.f37583t.m();
                    if (fileM == null) {
                        throw new FileNotFoundException("Filename is not ready!");
                    }
                    File fileL = this.f37583t.l();
                    if (!fileL.exists() && !fileL.mkdirs()) {
                        throw new IOException("Create parent folder failed!");
                    }
                    if (fileM.createNewFile()) {
                        com.sigmob.sdk.downloader.core.c.b(f37564n, "Create new file: " + fileM.getName());
                    }
                    uriH = Uri.fromFile(fileM);
                } else {
                    uriH = this.f37583t.h();
                }
                com.sigmob.sdk.downloader.core.file.a aVarA = g.j().e().a(g.j().h(), uriH, this.f37579p);
                if (this.f37585v) {
                    long jC = this.f37582s.b(i2).c();
                    if (jC > 0) {
                        aVarA.a(jC);
                        com.sigmob.sdk.downloader.core.c.b(f37564n, "Create output stream write from (" + this.f37583t.c() + ") block(" + i2 + ") " + jC);
                    }
                }
                if (this.f37589z) {
                    this.f37584u.f(this.f37583t.c());
                }
                if (!this.f37582s.b() && this.f37589z && this.f37586w) {
                    long j2 = this.f37582s.j();
                    if (zB) {
                        File fileM2 = this.f37583t.m();
                        long length = j2 - fileM2.length();
                        if (length > 0) {
                            a(new StatFs(fileM2.getAbsolutePath()), length);
                            aVarA.b(j2);
                        }
                    } else {
                        aVarA.b(j2);
                    }
                }
                synchronized (this.f37567b) {
                    this.f37566a.put(i2, aVarA);
                    this.f37567b.put(i2, new AtomicLong());
                }
                this.f37589z = false;
                aVar = aVarA;
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    public Future f() {
        return f37565o.submit(this.f37587x);
    }

    public void g() {
        try {
            h();
        } catch (IOException e2) {
            this.f37574i = e2;
            com.sigmob.sdk.downloader.core.c.a(f37564n, "Sync to breakpoint-store for task[" + this.f37583t.c() + "] failed with cause: " + e2);
        }
    }

    public void h() throws IOException {
        com.sigmob.sdk.downloader.core.c.b(f37564n, "OutputStream start flush looper task[" + this.f37583t.c() + "] with syncBufferIntervalMills[" + this.f37581r + "] syncBufferSize[" + this.f37580q + "]");
        this.f37572g = Thread.currentThread();
        long j2 = (long) this.f37581r;
        l();
        while (true) {
            a(j2);
            a(this.f37578m);
            if (this.f37578m.a()) {
                com.sigmob.sdk.downloader.core.c.b(f37564n, "runSync state change isNoMoreStream[" + this.f37578m.f37592a + "] newNoMoreStreamBlockList[" + this.f37578m.f37594c + "]");
                if (this.f37568c.get() > 0) {
                    l();
                }
                for (Integer num : this.f37578m.f37594c) {
                    Thread thread = this.f37573h.get(num.intValue());
                    this.f37573h.remove(num.intValue());
                    if (thread != null) {
                        a(thread);
                    }
                }
                if (this.f37578m.f37592a) {
                    break;
                }
            } else {
                if (!i()) {
                    j2 = j();
                    if (j2 <= 0) {
                        l();
                    }
                }
                j2 = this.f37581r;
            }
        }
        int size = this.f37573h.size();
        for (int i2 = 0; i2 < size; i2++) {
            Thread threadValueAt = this.f37573h.valueAt(i2);
            if (threadValueAt != null) {
                a(threadValueAt);
            }
        }
        this.f37573h.clear();
        com.sigmob.sdk.downloader.core.c.b(f37564n, "OutputStream stop flush looper task[" + this.f37583t.c() + "]");
    }

    public boolean i() {
        return this.f37568c.get() < ((long) this.f37580q);
    }

    public long j() {
        return this.f37581r - (k() - this.f37569d.get());
    }

    public long k() {
        return SystemClock.uptimeMillis();
    }

    public void l() throws IOException {
        long j2;
        synchronized (this.f37567b) {
            int size = this.f37567b.size();
            SparseArray sparseArray = new SparseArray(size);
            int i2 = 0;
            while (true) {
                j2 = 0;
                if (i2 >= size) {
                    break;
                }
                try {
                    int iKeyAt = this.f37567b.keyAt(i2);
                    long j3 = this.f37567b.get(iKeyAt).get();
                    if (j3 > 0) {
                        sparseArray.put(iKeyAt, Long.valueOf(j3));
                        this.f37566a.get(iKeyAt).b();
                    }
                    i2++;
                } catch (IOException e2) {
                    com.sigmob.sdk.downloader.core.c.a(f37564n, "OutputStream flush and sync data to filesystem failed " + e2);
                }
            }
            int size2 = sparseArray.size();
            for (int i3 = 0; i3 < size2; i3++) {
                int iKeyAt2 = sparseArray.keyAt(i3);
                long jLongValue = ((Long) sparseArray.valueAt(i3)).longValue();
                this.f37584u.a(this.f37582s, iKeyAt2, jLongValue);
                j2 += jLongValue;
                this.f37567b.get(iKeyAt2).addAndGet(-jLongValue);
                com.sigmob.sdk.downloader.core.c.b(f37564n, "OutputStream sync success (" + this.f37583t.c() + ") block(" + iKeyAt2 + ")  syncLength(" + jLongValue + ") currentOffset(" + this.f37582s.b(iKeyAt2).a() + ")");
            }
            this.f37568c.addAndGet(-j2);
            this.f37569d.set(SystemClock.uptimeMillis());
        }
    }

    public d(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, j jVar, Runnable runnable) {
        this.f37566a = new SparseArray<>();
        this.f37567b = new SparseArray<>();
        this.f37568c = new AtomicLong();
        this.f37569d = new AtomicLong();
        this.f37570e = false;
        this.f37573h = new SparseArray<>();
        this.f37577l = new a();
        this.f37578m = new a();
        this.f37589z = true;
        this.f37583t = fVar;
        this.f37579p = fVar.p();
        this.f37580q = fVar.q();
        this.f37581r = fVar.r();
        this.f37582s = cVar;
        this.f37584u = jVar;
        this.f37585v = g.j().e().a();
        this.f37586w = g.j().f().b(fVar);
        this.f37575j = new ArrayList<>();
        if (runnable == null) {
            this.f37587x = new Runnable() { // from class: com.sigmob.sdk.downloader.core.file.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.g();
                }
            };
        } else {
            this.f37587x = runnable;
        }
        File fileM = fVar.m();
        if (fileM != null) {
            this.f37588y = fileM.getAbsolutePath();
        }
    }

    public synchronized void a(int i2) throws IOException {
        String str;
        String str2;
        this.f37575j.add(Integer.valueOf(i2));
        try {
            IOException iOException = this.f37574i;
            if (iOException != null) {
                throw iOException;
            }
            if (this.f37571f == null || this.f37571f.isDone()) {
                if (this.f37571f == null) {
                    str = f37564n;
                    str2 = "OutputStream done but no need to ensure sync, because the sync job not run yet. task[" + this.f37583t.c() + "] block[" + i2 + "]";
                } else {
                    str = f37564n;
                    str2 = "OutputStream done but no need to ensure sync, because the syncFuture.isDone[" + this.f37571f.isDone() + "] task[" + this.f37583t.c() + "] block[" + i2 + "]";
                }
                com.sigmob.sdk.downloader.core.c.b(str, str2);
            } else {
                AtomicLong atomicLong = this.f37567b.get(i2);
                if (atomicLong != null && atomicLong.get() > 0) {
                    a(this.f37577l);
                    a(this.f37577l.f37592a, i2);
                }
            }
            c(i2);
        } catch (Throwable th) {
            c(i2);
            throw th;
        }
    }

    public void b(int i2) throws IOException {
        com.sigmob.sdk.downloader.core.breakpoint.a aVarB = this.f37582s.b(i2);
        if (aVarB.d() == -1 || com.sigmob.sdk.downloader.core.c.a(aVarB.a(), aVarB.d())) {
            return;
        }
        throw new IOException("The current offset on block-info isn't update correct, " + aVarB.a() + " != " + aVarB.d() + " on " + i2);
    }

    public boolean c() {
        return this.f37572g != null;
    }

    public void d(int i2) {
        this.f37575j.add(Integer.valueOf(i2));
    }

    public void e() {
        LockSupport.park();
    }

    public synchronized void a(int i2, byte[] bArr, int i3) throws IOException {
        if (this.f37570e) {
            return;
        }
        e(i2).a(bArr, 0, i3);
        long j2 = i3;
        this.f37568c.addAndGet(j2);
        this.f37567b.get(i2).addAndGet(j2);
        d();
    }

    public void a(long j2) {
        LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(j2));
    }

    public void a(StatFs statFs, long j2) throws com.sigmob.sdk.downloader.core.exception.e {
        long jA = com.sigmob.sdk.downloader.core.c.a(statFs);
        if (jA < j2) {
            throw new com.sigmob.sdk.downloader.core.exception.e(j2, jA);
        }
    }

    public void a(a aVar) {
        aVar.f37594c.clear();
        int size = new HashSet((List) this.f37575j.clone()).size();
        if (size != this.f37576k.size()) {
            com.sigmob.sdk.downloader.core.c.b(f37564n, "task[" + this.f37583t.c() + "] current need fetching block count " + this.f37576k.size() + " is not equal to no more stream block count " + size);
            aVar.f37592a = false;
        } else {
            com.sigmob.sdk.downloader.core.c.b(f37564n, "task[" + this.f37583t.c() + "] current need fetching block count " + this.f37576k.size() + " is equal to no more stream block count " + size);
            aVar.f37592a = true;
        }
        SparseArray<com.sigmob.sdk.downloader.core.file.a> sparseArrayClone = this.f37566a.clone();
        int size2 = sparseArrayClone.size();
        for (int i2 = 0; i2 < size2; i2++) {
            int iKeyAt = sparseArrayClone.keyAt(i2);
            if (this.f37575j.contains(Integer.valueOf(iKeyAt)) && !aVar.f37593b.contains(Integer.valueOf(iKeyAt))) {
                aVar.f37593b.add(Integer.valueOf(iKeyAt));
                aVar.f37594c.add(Integer.valueOf(iKeyAt));
            }
        }
    }

    public void a(Thread thread) {
        LockSupport.unpark(thread);
    }

    public void a(List<Integer> list) {
        this.f37576k = list;
    }

    public void a(boolean z2, int i2) throws ExecutionException, InterruptedException {
        if (this.f37571f == null || this.f37571f.isDone()) {
            return;
        }
        if (!z2) {
            this.f37573h.put(i2, Thread.currentThread());
        }
        if (this.f37572g == null) {
            while (!c()) {
                a(25L);
            }
        }
        a(this.f37572g);
        if (!z2) {
            e();
            return;
        }
        a(this.f37572g);
        try {
            this.f37571f.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }
}
