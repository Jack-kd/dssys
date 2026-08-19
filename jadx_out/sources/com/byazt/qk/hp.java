package com.byazt.qk;

import android.view.View;

@com.byazt.kj.hp(hp = {0, 1, 64, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public void hp(View view, float f2, float f3) {
    }

    public void l(View view, int i2) {
    }

    public void hp(View view, int i2) {
    }

    public void hp(View view, String str, int i2) {
    }

    public static hp hp(final com.byazt.qt.k kVar, final com.byazt.qrd.l lVar) {
        return new hp() { // from class: com.byazt.qk.hp.1
            @Override // com.byazt.qk.hp
            public void hp(View view, int i2) {
                com.byazt.qt.k kVar2 = kVar;
                if (kVar2 != null) {
                    com.byazt.rk.l.jx(kVar2.getLifecycleId());
                }
                com.byazt.qrd.l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(view, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void l(View view, int i2) {
                com.byazt.qt.k kVar2 = kVar;
                if (kVar2 != null) {
                    com.byazt.rk.l.hp(kVar2.getLifecycleId(), false);
                }
                com.byazt.qrd.l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.l(view, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, String str, int i2) {
                com.byazt.qrd.l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(view, str, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, float f2, float f3) {
                com.byazt.qrd.l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(view, f2, f3);
                }
            }
        };
    }

    public static hp hp(final com.byazt.qt.k kVar, final com.byazt.qrd.hp hpVar) {
        return new hp() { // from class: com.byazt.qk.hp.2
            @Override // com.byazt.qk.hp
            public void hp(View view, int i2) {
                com.byazt.qt.k kVar2 = kVar;
                if (kVar2 != null) {
                    com.byazt.rk.l.jx(kVar2.getLifecycleId());
                }
                com.byazt.qrd.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(view, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void l(View view, int i2) {
                com.byazt.qt.k kVar2 = kVar;
                if (kVar2 != null) {
                    com.byazt.rk.l.hp(kVar2.getLifecycleId(), false);
                }
                com.byazt.qrd.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.l(view, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, String str, int i2) {
                com.byazt.qrd.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(view, str, i2);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, float f2, float f3) {
                com.byazt.qrd.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(view, f2, f3);
                }
            }
        };
    }
}
