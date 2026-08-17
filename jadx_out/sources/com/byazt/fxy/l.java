package com.byazt.fxy;

import android.os.Handler;
import android.os.Looper;
import com.byazt.jds.jx;
import com.byazt.jw.j;
import com.byazt.jw.q;
import com.byazt.jw.w;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 1043, 34})
/* loaded from: classes2.dex */
public class l implements q {

    /* renamed from: a, reason: collision with root package name */
    public volatile Handler f20201a;
    public w eb;

    /* renamed from: l, reason: collision with root package name */
    public volatile int f20202l = 0;

    /* renamed from: s, reason: collision with root package name */
    public final Comparator<com.byazt.jw.l> f20203s = new Comparator<com.byazt.jw.l>() { // from class: com.byazt.fxy.l.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(com.byazt.jw.l lVar, com.byazt.jw.l lVar2) {
            return l.this.hp(lVar, lVar2);
        }
    };

    /* renamed from: w, reason: collision with root package name */
    public volatile jx f20204w;
    public static final com.byazt.xe.hp hp = new com.byazt.xe.hp();
    public static final long jx = System.currentTimeMillis();

    /* renamed from: j, reason: collision with root package name */
    public static long f20200j = 0;

    public l(w wVar) {
        this.eb = wVar;
    }

    public jx j() {
        return this.f20204w;
    }

    public boolean jx() {
        return this.f20202l == 2;
    }

    public boolean l() {
        return this.f20202l == 1;
    }

    public void hp(int i2) {
        this.f20202l = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hp(com.byazt.jw.l lVar, com.byazt.jw.l lVar2) {
        long jHp;
        long jL;
        long jL2;
        long jHp2;
        if (lVar == null) {
            return lVar2 == null ? 0 : -1;
        }
        if (lVar2 == null) {
            return 1;
        }
        if (lVar.w() == lVar2.w()) {
            if (lVar.hp() != null) {
                jHp = lVar.hp().hp();
                jL = lVar.hp().l();
            } else {
                jHp = 0;
                jL = 0;
            }
            if (lVar2.hp() != null) {
                jHp2 = lVar2.hp().hp();
                jL2 = lVar2.hp().l();
            } else {
                jL2 = 0;
                jHp2 = 0;
            }
            if (jHp == 0 || jHp2 == 0) {
                return 0;
            }
            long j2 = jHp - jHp2;
            if (Math.abs(j2) > 2147483647L) {
                return 0;
            }
            if (j2 != 0) {
                return (int) j2;
            }
            if (jL == 0 || jL2 == 0) {
                return 0;
            }
            return (int) (jL - jL2);
        }
        return lVar.w() - lVar2.w();
    }

    @Override // com.byazt.jw.q
    public void hp(boolean z2) {
        w wVar = this.eb;
        if (wVar == null) {
            return;
        }
        hp(wVar.w());
        if (z2) {
            hp();
        }
    }

    public void hp(Handler handler) {
        this.f20201a = handler;
    }

    public boolean hp(String str) {
        try {
            if (this.f20204w != null || com.byazt.mdk.hp.hp(str) || this.eb == null) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f20204w != null) {
                        return false;
                    }
                    this.f20204w = new jx(this.eb, this);
                    this.f20204w.a();
                    return true;
                } finally {
                }
            }
        } catch (Throwable th) {
            com.byazt.giz.jx.hp(th.getMessage(), this.eb);
            return false;
        }
    }

    @Override // com.byazt.jw.q
    public void hp(com.byazt.jw.l lVar) {
        w wVar;
        if (lVar != null && (wVar = this.eb) != null) {
            String strW = wVar.w();
            lVar.hp(System.currentTimeMillis());
            hp(strW);
            j jVarJ = this.eb.j();
            jx jxVar = this.f20204w;
            if (jxVar != null) {
                hp(jVarJ, lVar);
                jxVar.hp(lVar, lVar.w() == 4);
                return;
            }
            return;
        }
        com.byazt.giz.jx.l("error : log config is null", this.eb);
    }

    private void hp(final j jVar, com.byazt.jw.l lVar) {
        if (jVar != null) {
            try {
                if (jVar.jx()) {
                    final long jL = (lVar == null || lVar.hp() == null) ? 0L : lVar.hp().l();
                    if (jL == 1) {
                        f20200j = System.currentTimeMillis();
                    }
                    com.byazt.xe.hp hpVar = hp;
                    AtomicLong atomicLongXs = hpVar.xs();
                    com.byazt.giz.l.hp(atomicLongXs, 1, this.eb);
                    if (com.byazt.giz.hp.hp(lVar)) {
                        hpVar.vv().incrementAndGet();
                    } else if (com.byazt.giz.hp.l(lVar)) {
                        hpVar.sz().incrementAndGet();
                    }
                    if (atomicLongXs.get() == 200) {
                        try {
                            if (Looper.getMainLooper() == Looper.myLooper()) {
                                Executor executorS = jVar.s();
                                if (executorS == null) {
                                    executorS = jVar.q();
                                }
                                if (executorS != null) {
                                    executorS.execute(new com.byazt.ykv.l(PointCategory.REPORT) { // from class: com.byazt.fxy.l.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            l.this.hp(jVar, jL);
                                        }
                                    });
                                }
                            } else {
                                hp(jVar, jL);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(j jVar, long j2) {
        jx jxVar = this.f20204w;
        if (jVar == null || jxVar == null) {
            return;
        }
        com.byazt.xe.hp hpVar = hp;
        jxVar.hp(jVar.hp(hpVar.hp(j2, this.eb)), true);
        hpVar.a();
    }

    @Override // com.byazt.jw.q
    public void hp() {
        w wVar = this.eb;
        if (wVar == null || wVar.j() == null) {
            return;
        }
        j jVarJ = wVar.j();
        final jx jxVar = this.f20204w;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            if (jxVar != null) {
                jxVar.hp(72, "start_child2");
            }
        } else {
            Executor executorS = jVarJ.s();
            if (executorS == null) {
                executorS = jVarJ.q();
            }
            if (executorS == null) {
                return;
            }
            executorS.execute(new com.byazt.ykv.l("flush") { // from class: com.byazt.fxy.l.3
                @Override // java.lang.Runnable
                public void run() {
                    jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(72, "start_child1");
                    }
                }
            });
        }
    }
}
