package com.byazt.tt;

import com.byazt.hq.nu;
import java.util.LinkedHashSet;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1478, 38})
/* loaded from: classes3.dex */
public final class j {
    public final Set<nu> hp = new LinkedHashSet();

    public synchronized void hp(nu nuVar) {
        this.hp.add(nuVar);
    }

    public synchronized boolean jx(nu nuVar) {
        return this.hp.contains(nuVar);
    }

    public synchronized void l(nu nuVar) {
        this.hp.remove(nuVar);
    }
}
