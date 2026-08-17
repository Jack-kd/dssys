package com.byazt.dt;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, 19})
/* loaded from: classes2.dex */
public class jl extends eb<com.byazt.ch.j> {

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ch.j f19273j;

    public jl(List<com.byazt.ch.hp<com.byazt.ch.j>> list) {
        super(list);
        this.f19273j = new com.byazt.ch.j();
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.byazt.ch.j hp(com.byazt.ch.hp<com.byazt.ch.j> hpVar, float f2) {
        com.byazt.ch.j jVar;
        float f3;
        com.byazt.ch.j jVar2 = hpVar.hp;
        if (jVar2 == null || (jVar = hpVar.f18850l) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.byazt.ch.j jVar3 = jVar2;
        com.byazt.ch.j jVar4 = jVar;
        com.byazt.ch.jx<A> jxVar = this.jx;
        if (jxVar != 0) {
            f3 = f2;
            com.byazt.ch.j jVar5 = (com.byazt.ch.j) jxVar.hp(hpVar.f18846a, hpVar.eb.floatValue(), jVar3, jVar4, f3, j(), s());
            if (jVar5 != null) {
                return jVar5;
            }
        } else {
            f3 = f2;
        }
        this.f19273j.hp(com.byazt.ze.q.hp(jVar3.hp(), jVar4.hp(), f3), com.byazt.ze.q.hp(jVar3.l(), jVar4.l(), f3));
        return this.f19273j;
    }
}
