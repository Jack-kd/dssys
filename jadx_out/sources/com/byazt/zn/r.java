package com.byazt.zn;

import com.byazt.xci.mp;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

@com.byazt.kj.hp(hp = {0, 1, 442, 572})
/* loaded from: classes3.dex */
public class r {
    public static final Set<Integer> hp = new CopyOnWriteArraySet();

    /* renamed from: l, reason: collision with root package name */
    public static final com.byazt.ymw.o f28559l = new com.byazt.ymw.o() { // from class: com.byazt.zn.r.1
        @Override // com.byazt.ymw.o
        public boolean hp(int i2) {
            if (com.byazt.jz.sz.l().la()) {
                return r.hp.contains(Integer.valueOf(i2));
            }
            return true;
        }
    };

    public static com.byazt.an.hp hp(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        com.byazt.an.hp hpVar = new com.byazt.an.hp();
        hpVar.hp(mpVar.nu());
        hpVar.hp(mpVar.w_());
        hpVar.l(mpVar.j());
        return hpVar;
    }

    public static void l(int i2) {
        hp.remove(Integer.valueOf(i2));
        f28559l.l(i2);
    }

    public static void hp() {
        if (com.byazt.jz.sz.l().la()) {
            com.byazt.ymw.di.hp(f28559l);
        } else {
            hp.clear();
        }
    }

    public static void hp(int i2) {
        if (com.byazt.jz.sz.l().la()) {
            hp.add(Integer.valueOf(i2));
        }
        f28559l.jx(i2);
    }
}
