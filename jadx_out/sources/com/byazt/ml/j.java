package com.byazt.ml;

import com.byazt.ml.hp;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 449, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.uhg.j {
    public ExecutorService hp;

    /* renamed from: l, reason: collision with root package name */
    public final Deque<hp.C0310hp> f23083l = new ArrayDeque();
    public final Deque<hp.C0310hp> jx = new ArrayDeque();

    /* renamed from: j, reason: collision with root package name */
    public final Deque<hp> f23082j = new ArrayDeque();

    /* renamed from: w, reason: collision with root package name */
    public AtomicInteger f23084w = new AtomicInteger(64);

    public j() {
        if (this.hp == null) {
            this.hp = new com.byazt.shx.j(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.byazt.ml.j.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    com.byazt.shx.jx jxVar = new com.byazt.shx.jx(runnable, "systemHttp Dispatcher");
                    jxVar.setDaemon(false);
                    jxVar.setPriority(10);
                    return jxVar;
                }
            });
        }
    }

    private void jx() {
        if (this.jx.size() < hp() && !this.f23083l.isEmpty()) {
            Iterator<hp.C0310hp> it = this.f23083l.iterator();
            while (it.hasNext()) {
                hp.C0310hp next = it.next();
                it.remove();
                this.jx.add(next);
                if (next != null) {
                    next.hp();
                }
                l().submit(next);
                if (this.jx.size() >= hp()) {
                    return;
                }
            }
        }
    }

    @Override // com.byazt.uhg.j
    public void hp(int i2) {
        this.f23084w.set(i2);
    }

    @Override // com.byazt.uhg.j
    public void l(int i2) {
    }

    @Override // com.byazt.uhg.j
    public int hp() {
        return this.f23084w.get();
    }

    @Override // com.byazt.uhg.j
    public ExecutorService l() {
        return this.hp;
    }

    public synchronized void hp(hp.C0310hp c0310hp) {
        try {
            if (this.jx.size() < hp()) {
                this.jx.add(c0310hp);
                if (c0310hp != null) {
                    c0310hp.hp();
                }
                l().submit(c0310hp);
                return;
            }
            this.f23083l.add(c0310hp);
        } catch (Throwable unused) {
        }
    }

    public void l(hp.C0310hp c0310hp) {
        hp(this.jx, c0310hp, true);
    }

    public void l(hp hpVar) {
        hp(this.f23082j, hpVar, false);
    }

    public synchronized void hp(hp hpVar) {
        this.f23082j.add(hpVar);
    }

    private <T> void hp(Deque<T> deque, T t2, boolean z2) {
        synchronized (this) {
            try {
                deque.remove(t2);
                if (z2) {
                    jx();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
