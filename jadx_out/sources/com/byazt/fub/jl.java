package com.byazt.fub;

import com.byazt.fub.e;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 694, 19})
/* loaded from: classes2.dex */
public class jl implements e.hp {
    public v hp;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f20140j = new AtomicBoolean(false);
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public List<e> f20141l;

    public jl(List<e> list, q qVar) {
        this.f20141l = list;
        this.jx = qVar;
    }

    @Override // com.byazt.fub.e.hp
    public void hp() {
        this.jx.a();
        Iterator<e> it = this.f20141l.iterator();
        while (it.hasNext() && !it.next().hp(this)) {
        }
    }

    @Override // com.byazt.fub.e.hp
    public boolean jx() {
        return this.f20140j.get();
    }

    @Override // com.byazt.fub.e.hp
    public boolean l(e eVar) {
        int iIndexOf = this.f20141l.indexOf(eVar);
        return iIndexOf < this.f20141l.size() - 1 && iIndexOf >= 0;
    }

    @Override // com.byazt.fub.e.hp
    public v l() {
        return this.hp;
    }

    @Override // com.byazt.fub.e.hp
    public void hp(e eVar) {
        int iIndexOf = this.f20141l.indexOf(eVar);
        if (iIndexOf < 0) {
            return;
        }
        do {
            iIndexOf++;
            if (iIndexOf >= this.f20141l.size()) {
                return;
            }
        } while (!this.f20141l.get(iIndexOf).hp(this));
    }

    @Override // com.byazt.fub.e.hp
    public void hp(v vVar) {
        this.hp = vVar;
    }

    @Override // com.byazt.fub.e.hp
    public void hp(boolean z2) {
        this.f20140j.getAndSet(z2);
    }
}
