package com.byazt.el;

import com.byazt.jz.s;
import com.byazt.ym.j;

@com.byazt.kj.hp(hp = {0, 1, 1979, 28})
/* loaded from: classes2.dex */
public class hp {
    public static hp hp;

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static String j() {
        return s.u().ns();
    }

    public static String jx() {
        return s.u().ns();
    }

    public static String l() {
        return s.u().ns();
    }

    public static com.byazt.pg.hp w() {
        return j.getAppContext(j());
    }

    public com.byazt.pg.hp hp(String str) {
        return j.getAppContext(str);
    }
}
