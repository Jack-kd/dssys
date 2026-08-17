package com.byazt.ha;

import java.util.Arrays;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1209, 42})
/* loaded from: classes2.dex */
public abstract class k<V, O> implements zy<V, O> {
    public final List<com.byazt.ch.hp<V>> hp;

    public k(List<com.byazt.ch.hp<V>> list) {
        this.hp = list;
    }

    @Override // com.byazt.ha.zy
    public List<com.byazt.ch.hp<V>> jx() {
        return this.hp;
    }

    @Override // com.byazt.ha.zy
    public boolean l() {
        return this.hp.isEmpty() || (this.hp.size() == 1 && this.hp.get(0).w());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.hp.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.hp.toArray()));
        }
        return sb.toString();
    }
}
