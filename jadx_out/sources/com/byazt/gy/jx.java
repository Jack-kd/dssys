package com.byazt.gy;

import com.byazt.gy.l;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 776, 30})
/* loaded from: classes2.dex */
public abstract class jx<T, F extends l> {
    public final List<a<?>> hp = new CopyOnWriteArrayList();
    public F jx;

    /* renamed from: l, reason: collision with root package name */
    public T f20633l;

    public final F getContext() {
        return this.jx;
    }

    public final void hp(a<?> aVar) {
        if (aVar != null) {
            this.hp.add(aVar);
        }
    }

    public final void l(a<?> aVar) {
        if (aVar != null) {
            this.hp.remove(aVar);
        }
    }
}
