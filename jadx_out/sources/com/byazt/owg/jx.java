package com.byazt.owg;

import android.text.TextUtils;
import com.byazt.dnb.s;
import com.byazt.uid.eb;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.zn.ky;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1513, 30})
/* loaded from: classes3.dex */
public class jx implements w {

    /* renamed from: l, reason: collision with root package name */
    public static ReferenceQueue<Object> f24241l = new ReferenceQueue<>();
    public Map<Object, hp> hp = new ConcurrentHashMap();
    public final int jx;

    @com.byazt.kj.hp(hp = {0, 1, 1513, 219})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public String f24249l;

        public hp(String str, String str2) {
            this.hp = str;
            this.f24249l = str2;
        }
    }

    public jx(int i2) {
        this.jx = i2;
    }

    @Override // com.byazt.owg.w
    public boolean hp(String str) {
        return true;
    }

    @Override // com.byazt.owg.w
    public void l(final com.byazt.jt.l lVar, final List<mp> list) {
        if (TextUtils.isEmpty(lVar.n())) {
            s.w(new eb("PreloadStrategyRecovery-onNetworkResponse") { // from class: com.byazt.owg.jx.3
                @Override // java.lang.Runnable
                public void run() {
                    for (mp mpVar : list) {
                        if (mpVar.xe() <= 0) {
                            mpVar.w((System.currentTimeMillis() + 10500000) / 1000);
                        }
                        int unused = jx.this.jx;
                        lVar.j();
                        com.byazt.fe.w.hp(jx.this.jx).hp(lVar.j(), mpVar.sq(), false);
                    }
                }
            });
        }
    }

    @Override // com.byazt.owg.w
    public void hp(final com.byazt.jt.l lVar, final mp mpVar) {
        if (TextUtils.isEmpty(lVar.n())) {
            if (mpVar.xe() <= 0) {
                mpVar.w((System.currentTimeMillis() + 10500000) / 1000);
            }
            s.w(new eb("PreloadStrategyRecovery-onNetworkResponse") { // from class: com.byazt.owg.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = jx.this.jx;
                    lVar.j();
                    com.byazt.fe.w.hp(jx.this.jx).hp(lVar, mpVar, false);
                }
            });
        }
    }

    @Override // com.byazt.owg.w
    public void l(String str) {
        for (Reference<? extends Object> referencePoll = f24241l.poll(); referencePoll != null; referencePoll = f24241l.poll()) {
            hp hpVar = this.hp.get(referencePoll);
            if (hpVar != null) {
                com.byazt.fe.w.hp(this.jx).hp(hpVar.hp, hpVar.f24249l, false);
            }
        }
        com.byazt.fe.w.hp(this.jx).l(str);
        com.byazt.fe.w.hp(this.jx).jx(str);
    }

    @Override // com.byazt.owg.w
    public void hp(final com.byazt.jt.l lVar, final List<mp> list) {
        if (TextUtils.isEmpty(lVar.n())) {
            lVar.j();
            s.jx jxVarHp = com.byazt.xci.s.hp(this.jx);
            if (((jxVarHp != null ? jxVarHp.e() : 0) & 1) != 1) {
                return;
            }
            lVar.j();
            mp mpVar = list.get(0);
            if (mpVar != null) {
                try {
                    if (jxVarHp.hp("disable_trans_cache", new s.l.hp().hp(lVar).hp(mpVar).hp())) {
                        lVar.j();
                        return;
                    }
                } catch (Exception unused) {
                }
            }
            com.byazt.dnb.s.w(new eb("PreloadStrategyRecovery-onNetworkResponse") { // from class: com.byazt.owg.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    for (mp mpVar2 : list) {
                        if (mpVar2.xe() <= 0) {
                            mpVar2.w((System.currentTimeMillis() + 10500000) / 1000);
                        }
                        mpVar2.yr(104);
                        int unused2 = jx.this.jx;
                        lVar.j();
                        com.byazt.fe.w.hp(jx.this.jx).hp(lVar, mpVar2, false);
                    }
                }
            });
        }
    }

    @Override // com.byazt.owg.w
    public mp hp(String str, long j2) {
        s.jx jxVarHp = com.byazt.xci.s.hp(this.jx);
        mp mpVarHp = com.byazt.fe.w.hp(this.jx).hp(str, true, j2);
        if (mpVarHp != null && jxVarHp != null) {
            try {
                if (jxVarHp.hp("delete_on_load", new s.l.hp().hp(mpVarHp).hp())) {
                    com.byazt.fe.w.hp(this.jx).hp(str, mpVarHp.sq());
                }
            } catch (Exception unused) {
            }
        }
        return mpVarHp;
    }

    @Override // com.byazt.owg.w
    public List<mp> hp(String str, long j2, int i2, double d2) {
        s.jx jxVarHp = com.byazt.xci.s.hp(this.jx);
        List<mp> listHp = com.byazt.fe.w.hp(this.jx).hp(str, true, j2, i2, d2);
        for (mp mpVar : listHp) {
            if (mpVar != null && jxVarHp != null) {
                try {
                    if (jxVarHp.hp("delete_on_load", new s.l.hp().hp(mpVar).hp())) {
                        com.byazt.fe.w.hp(this.jx).hp(str, mpVar.sq());
                    }
                } catch (Exception unused) {
                }
            }
        }
        listHp.size();
        return listHp;
    }

    @Override // com.byazt.owg.w
    public void hp(final com.byazt.jt.l lVar, final mp mpVar, final Object obj, boolean z2) {
        final String strJ = lVar.j();
        s.jx jxVarHp = com.byazt.xci.s.hp(this.jx);
        int iE = jxVarHp != null ? jxVarHp.e() : 0;
        if (z2) {
            if (mpVar.er() != 0) {
                this.hp.put(new PhantomReference(obj, f24241l), new hp(strJ, mpVar.sq()));
            }
        } else {
            if ((iE & 2) != 2) {
                return;
            }
            try {
                if (jxVarHp.hp("disable_trans_cache", new s.l.hp().hp(lVar).hp(mpVar).hp())) {
                    return;
                }
            } catch (Exception unused) {
            }
            com.byazt.dnb.s.w(new eb("PreloadStrategyRecovery-onLoad") { // from class: com.byazt.owg.jx.4
                @Override // java.lang.Runnable
                public void run() {
                    if (mpVar.er() != 0) {
                        jx.this.hp.put(new PhantomReference(obj, jx.f24241l), new hp(strJ, mpVar.sq()));
                    }
                    mpVar.yr(105);
                    com.byazt.fe.w.hp(jx.this.jx).hp(lVar, mpVar, true);
                }
            });
        }
    }

    @Override // com.byazt.owg.w
    public void hp(final mp mpVar) {
        final int iZy = ky.zy(mpVar);
        com.byazt.dnb.s.w(new eb("PreloadStrategyRecovery-onShow") { // from class: com.byazt.owg.jx.5
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                com.byazt.fe.w wVarHp = com.byazt.fe.w.hp(jx.this.jx);
                StringBuilder sb = new StringBuilder();
                sb.append(iZy);
                wVarHp.hp(sb.toString(), mpVar.sq());
                System.currentTimeMillis();
            }
        });
    }

    @Override // com.byazt.owg.w
    public void hp(String str, mp mpVar) {
        com.byazt.fe.w.hp(this.jx).hp(str, mpVar.sq());
    }
}
