package com.byazt.nml;

import com.byazt.efq.a;
import com.byazt.ml.jx;
import com.byazt.uhg.jl;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 2520, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public static AtomicBoolean f23699l = new AtomicBoolean(true);

    private hp() {
    }

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

    public boolean l() {
        AtomicBoolean atomicBoolean = f23699l;
        if (atomicBoolean == null) {
            return true;
        }
        return atomicBoolean.get();
    }

    public static jl l(jl.hp hpVar) {
        return new a(hpVar);
    }

    public void hp(boolean z2) {
        f23699l.set(z2);
    }

    public static jl hp(jl.hp hpVar) {
        return new jx(hpVar);
    }
}
