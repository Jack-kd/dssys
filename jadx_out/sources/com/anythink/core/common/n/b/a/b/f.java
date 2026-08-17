package com.anythink.core.common.n.b.a.b;

import com.anythink.core.common.n.b.C1115a;
import com.anythink.core.common.n.b.a.b.j;
import com.anythink.core.common.n.b.aa;
import com.anythink.core.common.n.b.ah;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f6175c = true;

    /* renamed from: d, reason: collision with root package name */
    private static final Executor f6176d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.anythink.core.common.n.b.a.c.a(aa.f6658a + " ConnectionPool", true));

    /* renamed from: b, reason: collision with root package name */
    boolean f6178b;

    /* renamed from: e, reason: collision with root package name */
    private final int f6179e;

    /* renamed from: f, reason: collision with root package name */
    private final long f6180f;

    /* renamed from: g, reason: collision with root package name */
    private final Runnable f6181g = new Runnable() { // from class: com.anythink.core.common.n.b.a.b.f.1
        @Override // java.lang.Runnable
        public final void run() throws IOException {
            while (true) {
                long jA = f.this.a(System.nanoTime());
                if (jA == -1) {
                    return;
                }
                if (jA > 0) {
                    long j2 = jA / C.MICROS_PER_SECOND;
                    long j3 = jA - (C.MICROS_PER_SECOND * j2);
                    synchronized (f.this) {
                        try {
                            f.this.wait(j2, (int) j3);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    };

    /* renamed from: h, reason: collision with root package name */
    private final Deque<e> f6182h = new ArrayDeque();

    /* renamed from: a, reason: collision with root package name */
    final g f6177a = new g();

    public f(int i2, TimeUnit timeUnit) {
        this.f6179e = i2;
        this.f6180f = timeUnit.toNanos(5L);
    }

    public final synchronized int a() {
        int i2;
        Iterator<e> it = this.f6182h.iterator();
        i2 = 0;
        while (it.hasNext()) {
            if (it.next().f6161e.isEmpty()) {
                i2++;
            }
        }
        return i2;
    }

    public final synchronized int b() {
        return this.f6182h.size();
    }

    public final void c() throws IOException {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<e> it = this.f6182h.iterator();
                while (it.hasNext()) {
                    e next = it.next();
                    if (next.f6161e.isEmpty()) {
                        next.f6158b = true;
                        arrayList.add(next);
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            com.anythink.core.common.n.b.a.c.a(((e) obj).b());
        }
    }

    public final boolean b(e eVar) {
        if (!f6175c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (eVar.f6158b || this.f6179e == 0) {
            this.f6182h.remove(eVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public final boolean a(C1115a c1115a, j jVar, List<ah> list, boolean z2) {
        if (!f6175c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (e eVar : this.f6182h) {
            if (!z2 || eVar.g()) {
                if (eVar.a(c1115a, list)) {
                    jVar.a(eVar);
                    return true;
                }
            }
        }
        return false;
    }

    public final void a(e eVar) {
        if (!f6175c && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f6178b) {
            this.f6178b = true;
            f6176d.execute(this.f6181g);
        }
        this.f6182h.add(eVar);
    }

    public final long a(long j2) throws IOException {
        int size;
        synchronized (this) {
            try {
                e eVar = null;
                long j3 = Long.MIN_VALUE;
                int i2 = 0;
                int i3 = 0;
                for (e eVar2 : this.f6182h) {
                    List<Reference<j>> list = eVar2.f6161e;
                    int i4 = 0;
                    while (true) {
                        if (i4 < list.size()) {
                            Reference<j> reference = list.get(i4);
                            if (reference.get() == null) {
                                com.anythink.core.common.n.b.a.g.c.e().a("A connection to " + eVar2.a().a().a() + " was leaked. Did you forget to close a response body?", ((j.a) reference).f6214a);
                                list.remove(i4);
                                eVar2.f6158b = true;
                                if (list.isEmpty()) {
                                    eVar2.f6162f = j2 - this.f6180f;
                                    size = 0;
                                    break;
                                }
                            } else {
                                i4++;
                            }
                        } else {
                            size = list.size();
                            break;
                        }
                    }
                    if (size > 0) {
                        i3++;
                    } else {
                        i2++;
                        long j4 = j2 - eVar2.f6162f;
                        if (j4 > j3) {
                            eVar = eVar2;
                            j3 = j4;
                        }
                    }
                }
                long j5 = this.f6180f;
                if (j3 < j5 && i2 <= this.f6179e) {
                    if (i2 > 0) {
                        return j5 - j3;
                    }
                    if (i3 > 0) {
                        return j5;
                    }
                    this.f6178b = false;
                    return -1L;
                }
                this.f6182h.remove(eVar);
                com.anythink.core.common.n.b.a.c.a(eVar.b());
                return 0L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int a(e eVar, long j2) {
        List<Reference<j>> list = eVar.f6161e;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference<j> reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                com.anythink.core.common.n.b.a.g.c.e().a("A connection to " + eVar.a().a().a() + " was leaked. Did you forget to close a response body?", ((j.a) reference).f6214a);
                list.remove(i2);
                eVar.f6158b = true;
                if (list.isEmpty()) {
                    eVar.f6162f = j2 - this.f6180f;
                    return 0;
                }
            }
        }
        return list.size();
    }

    private void a(ah ahVar, IOException iOException) {
        if (ahVar.b().type() != Proxy.Type.DIRECT) {
            C1115a c1115aA = ahVar.a();
            c1115aA.g().connectFailed(c1115aA.a().a(), ahVar.b().address(), iOException);
        }
        this.f6177a.a(ahVar);
    }
}
