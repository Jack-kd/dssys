package com.byazt.xc;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 592, 94})
/* loaded from: classes3.dex */
public class eb implements com.byazt.eb.w {
    public com.byazt.toc.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public w f27168j;
    public com.byazt.p000if.j jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f27169l;

    public eb(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.j jVar) {
        this.f27169l = hpVar;
        if (hpVar != null) {
            this.hp = new com.byazt.toc.hp(context);
            this.jx = jVar;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        this.hp.hp(new com.byazt.iqm.l(10, this.f27169l.nu(), this.f27169l.lv()), new com.byazt.to.l() { // from class: com.byazt.xc.eb.1
            @Override // com.byazt.to.l
            public void hp(com.byazt.dq.hp hpVar) {
                if (hpVar == null || eb.this.jx == null) {
                    return;
                }
                eb.this.jx.hp(hpVar.hp, hpVar.f19238l);
            }

            @Override // com.byazt.to.l
            public void l() {
                if (eb.this.jx != null) {
                    eb.this.jx.hp();
                    if (eb.this.f27168j == null) {
                        eb ebVar = eb.this;
                        ebVar.f27168j = new w(ebVar.hp);
                    }
                    eb.this.jx.l(eb.this.f27168j);
                }
            }

            @Override // com.byazt.to.l
            public void hp() {
                if (eb.this.jx != null) {
                    if (eb.this.f27168j == null) {
                        eb ebVar = eb.this;
                        ebVar.f27168j = new w(ebVar.hp);
                    }
                    eb.this.jx.hp(eb.this.f27168j);
                }
            }
        });
    }
}
