package com.byazt.owd;

import android.os.Handler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1061, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f24215a;

    /* renamed from: e, reason: collision with root package name */
    public long f24216e;
    public final AtomicBoolean eb;
    public long gu;
    public final List<com.byazt.voc.j> hp;

    /* renamed from: j, reason: collision with root package name */
    public final Runnable f24217j;
    public final Handler jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<com.byazt.voc.j> f24218l;

    /* renamed from: q, reason: collision with root package name */
    public long f24219q;

    /* renamed from: s, reason: collision with root package name */
    public long f24220s;

    /* renamed from: w, reason: collision with root package name */
    public final Runnable f24221w;

    @com.byazt.kj.hp(hp = {0, 1, 1061, 170})
    /* renamed from: com.byazt.owd.hp$hp, reason: collision with other inner class name */
    public static class C0333hp {
        public static final hp hp = new hp();
    }

    private boolean j(com.byazt.voc.j jVar) {
        com.byazt.tgw.l lVarHp = hp(jVar.l(), jVar.hp(), 100);
        if (lVarHp == null || System.currentTimeMillis() - lVarHp.l() >= com.byazt.di.l.l().sz()) {
            return !com.byazt.ky.hp.hp().hp(jVar.l(), jVar.hp(), com.byazt.mey.j.hp(jVar.l()));
        }
        com.byazt.di.l.l().sz();
        return true;
    }

    private void jx(com.byazt.voc.j jVar) {
        long jNs = com.byazt.di.l.l().ns();
        HashMap map = new HashMap();
        map.put("config_use_type", Integer.valueOf(com.byazt.di.l.l().gu()));
        map.put("config_wait_duration", Long.valueOf(jNs));
        if (jNs == 0) {
            jVar.hp(false, map);
            return;
        }
        if (j(jVar)) {
            map.put("is_wait_success", 2);
            jVar.hp(false, map);
            return;
        }
        if (!this.hp.contains(jVar)) {
            if (this.f24219q == Long.MIN_VALUE) {
                this.f24219q = System.currentTimeMillis();
            }
            this.hp.add(jVar);
        }
        if (this.f24215a.compareAndSet(false, true)) {
            com.byazt.di.l.l().ns();
            this.jx.postDelayed(this.f24217j, com.byazt.di.l.l().ns());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z2) {
        synchronized (this.hp) {
            try {
                if (this.hp.isEmpty()) {
                    this.f24215a.set(false);
                    return;
                }
                ArrayList arrayList = new ArrayList(this.hp);
                this.hp.clear();
                long jNs = com.byazt.di.l.l().ns();
                HashMap map = new HashMap();
                map.put("config_use_type", Integer.valueOf(com.byazt.di.l.l().gu()));
                map.put("config_wait_duration", Long.valueOf(jNs));
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    com.byazt.voc.j jVar = (com.byazt.voc.j) obj;
                    if (z2) {
                        com.byazt.tgw.l lVarHp = hp(jVar.l(), jVar.hp(), 100);
                        map.put("is_wait_success", 0);
                        jVar.hp(lVarHp == null, map);
                    } else {
                        if (this.gu == Long.MIN_VALUE) {
                            this.gu = System.currentTimeMillis() - this.f24219q;
                        }
                        map.put("real_wait_duration", Long.valueOf(this.gu));
                        map.put("is_wait_success", 1);
                        jVar.hp(false, map);
                    }
                }
                this.jx.removeCallbacks(this.f24217j);
                this.f24215a.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        hp(true);
    }

    private hp() {
        this.hp = new CopyOnWriteArrayList();
        this.f24218l = new CopyOnWriteArrayList();
        this.jx = com.byazt.ymw.e.jx();
        this.f24217j = new Runnable() { // from class: X.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f678b.w();
            }
        };
        this.f24221w = new Runnable() { // from class: X.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f679b.l();
            }
        };
        this.f24215a = new AtomicBoolean(false);
        this.eb = new AtomicBoolean(false);
        this.f24220s = Long.MIN_VALUE;
        this.f24219q = Long.MIN_VALUE;
        this.f24216e = Long.MIN_VALUE;
        this.gu = Long.MIN_VALUE;
    }

    public static hp hp() {
        return C0333hp.hp;
    }

    public void hp(com.byazt.voc.j jVar) {
        if (jVar == null) {
            return;
        }
        if (jVar.hp() == 3) {
            l(jVar);
        } else {
            jx(jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        synchronized (this.f24218l) {
            try {
                if (this.f24218l.isEmpty()) {
                    this.eb.set(false);
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f24218l);
                this.f24218l.clear();
                long jN = com.byazt.di.l.l().n();
                HashMap map = new HashMap();
                map.put("config_use_type", Integer.valueOf(com.byazt.di.l.l().gu()));
                map.put("config_wait_duration", Long.valueOf(jN));
                map.put("is_wait_success", 1);
                if (this.f24216e == Long.MIN_VALUE) {
                    this.f24216e = System.currentTimeMillis() - this.f24220s;
                }
                map.put("real_wait_duration", Long.valueOf(this.f24216e));
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((com.byazt.voc.j) obj).hp(false, map);
                }
                this.jx.removeCallbacks(this.f24221w);
                this.eb.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(final boolean z2) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.owd.hp.1
            @Override // java.lang.Runnable
            public void run() {
                hp.this.l(z2);
            }
        });
    }

    private com.byazt.tgw.l hp(String str, int i2, int i3) {
        com.byazt.tgw.l lVarHp = com.byazt.di.l.l().hp(str, i2, i3);
        return (lVarHp == null && i2 == 8) ? com.byazt.di.l.l().hp(str, 10, i3) : lVarHp;
    }

    public void jx() {
        l();
        hp(false);
    }

    public void l(com.byazt.voc.j jVar) {
        long jN = com.byazt.di.l.l().n();
        HashMap map = new HashMap();
        map.put("config_use_type", Integer.valueOf(com.byazt.di.l.l().gu()));
        map.put("config_wait_duration", Long.valueOf(jN));
        if (jN == 0) {
            jVar.hp(false, map);
            return;
        }
        if (j(jVar)) {
            map.put("is_wait_success", 2);
            jVar.hp(false, map);
            return;
        }
        if (!this.f24218l.contains(jVar)) {
            if (this.f24220s == Long.MIN_VALUE) {
                this.f24220s = System.currentTimeMillis();
            }
            this.f24218l.add(jVar);
        }
        if (this.eb.compareAndSet(false, true)) {
            com.byazt.di.l.l().n();
            this.jx.postDelayed(this.f24221w, com.byazt.di.l.l().n());
        }
    }

    public void l() {
        com.byazt.aw.w.jx(new Runnable() { // from class: X.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f677b.j();
            }
        });
    }
}
