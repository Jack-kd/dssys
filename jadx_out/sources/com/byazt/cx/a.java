package com.byazt.cx;

import com.byazt.vu.eb;
import com.byazt.vu.s;
import com.byazt.xci.hd;

@com.byazt.kj.hp(hp = {0, 1, 301, 54})
/* loaded from: classes2.dex */
public class a {
    public com.byazt.luy.hp hp;
    public jx<s, eb> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.vu.l f19012l;

    public a(com.byazt.vu.l lVar, jx<s, eb> jxVar) {
        if (lVar == null || jxVar == null) {
            return;
        }
        this.f19012l = lVar;
        this.jx = jxVar;
        if (lVar.e() == 1) {
            this.hp = new com.byazt.ag.l();
        } else {
            this.hp = new com.byazt.ag.j();
        }
    }

    public boolean hp() {
        return this.hp instanceof com.byazt.ag.j;
    }

    public void l() {
        com.byazt.vu.l lVar = this.f19012l;
        if (lVar == null || this.jx == null) {
            return;
        }
        com.byazt.luy.hp hpVar = this.hp;
        if (hpVar instanceof com.byazt.ag.l) {
            hpVar.hp(lVar, new jx<s, eb>() { // from class: com.byazt.cx.a.1
                @Override // com.byazt.cx.jx
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void jx(s sVar) {
                    if (sVar != null) {
                        sVar.w(false);
                    }
                    a.this.jx.jx(sVar);
                }

                @Override // com.byazt.cx.jx
                public void l(s sVar) {
                    if (sVar != null) {
                        sVar.w(true);
                    }
                    a.this.jx.l(sVar);
                    com.byazt.qfg.s.hp(a.this.f19012l.gu());
                }

                @Override // com.byazt.cx.jx
                public void hp(eb ebVar) {
                    a.this.jx.hp(ebVar);
                }
            });
        } else {
            hpVar.hp(lVar, new jx<s, eb>() { // from class: com.byazt.cx.a.2
                @Override // com.byazt.cx.jx
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public void jx(s sVar) {
                    if (sVar != null) {
                        sVar.w(false);
                    }
                    a.this.jx.jx(sVar);
                }

                @Override // com.byazt.cx.jx
                public void l(s sVar) {
                    if (sVar != null) {
                        sVar.w(true);
                    }
                    a.this.jx.l(sVar);
                }

                @Override // com.byazt.cx.jx
                public void hp(eb ebVar) {
                    if (a.this.f19012l.jl() && a.this.f19012l.l() != null) {
                        hd.hp(a.this.f19012l.l(), 1);
                    }
                    new com.byazt.ag.l().hp(a.this.f19012l, a.this.jx);
                }
            });
        }
    }
}
