package com.byazt.kf;

import android.text.TextUtils;
import com.byazt.gy.j;

@com.byazt.kj.hp(hp = {0, 1, 1169, 94})
/* loaded from: classes.dex */
public abstract class eb {
    public com.byazt.kt.l hp;

    /* renamed from: l, reason: collision with root package name */
    public String f22016l;

    public void hp() {
        com.byazt.kt.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(this.f22016l, com.byazt.np.l.STARTED);
        }
    }

    public void l() {
        com.byazt.kt.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(this.f22016l, com.byazt.np.l.REQED);
        }
    }

    public void hp(final boolean z2) {
        com.byazt.kt.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(this.f22016l, new j.hp() { // from class: com.byazt.kf.eb.1
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar2) {
                    if (lVar2 instanceof l) {
                        ((l) lVar2).f22025l = z2;
                    }
                }
            });
            this.hp.hp(this.f22016l, com.byazt.np.l.RECEIVED);
        }
    }

    public void hp(final String str, final boolean z2, final com.byazt.kd.jx jxVar) {
        com.byazt.kt.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(this.f22016l, new j.hp() { // from class: com.byazt.kf.eb.2
                @Override // com.byazt.gy.j.hp
                public void hp(com.byazt.gy.l lVar2) {
                    if (lVar2 instanceof l) {
                        l lVar3 = (l) lVar2;
                        lVar3.jx = z2;
                        lVar3.f22024j = jxVar;
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        lVar3.f22026w.add(str);
                    }
                }
            });
            if (!TextUtils.isEmpty(str)) {
                ((com.byazt.kt.jx) com.byazt.gy.w.hp(1)).hp(str, new j.hp() { // from class: com.byazt.kf.eb.3
                    @Override // com.byazt.gy.j.hp
                    public void hp(com.byazt.gy.l lVar2) {
                        if (lVar2 instanceof jx) {
                            ((jx) lVar2).hp = eb.this.f22016l;
                        }
                    }
                });
            }
            this.hp.hp(this.f22016l, com.byazt.np.l.LOADED);
        }
    }
}
