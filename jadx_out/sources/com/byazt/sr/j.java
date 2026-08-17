package com.byazt.sr;

import android.text.TextUtils;
import com.byazt.dnb.gu;
import com.byazt.dnb.s;
import com.byazt.jz.sz;
import com.byazt.qk.b;
import com.byazt.qk.cx;
import com.byazt.qk.di;
import com.byazt.qt.k;
import com.byazt.sr.l;
import com.byazt.um.e;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.tw;
import com.byazt.ymw.e;
import com.byazt.zn.ky;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 21, 38})
/* loaded from: classes3.dex */
public class j extends l<List<k>> {
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public List<Long> f25538l;

    public j(com.byazt.pc.l lVar, int i2) {
        super(lVar);
        this.f25538l = new CopyOnWriteArrayList();
        this.jx = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final com.byazt.jt.l lVar, final List<mp> list, final l.hp<List<k>> hpVar) {
        s.jx(new Runnable() { // from class: com.byazt.sr.j.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    k kVarHp = j.this.hp(lVar, (mp) it.next());
                    if (kVarHp != null) {
                        arrayList.add(kVarHp);
                    }
                }
                l.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(arrayList);
                }
            }
        });
    }

    @Override // com.byazt.sr.l
    public /* bridge */ /* synthetic */ void hp(com.byazt.jt.l lVar, List list, List<k> list2) {
        hp2(lVar, (List<mp>) list, list2);
    }

    @Override // com.byazt.sr.l
    public void hp(com.byazt.jt.l lVar, List<mp> list, l.hp<List<k>> hpVar) {
        final com.byazt.jt.l lVar2;
        final List<mp> list2;
        final l.hp<List<k>> hpVar2;
        if (list != null && !list.isEmpty()) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            this.f25538l.add(Long.valueOf(jCurrentTimeMillis));
            int[] iArr = {0};
            final int[] iArr2 = {list.size()};
            if (sz.l().sq() > 0) {
                lVar2 = lVar;
                list2 = list;
                hpVar2 = hpVar;
                e.hp().postDelayed(new Runnable() { // from class: com.byazt.sr.j.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (this) {
                            try {
                                if (j.this.f25538l.contains(Long.valueOf(jCurrentTimeMillis))) {
                                    j.this.f25538l.remove(Long.valueOf(jCurrentTimeMillis));
                                    j.this.l(lVar2, list2, hpVar2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }, sz.l().sq());
            } else {
                lVar2 = lVar;
                list2 = list;
                hpVar2 = hpVar;
            }
            for (mp mpVar : list2) {
                final l.hp<List<k>> hpVar3 = hpVar2;
                final List<mp> list3 = list2;
                final com.byazt.jt.l lVar3 = lVar2;
                final long j2 = jCurrentTimeMillis;
                final int[] iArr3 = iArr;
                com.byazt.la.jx jxVar = new com.byazt.la.jx() { // from class: com.byazt.sr.j.2
                    @Override // com.byazt.la.jx
                    public void hp(String str) {
                        synchronized (this) {
                            int[] iArr4 = iArr3;
                            int i2 = iArr4[0] + 1;
                            iArr4[0] = i2;
                            j.this.hp(j2, lVar3, (List<mp>) list3, (l.hp<List<k>>) hpVar3, i2, iArr2[0]);
                        }
                    }

                    @Override // com.byazt.la.jx
                    public void hp() {
                        synchronized (this) {
                            int[] iArr4 = iArr2;
                            int i2 = iArr4[0] - 1;
                            iArr4[0] = i2;
                            j.this.hp(j2, lVar3, (List<mp>) list3, (l.hp<List<k>>) hpVar3, iArr3[0], i2);
                        }
                    }
                };
                jCurrentTimeMillis = j2;
                lVar2 = lVar3;
                list2 = list3;
                hpVar2 = hpVar3;
                hp(mpVar, jxVar);
                iArr = iArr3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, com.byazt.jt.l lVar, List<mp> list, l.hp<List<k>> hpVar, int i2, int i3) {
        if (this.f25538l.contains(Long.valueOf(j2))) {
            if (sz.l().rf() != 1 || i2 == i3) {
                this.f25538l.remove(Long.valueOf(j2));
                l(lVar, list, hpVar);
            }
        }
    }

    private void hp(mp mpVar, com.byazt.la.jx jxVar) {
        if (hd.gu(mpVar)) {
            com.byazt.bz.hp.hp(mpVar, jxVar);
            return;
        }
        if (hd.e(mpVar)) {
            tw twVarA = hd.a(mpVar);
            if (twVarA != null) {
                com.byazt.la.e.hp(twVarA.q(), twVarA.e(), jxVar);
                return;
            }
            return;
        }
        jxVar.hp(null);
    }

    /* renamed from: hp, reason: avoid collision after fix types in other method */
    public void hp2(com.byazt.jt.l lVar, List<mp> list, List<k> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            k kVar = list2.get(i2);
            mp mpVar = list.get(i2);
            com.byazt.pc.l lVar2 = this.hp;
            if (lVar2 != null) {
                lVar2.l().hp(lVar, mpVar, (Object) kVar, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k hp(com.byazt.jt.l lVar, mp mpVar) {
        boolean z2 = df.v(mpVar) != null;
        int i2 = this.jx;
        if (i2 == 1) {
            if (z2) {
                return new com.byazt.ux.jx(sz.getContext(), mpVar, lVar);
            }
            return new com.byazt.ux.l(sz.getContext(), mpVar, lVar);
        }
        if (i2 != 5) {
            if (i2 != 9) {
                return null;
            }
            return new b(sz.getContext(), mpVar, lVar, this.jx);
        }
        if (z2) {
            return new di(sz.getContext(), mpVar, lVar, this.jx);
        }
        return new cx(sz.getContext(), mpVar, lVar, this.jx);
    }

    @Override // com.byazt.sr.l, com.byazt.esb.hp
    public void hp(int i2, com.byazt.jt.l lVar, mp mpVar) {
        int i3;
        if (mpVar == null) {
            return;
        }
        String strW = (lVar == null || !((i3 = this.jx) == 3 || i3 == 4)) ? null : gu.w();
        com.byazt.we.hp.l(mpVar);
        if (mpVar.qb() && mpVar.vi() != null && !mpVar.vi().isEmpty()) {
            for (dy dyVar : mpVar.vi()) {
                if (!TextUtils.isEmpty(dyVar.hp())) {
                    com.byazt.cm.w.hp().jx().hp(new com.byazt.er.l(dyVar.hp(), dyVar.eb()), com.byazt.pjc.hp.l(), dyVar.l(), dyVar.jx(), strW);
                }
            }
        }
        if (TextUtils.isEmpty(df.hp(mpVar))) {
            return;
        }
        if (sz.l().j(String.valueOf(ky.zy(mpVar))) && sz.l().lr()) {
            com.byazt.tw.a aVarHp = df.hp(4, mpVar);
            aVarHp.putExtra("material_meta", mpVar);
            aVarHp.putExtra("ad_slot", Integer.valueOf(i2));
            com.byazt.cwe.jx.hp(aVarHp, (e.hp) null);
        }
    }
}
