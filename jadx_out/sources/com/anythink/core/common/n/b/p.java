package com.anythink.core.common.n.b;

import com.anythink.core.common.n.b.ac;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f6907a = true;

    /* renamed from: d, reason: collision with root package name */
    private Runnable f6910d;

    /* renamed from: e, reason: collision with root package name */
    private ExecutorService f6911e;

    /* renamed from: b, reason: collision with root package name */
    private int f6908b = 64;

    /* renamed from: c, reason: collision with root package name */
    private int f6909c = 5;

    /* renamed from: f, reason: collision with root package name */
    private final Deque<ac.a> f6912f = new ArrayDeque();

    /* renamed from: g, reason: collision with root package name */
    private final Deque<ac.a> f6913g = new ArrayDeque();

    /* renamed from: h, reason: collision with root package name */
    private final Deque<ac> f6914h = new ArrayDeque();

    public p(ExecutorService executorService) {
        this.f6911e = executorService;
    }

    private synchronized ExecutorService a() {
        try {
            if (this.f6911e == null) {
                this.f6911e = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), com.anythink.core.common.n.b.a.c.a(aa.f6658a + "-HttpDispatcher", false));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f6911e;
    }

    private synchronized int b() {
        return this.f6908b;
    }

    private synchronized int c() {
        return this.f6909c;
    }

    private synchronized void d() {
        try {
            Iterator<ac.a> it = this.f6912f.iterator();
            while (it.hasNext()) {
                ac.this.c();
            }
            Iterator<ac.a> it2 = this.f6913g.iterator();
            while (it2.hasNext()) {
                ac.this.c();
            }
            Iterator<ac> it3 = this.f6914h.iterator();
            while (it3.hasNext()) {
                it3.next().c();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean e() {
        int i2;
        boolean z2;
        if (!f6907a && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<ac.a> it = this.f6912f.iterator();
                while (it.hasNext()) {
                    ac.a next = it.next();
                    if (this.f6913g.size() >= this.f6908b) {
                        break;
                    }
                    if (next.a().get() < this.f6909c) {
                        it.remove();
                        next.a().incrementAndGet();
                        arrayList.add(next);
                        this.f6913g.add(next);
                    }
                }
                z2 = i() > 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        for (i2 = 0; i2 < size; i2++) {
            ((ac.a) arrayList.get(i2)).a(a());
        }
        return z2;
    }

    private synchronized List<e> f() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator<ac.a> it = this.f6912f.iterator();
            while (it.hasNext()) {
                arrayList.add(ac.this);
            }
        } catch (Throwable th) {
            throw th;
        }
        return Collections.unmodifiableList(arrayList);
    }

    private synchronized List<e> g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            arrayList.addAll(this.f6914h);
            Iterator<ac.a> it = this.f6913g.iterator();
            while (it.hasNext()) {
                arrayList.add(ac.this);
            }
        } catch (Throwable th) {
            throw th;
        }
        return Collections.unmodifiableList(arrayList);
    }

    private synchronized int h() {
        return this.f6912f.size();
    }

    private synchronized int i() {
        return this.f6913g.size() + this.f6914h.size();
    }

    private void b(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i2)));
        }
        synchronized (this) {
            this.f6909c = i2;
        }
        e();
    }

    private void a(int i2) {
        if (i2 > 0) {
            synchronized (this) {
                this.f6908b = i2;
            }
            e();
            return;
        }
        throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i2)));
    }

    public p() {
    }

    public final void b(ac.a aVar) {
        aVar.a().decrementAndGet();
        a(this.f6913g, aVar);
    }

    public final void b(ac acVar) {
        a(this.f6914h, acVar);
    }

    private synchronized void a(Runnable runnable) {
        this.f6910d = runnable;
    }

    public final void a(ac.a aVar) {
        ac.a next;
        synchronized (this) {
            try {
                this.f6912f.add(aVar);
                if (!ac.this.f6669c) {
                    String strB = aVar.b();
                    Iterator<ac.a> it = this.f6913g.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            next = it.next();
                            if (next.b().equals(strB)) {
                                break;
                            }
                        } else {
                            Iterator<ac.a> it2 = this.f6912f.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    next = null;
                                    break;
                                } else {
                                    next = it2.next();
                                    if (next.b().equals(strB)) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (next != null) {
                        aVar.a(next);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        e();
    }

    private ac.a a(String str) {
        for (ac.a aVar : this.f6913g) {
            if (aVar.b().equals(str)) {
                return aVar;
            }
        }
        for (ac.a aVar2 : this.f6912f) {
            if (aVar2.b().equals(str)) {
                return aVar2;
            }
        }
        return null;
    }

    public final synchronized void a(ac acVar) {
        this.f6914h.add(acVar);
    }

    private <T> void a(Deque<T> deque, T t2) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t2)) {
                runnable = this.f6910d;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (e() || runnable == null) {
            return;
        }
        runnable.run();
    }
}
