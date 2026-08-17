package com.sigmob.sdk.downloader.core.dispatcher;

import android.os.SystemClock;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.core.c;
import com.sigmob.sdk.downloader.core.download.e;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import com.sigmob.sdk.downloader.l;
import java.io.File;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static final String f37465b = "DownloadDispatcher";

    /* renamed from: a, reason: collision with root package name */
    int f37466a;

    /* renamed from: c, reason: collision with root package name */
    private final List<e> f37467c;

    /* renamed from: d, reason: collision with root package name */
    private final List<e> f37468d;

    /* renamed from: e, reason: collision with root package name */
    private final List<e> f37469e;

    /* renamed from: f, reason: collision with root package name */
    private final List<e> f37470f;

    /* renamed from: g, reason: collision with root package name */
    private final AtomicInteger f37471g;

    /* renamed from: h, reason: collision with root package name */
    private volatile ExecutorService f37472h;

    /* renamed from: i, reason: collision with root package name */
    private final AtomicInteger f37473i;

    /* renamed from: j, reason: collision with root package name */
    private j f37474j;

    public b() {
        this(new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList());
    }

    private int d() {
        return this.f37468d.size() - this.f37471g.get();
    }

    private synchronized void i(f fVar) {
        c.b(f37465b, "enqueueLocked for single task: " + fVar);
        if (h(fVar)) {
            return;
        }
        if (k(fVar)) {
            return;
        }
        int size = this.f37467c.size();
        j(fVar);
        if (size != this.f37467c.size()) {
            Collections.sort(this.f37467c);
        }
    }

    private synchronized void j(f fVar) {
        try {
            e eVarA = e.a(fVar, true, this.f37474j);
            if (d() < this.f37466a) {
                this.f37468d.add(eVarA);
                a().execute(eVarA);
            } else {
                this.f37467c.add(eVarA);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean k(f fVar) {
        return a(fVar, (Collection<f>) null, (Collection<f>) null);
    }

    public synchronized ExecutorService a() {
        try {
            if (this.f37472h == null) {
                this.f37472h = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c.a("FileDownload Download", false));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f37472h;
    }

    public void b() {
        this.f37473i.incrementAndGet();
        ArrayList arrayList = new ArrayList();
        Iterator<e> it = this.f37467c.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f37510c);
        }
        Iterator<e> it2 = this.f37468d.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f37510c);
        }
        Iterator<e> it3 = this.f37469e.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().f37510c);
        }
        if (!arrayList.isEmpty()) {
            b((com.sigmob.sdk.downloader.core.a[]) arrayList.toArray(new f[arrayList.size()]));
        }
        this.f37473i.decrementAndGet();
    }

    public synchronized f c(f fVar) {
        c.b(f37465b, "findSameTask: " + fVar.c());
        for (e eVar : this.f37467c) {
            if (!eVar.d() && eVar.a(fVar)) {
                return eVar.f37510c;
            }
        }
        for (e eVar2 : this.f37468d) {
            if (!eVar2.d() && eVar2.a(fVar)) {
                return eVar2.f37510c;
            }
        }
        for (e eVar3 : this.f37469e) {
            if (!eVar3.d() && eVar3.a(fVar)) {
                return eVar3.f37510c;
            }
        }
        return null;
    }

    public synchronized boolean e(f fVar) {
        c.b(f37465b, "isCanceled: " + fVar.c());
        for (e eVar : this.f37469e) {
            if (eVar.d() && eVar.a(fVar)) {
                return true;
            }
        }
        for (e eVar2 : this.f37468d) {
            if (eVar2.d() && eVar2.a(fVar)) {
                return true;
            }
        }
        for (e eVar3 : this.f37467c) {
            if (eVar3.d() && eVar3.a(fVar)) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean f(f fVar) {
        c.b(f37465b, "isPending: " + fVar.c());
        for (e eVar : this.f37467c) {
            if (!eVar.d() && eVar.a(fVar)) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean g(f fVar) {
        f fVar2;
        File fileM;
        f fVar3;
        File fileM2;
        c.b(f37465b, "is file conflict after run: " + fVar.c());
        File fileM3 = fVar.m();
        if (fileM3 == null) {
            return false;
        }
        for (e eVar : this.f37469e) {
            if (!eVar.d() && (fVar3 = eVar.f37510c) != fVar && (fileM2 = fVar3.m()) != null && fileM3.equals(fileM2)) {
                return true;
            }
        }
        for (e eVar2 : this.f37468d) {
            if (!eVar2.d() && (fVar2 = eVar2.f37510c) != fVar && (fileM = fVar2.m()) != null && fileM3.equals(fileM)) {
                return true;
            }
        }
        return false;
    }

    public boolean h(f fVar) {
        return a(fVar, (Collection<f>) null);
    }

    public b(List<e> list, List<e> list2, List<e> list3, List<e> list4) {
        this.f37466a = 5;
        this.f37471g = new AtomicInteger();
        this.f37473i = new AtomicInteger();
        this.f37467c = list;
        this.f37468d = list2;
        this.f37469e = list3;
        this.f37470f = list4;
    }

    private synchronized void a(com.sigmob.sdk.downloader.core.a aVar, List<e> list, List<e> list2) {
        try {
            Iterator<e> it = this.f37467c.iterator();
            while (it.hasNext()) {
                e next = it.next();
                f fVar = next.f37510c;
                if (fVar == aVar || fVar.c() == aVar.c()) {
                    if (!next.d() && !next.e()) {
                        it.remove();
                        list.add(next);
                    }
                }
            }
            for (e eVar : this.f37468d) {
                f fVar2 = eVar.f37510c;
                if (fVar2 == aVar || fVar2.c() == aVar.c()) {
                    list.add(eVar);
                    list2.add(eVar);
                }
            }
            for (e eVar2 : this.f37469e) {
                f fVar3 = eVar2.f37510c;
                if (fVar3 == aVar || fVar3.c() == aVar.c()) {
                    list.add(eVar2);
                    list2.add(eVar2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void b(int i2) {
        b bVarA = g.j().a();
        if (bVarA.getClass() == b.class) {
            bVarA.f37466a = Math.max(1, i2);
            return;
        }
        throw new IllegalStateException("The current dispatcher is " + bVarA + " not DownloadDispatcher exactly!");
    }

    private synchronized void c() {
        try {
            if (this.f37473i.get() > 0) {
                return;
            }
            if (d() >= this.f37466a) {
                return;
            }
            if (this.f37467c.isEmpty()) {
                return;
            }
            Iterator<e> it = this.f37467c.iterator();
            while (it.hasNext()) {
                e next = it.next();
                it.remove();
                f fVar = next.f37510c;
                if (g(fVar)) {
                    g.j().b().a().a(fVar, com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY, (Exception) null);
                } else {
                    this.f37468d.add(next);
                    a().execute(next);
                    if (d() >= this.f37466a) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean d(f fVar) {
        c.b(f37465b, "isRunning: " + fVar.c());
        for (e eVar : this.f37469e) {
            if (!eVar.d() && eVar.a(fVar)) {
                return true;
            }
        }
        for (e eVar2 : this.f37468d) {
            if (!eVar2.d() && eVar2.a(fVar)) {
                return true;
            }
        }
        return false;
    }

    public void a(j jVar) {
        this.f37474j = jVar;
    }

    public synchronized void b(e eVar) {
        c.b(f37465b, "flying canceled: " + eVar.f37510c.c());
        if (eVar.f37511d) {
            this.f37471g.incrementAndGet();
        }
    }

    public synchronized void c(e eVar) {
        try {
            boolean z2 = eVar.f37511d;
            if (!(this.f37470f.contains(eVar) ? this.f37470f : z2 ? this.f37468d : this.f37469e).remove(eVar)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z2 && eVar.d()) {
                this.f37471g.decrementAndGet();
            }
            if (z2) {
                c();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(e eVar) {
        eVar.run();
    }

    public void b(f fVar) {
        c.b(f37465b, "execute: " + fVar);
        synchronized (this) {
            try {
                if (!h(fVar) && !k(fVar)) {
                    e eVarA = e.a(fVar, false, this.f37474j);
                    this.f37469e.add(eVarA);
                    a(eVarA);
                }
            } finally {
            }
        }
    }

    private synchronized void b(com.sigmob.sdk.downloader.core.a[] aVarArr) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        c.b(f37465b, "start cancel bunch task manually: " + aVarArr.length);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (com.sigmob.sdk.downloader.core.a aVar : aVarArr) {
                a(aVar, arrayList, arrayList2);
            }
        } finally {
            a(arrayList, arrayList2);
            c.b(f37465b, "finish cancel bunch task manually: " + aVarArr.length + " consume " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
        }
    }

    public void a(f fVar) {
        this.f37473i.incrementAndGet();
        i(fVar);
        this.f37473i.decrementAndGet();
    }

    private synchronized void a(List<e> list, List<e> list2) {
        try {
            c.b(f37465b, "handle cancel calls, cancel calls: " + list2.size());
            if (!list2.isEmpty()) {
                for (e eVar : list2) {
                    if (!eVar.c()) {
                        list.remove(eVar);
                    }
                }
            }
            c.b(f37465b, "handle cancel calls, callback cancel event: " + list.size());
            if (!list.isEmpty()) {
                if (list.size() <= 1) {
                    g.j().b().a().a(list.get(0).f37510c, com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator<e> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().f37510c);
                    }
                    g.j().b().a(arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void b(f[] fVarArr) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            c.b(f37465b, "start enqueueLocked for bunch task: " + fVarArr.length);
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, fVarArr);
            if (arrayList.size() > 1) {
                Collections.sort(arrayList);
            }
            int size = this.f37467c.size();
            try {
                g.j().g().b();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                int size2 = arrayList.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    f fVar = (f) obj;
                    if (!a(fVar, arrayList2) && !a(fVar, (Collection<f>) arrayList3, (Collection<f>) arrayList4)) {
                        j(fVar);
                    }
                }
                g.j().b().a(arrayList2, arrayList3, arrayList4);
            } catch (UnknownHostException e2) {
                g.j().b().a(new ArrayList(arrayList), e2);
            }
            if (size != this.f37467c.size()) {
                Collections.sort(this.f37467c);
            }
            c.b(f37465b, "end enqueueLocked for bunch task: " + fVarArr.length + " consume " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(com.sigmob.sdk.downloader.core.a[] aVarArr) {
        this.f37473i.incrementAndGet();
        b(aVarArr);
        this.f37473i.decrementAndGet();
        c();
    }

    public synchronized boolean b(com.sigmob.sdk.downloader.core.a aVar) {
        ArrayList arrayList;
        ArrayList arrayList2;
        c.b(f37465b, "cancel manually: " + aVar.c());
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        try {
            a(aVar, arrayList, arrayList2);
            a(arrayList, arrayList2);
        } catch (Throwable th) {
            a(arrayList, arrayList2);
            throw th;
        }
        return arrayList.size() > 0 || arrayList2.size() > 0;
    }

    public void a(f[] fVarArr) {
        this.f37473i.incrementAndGet();
        b(fVarArr);
        this.f37473i.decrementAndGet();
    }

    public boolean a(int i2) {
        this.f37473i.incrementAndGet();
        boolean zB = b(f.c(i2));
        this.f37473i.decrementAndGet();
        c();
        return zB;
    }

    public boolean a(com.sigmob.sdk.downloader.core.a aVar) {
        this.f37473i.incrementAndGet();
        boolean zB = b(aVar);
        this.f37473i.decrementAndGet();
        c();
        return zB;
    }

    public boolean a(f fVar, Collection<f> collection) {
        if (!fVar.e() || !l.c(fVar)) {
            return false;
        }
        if (fVar.d() == null && !g.j().g().a(fVar)) {
            return false;
        }
        g.j().g().a(fVar, this.f37474j);
        if (collection != null) {
            collection.add(fVar);
            return true;
        }
        g.j().b().a().a(fVar, com.sigmob.sdk.downloader.core.cause.a.COMPLETED, (Exception) null);
        return true;
    }

    private boolean a(f fVar, Collection<f> collection, Collection<f> collection2) {
        return a(fVar, this.f37467c, collection, collection2) || a(fVar, this.f37468d, collection, collection2) || a(fVar, this.f37469e, collection, collection2);
    }

    public boolean a(f fVar, Collection<e> collection, Collection<f> collection2, Collection<f> collection3) {
        a aVarB = g.j().b();
        Iterator<e> it = collection.iterator();
        while (it.hasNext()) {
            e next = it.next();
            if (!next.d()) {
                if (next.a(fVar)) {
                    if (!next.e()) {
                        if (collection2 != null) {
                            collection2.add(fVar);
                        } else {
                            aVarB.a().a(fVar, com.sigmob.sdk.downloader.core.cause.a.SAME_TASK_BUSY, (Exception) null);
                        }
                        return true;
                    }
                    c.b(f37465b, "task: " + fVar.c() + " is finishing, move it to finishing list");
                    this.f37470f.add(next);
                    it.remove();
                    return false;
                }
                File fileG = next.g();
                File fileM = fVar.m();
                if (fileG != null && fileM != null && fileG.equals(fileM)) {
                    if (collection3 != null) {
                        collection3.add(fVar);
                    } else {
                        aVarB.a().a(fVar, com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY, (Exception) null);
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
