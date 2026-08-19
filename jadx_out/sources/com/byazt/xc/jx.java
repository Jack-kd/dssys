package com.byazt.xc;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 592, 30})
/* loaded from: classes3.dex */
public class jx implements com.byazt.eb.w {
    public com.byazt.toc.s hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f27172j;
    public com.byazt.p000if.j jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f27173l;

    public jx(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.j jVar) {
        this.f27173l = hpVar;
        if (hpVar != null) {
            this.hp = new com.byazt.toc.s(context);
            this.jx = jVar;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        this.hp.hp(new com.byazt.iqm.l(8, this.f27173l.nu(), this.f27173l.lv()), new com.byazt.sws.l() { // from class: com.byazt.xc.jx.1
            @Override // com.byazt.sws.l
            public void hp(com.byazt.dq.hp hpVar) {
                if (hpVar == null || jx.this.jx == null) {
                    return;
                }
                jx.this.jx.hp(hpVar.hp, hpVar.f19238l);
            }

            @Override // com.byazt.sws.l
            public void l() {
                if (jx.this.jx != null) {
                    jx.this.jx.hp();
                    if (jx.this.f27172j == null) {
                        jx jxVar = jx.this;
                        jxVar.f27172j = new hp(jxVar.hp);
                    }
                    jx.this.jx.l(jx.this.f27172j);
                }
            }

            @Override // com.byazt.sws.l
            public void hp() {
                if (jx.this.jx != null) {
                    if (jx.this.f27172j == null) {
                        jx jxVar = jx.this;
                        jxVar.f27172j = new hp(jxVar.hp);
                    }
                    jx.this.jx.hp(jx.this.f27172j);
                }
            }
        });
    }
}
