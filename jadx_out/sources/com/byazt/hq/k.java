package com.byazt.hq;

import com.byazt.hq.di;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 158, 42})
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: j, reason: collision with root package name */
    public String f20905j;
    public Runnable jx;

    /* renamed from: w, reason: collision with root package name */
    public ExecutorService f20908w;
    public int hp = 64;

    /* renamed from: l, reason: collision with root package name */
    public int f20906l = 5;

    /* renamed from: a, reason: collision with root package name */
    public final Deque<di.hp> f20904a = new ArrayDeque();
    public final Deque<di.hp> eb = new ArrayDeque();

    /* renamed from: s, reason: collision with root package name */
    public final Deque<di> f20907s = new ArrayDeque();

    public k() {
    }

    private void jx() {
        if (this.eb.size() < this.hp && !this.f20904a.isEmpty()) {
            Iterator<di.hp> it = this.f20904a.iterator();
            while (it.hasNext()) {
                di.hp next = it.next();
                if (jx(next) < this.f20906l) {
                    it.remove();
                    this.eb.add(next);
                    if (next != null) {
                        next.l();
                    }
                    hp().execute(next);
                }
                if (this.eb.size() >= this.hp) {
                    return;
                }
            }
        }
    }

    public synchronized ExecutorService hp() {
        try {
            if (this.f20908w == null) {
                String str = this.f20905j;
                this.f20908w = new com.byazt.shx.j(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), com.byazt.ru.jx.hp((str == null || str.isEmpty()) ? TKDownloadReason.KSAD_TK_NET : this.f20905j, false));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f20908w;
    }

    public synchronized void l(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i2)));
        }
        this.f20906l = i2;
        jx();
    }

    public synchronized void hp(int i2) {
        if (i2 > 0) {
            this.hp = i2;
            jx();
        } else {
            throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i2)));
        }
    }

    public void l(di.hp hpVar) {
        hp(this.eb, hpVar, true);
    }

    public k(String str) {
        this.f20905j = str;
    }

    public void l(di diVar) {
        hp(this.f20907s, diVar, false);
    }

    public synchronized int l() {
        return this.eb.size() + this.f20907s.size();
    }

    private int jx(di.hp hpVar) {
        Iterator<di.hp> it = this.eb.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().hp().equals(hpVar.hp())) {
                i2++;
            }
        }
        return i2;
    }

    public synchronized void hp(di.hp hpVar) {
        try {
            if (this.eb.size() < this.hp && jx(hpVar) < this.f20906l) {
                this.eb.add(hpVar);
                if (hpVar != null) {
                    hpVar.l();
                }
                hp().execute(hpVar);
                return;
            }
            this.f20904a.add(hpVar);
        } catch (Throwable unused) {
        }
    }

    public synchronized void hp(di diVar) {
        this.f20907s.add(diVar);
    }

    private <T> void hp(Deque<T> deque, T t2, boolean z2) {
        int iL;
        Runnable runnable;
        synchronized (this) {
            try {
                if (deque.remove(t2)) {
                    if (z2) {
                        jx();
                    }
                    iL = l();
                    runnable = this.jx;
                } else {
                    throw new AssertionError("Call wasn't in-flight!");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iL != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }
}
