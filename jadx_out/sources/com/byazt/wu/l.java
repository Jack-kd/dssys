package com.byazt.wu;

import com.anythink.core.api.ATAdConst;
import com.byazt.jz.s;
import com.byazt.pg.b;
import com.byazt.ym.j;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 480, 34})
/* loaded from: classes3.dex */
public class l {
    public int hp = 10000;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f27136j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27137l;

    public l(int i2) {
        this.f27137l = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Runnable runnable) {
        b bVar = (b) j.getService(ATAdConst.KEY.M_S);
        if (bVar != null && bVar.assertAndSetState(0, this.f27137l, true)) {
            l(3);
            hp();
        } else if (runnable != null) {
            l(1);
            runnable.run();
        }
    }

    public l hp(int i2) {
        this.hp = i2 <= 0 ? 10000 : i2 * 1000;
        return this;
    }

    public void hp(final Runnable runnable) {
        this.jx = System.currentTimeMillis();
        if (!hp.a()) {
            l(runnable);
            return;
        }
        if (s.u().nu()) {
            l(2);
            hp();
        } else if (!hp.hp()) {
            l(runnable);
        } else {
            e.hp().postDelayed(new Runnable() { // from class: com.byazt.wu.l.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!s.u().nu()) {
                        l.this.l(runnable);
                    } else {
                        l.this.l(2);
                        l.this.hp();
                    }
                }
            }, this.hp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        Runnable runnable = this.f27136j;
        if (runnable != null) {
            runnable.run();
        }
    }
}
