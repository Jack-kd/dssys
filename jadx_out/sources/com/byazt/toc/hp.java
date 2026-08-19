package com.byazt.toc;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.toc.e;
import com.byazt.zg.k;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 225, 28})
/* loaded from: classes3.dex */
public class hp extends j {
    public com.byazt.to.l ec;
    public com.byazt.sdu.l hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.sdu.jx f25924l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f25925n;
    public com.byazt.to.hp sz;

    public hp(Context context) {
        super(context);
        this.f25925n = false;
        this.hp = new com.byazt.sdu.l() { // from class: com.byazt.toc.hp.3
            @Override // com.byazt.sws.hp
            public void a() {
                if (!k.hp()) {
                    hp.this.o();
                    if (hp.this.sz != null) {
                        hp.this.sz.a();
                        return;
                    }
                    return;
                }
                com.byazt.rt.jx jxVar = hp.this.f25950j;
                if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                    if (!k.jx()) {
                        String strHp = xs.hp();
                        hp hpVar = hp.this;
                        com.byazt.lsx.a.hp(hpVar.f25950j, hpVar.f25948a, 3, 1, hpVar.n() ? 1 : 0, strHp);
                        return;
                    }
                    hp hpVar2 = hp.this;
                    com.byazt.lsx.a.hp(hpVar2.f25950j, hpVar2.f25948a, 3, 0, hpVar2.n() ? 1 : 0, (String) null);
                }
                if (hp.this.di()) {
                    return;
                }
                hp.this.o();
                if (hp.this.sz != null) {
                    hp.this.sz.a();
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
            @Override // com.byazt.sws.hp
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void g_() {
                /*
                    r10 = this;
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    r0.b()
                    boolean r0 = com.byazt.zg.k.hp()
                    r1 = 0
                    if (r0 == 0) goto L5f
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.rt.jx r0 = r0.f25950j
                    if (r0 == 0) goto L43
                    java.lang.String r2 = "pangle"
                    java.lang.String r0 = r0.getAdNetWorkName()
                    boolean r0 = r2.equals(r0)
                    if (r0 == 0) goto L43
                    boolean r0 = com.byazt.zg.k.jx()
                    if (r0 != 0) goto L38
                    java.lang.String r7 = com.byazt.zg.xs.hp()
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.rt.jx r2 = r0.f25950j
                    com.byazt.iqm.l r3 = r0.f25948a
                    r5 = 1
                    boolean r6 = r0.n()
                    r4 = 5
                    com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r7)
                    return
                L38:
                    boolean r0 = com.byazt.zg.k.s()
                    if (r0 == 0) goto L43
                    java.lang.String r0 = com.byazt.zg.xs.hp()
                    goto L44
                L43:
                    r0 = r1
                L44:
                    com.byazt.toc.hp r2 = com.byazt.toc.hp.this
                    boolean r2 = r2.di()
                    if (r2 != 0) goto L5d
                    com.byazt.toc.hp r2 = com.byazt.toc.hp.this
                    com.byazt.to.hp r2 = com.byazt.toc.hp.hp(r2)
                    if (r2 == 0) goto L5d
                    com.byazt.toc.hp r2 = com.byazt.toc.hp.this
                    com.byazt.to.hp r2 = com.byazt.toc.hp.hp(r2)
                    r2.l()
                L5d:
                    r8 = r0
                    goto L71
                L5f:
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.to.hp r0 = com.byazt.toc.hp.hp(r0)
                    if (r0 == 0) goto L70
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.to.hp r0 = com.byazt.toc.hp.hp(r0)
                    r0.l()
                L70:
                    r8 = r1
                L71:
                    long r2 = java.lang.System.currentTimeMillis()
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.rt.jx r0 = r0.f25950j
                    boolean r0 = com.byazt.zg.xs.hp(r0)
                    if (r0 == 0) goto L8b
                    java.lang.String r1 = com.byazt.zg.xs.l()
                    long r4 = java.lang.System.currentTimeMillis()
                    long r4 = r4 - r2
                L88:
                    r6 = r4
                    r5 = r1
                    goto L8e
                L8b:
                    r4 = -1
                    goto L88
                L8e:
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    java.lang.String r0 = r0.f25956w
                    com.byazt.xoi.hp.w(r0)
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.rt.jx r2 = r0.f25950j
                    com.byazt.iqm.l r3 = r0.f25948a
                    boolean r4 = r0.n()
                    com.byazt.toc.hp r0 = com.byazt.toc.hp.this
                    com.byazt.rt.jx r0 = r0.f25950j
                    boolean r9 = r0.isClickListenRepeatOnce()
                    com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r8, r9)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.hp.AnonymousClass3.g_():void");
            }

            @Override // com.byazt.sws.hp
            public void h_() {
                hp.this.cx();
                if (hp.this.f25932u) {
                    if (!k.hp()) {
                        hp.this.o();
                        if (hp.this.sz != null) {
                            hp.this.sz.jx();
                            return;
                        }
                        return;
                    }
                    com.byazt.rt.jx jxVar = hp.this.f25950j;
                    if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                        if (!k.jx()) {
                            String strHp = xs.hp();
                            hp hpVar = hp.this;
                            com.byazt.lsx.a.hp(hpVar.f25950j, hpVar.f25948a, 2, 1, hpVar.n() ? 1 : 0, strHp);
                            return;
                        }
                        hp hpVar2 = hp.this;
                        com.byazt.lsx.a.hp(hpVar2.f25950j, hpVar2.f25948a, 2, 0, hpVar2.n() ? 1 : 0, (String) null);
                    }
                    if (hp.this.di()) {
                        return;
                    }
                    hp.this.o();
                    if (hp.this.sz != null) {
                        hp.this.sz.jx();
                    }
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
            @Override // com.byazt.sws.hp
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void hp() {
                /*
                    Method dump skipped, instructions count: 362
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.hp.AnonymousClass3.hp():void");
            }

            @Override // com.byazt.sws.hp
            public void j() {
                if (!k.hp()) {
                    hp.this.o();
                    if (hp.this.sz != null) {
                        hp.this.sz.j();
                        return;
                    }
                    return;
                }
                com.byazt.rt.jx jxVar = hp.this.f25950j;
                if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                    if (!k.jx()) {
                        String strHp = xs.hp();
                        hp hpVar = hp.this;
                        com.byazt.lsx.a.hp(hpVar.f25950j, hpVar.f25948a, 1, 1, hpVar.n() ? 1 : 0, strHp);
                        return;
                    }
                    hp hpVar2 = hp.this;
                    com.byazt.lsx.a.hp(hpVar2.f25950j, hpVar2.f25948a, 1, 0, hpVar2.n() ? 1 : 0, (String) null);
                }
                if (hp.this.di()) {
                    return;
                }
                hp.this.o();
                if (hp.this.sz != null) {
                    hp.this.sz.j();
                }
            }

            @Override // com.byazt.sws.hp
            public void w() {
                String strL;
                long jCurrentTimeMillis;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (xs.hp(hp.this.f25950j)) {
                    strL = xs.l();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strL = null;
                    jCurrentTimeMillis = -1;
                }
                String str = strL;
                long j2 = jCurrentTimeMillis;
                hp hpVar = hp.this;
                com.byazt.lsx.a.hp(hpVar.f25950j, hpVar.f25948a, (com.byazt.dq.hp) null, 2, hpVar.n() ? 1 : 0, str, j2);
                if (hp.this.sz != null) {
                    hp.this.sz.w();
                }
            }

            @Override // com.byazt.sws.hp
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
                String strL;
                long jCurrentTimeMillis;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (xs.hp(hp.this.f25950j)) {
                    strL = xs.l();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strL = null;
                    jCurrentTimeMillis = -1;
                }
                String str = strL;
                long j2 = jCurrentTimeMillis;
                hp hpVar2 = hp.this;
                com.byazt.lsx.a.hp(hpVar2.f25950j, hpVar2.f25948a, hpVar, 1, hpVar2.n() ? 1 : 0, str, j2);
                hp.this.hp(hpVar);
            }

            @Override // com.byazt.sws.hp
            public void hp(@NonNull com.byazt.ti.hp hpVar) {
                if (hp.this.sz != null) {
                    com.byazt.to.hp hpVar2 = hp.this.sz;
                    hp hpVar3 = hp.this;
                    hpVar2.hp(jl.hp(hpVar3.f25948a, hpVar, hpVar3.f25950j, (Map<String, Object>) null));
                }
            }
        };
        this.f25924l = new com.byazt.sdu.jx() { // from class: com.byazt.toc.hp.4
            @Override // com.byazt.kuv.hp
            public void hp() {
                String strL;
                long jCurrentTimeMillis;
                hp.this.f25925n = true;
                hp.this.ns();
                if (hp.this.sz != null) {
                    hp.this.sz.hp();
                }
                com.byazt.lyn.zy.hp().eb(hp.this.f25956w);
                if (hp.this.f25950j != null) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.hp(hp.this.f25956w, "show_listen") + "adSlotId：" + hp.this.f25950j.getAdNetworkSlotId() + "，广告类型：" + com.byazt.rt.hp.hp(hp.this.f25950j.getAdNetworkPlatformId()));
                    com.byazt.lyn.gu guVarHp = com.byazt.lyn.gu.hp();
                    hp hpVar = hp.this;
                    guVarHp.l(hpVar.f25956w, hpVar.f25950j.getAdNetworkSlotId());
                }
                hp hpVar2 = hp.this;
                hpVar2.hp(hpVar2.jx);
                hp hpVar3 = hp.this;
                hpVar3.jx(hpVar3.f25950j);
                com.byazt.rt.jx jxVar = hp.this.f25950j;
                if (jxVar != null) {
                    String adnName = jxVar.getAdnName();
                    hp hpVar4 = hp.this;
                    com.byazt.wgi.jx.hp(adnName, hpVar4.f25956w, hpVar4.f25950j.getAdNetworkSlotId());
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (xs.hp(hp.this.f25950j)) {
                    strL = xs.l();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strL = null;
                    jCurrentTimeMillis = -1;
                }
                String str = strL;
                long j2 = jCurrentTimeMillis;
                hp hpVar5 = hp.this;
                com.byazt.lsx.a.hp(hpVar5.f25950j, hpVar5.f25948a, hpVar5.n() ? 1 : 0, str, j2, false, hp.this.sz());
                hp hpVar6 = hp.this;
                com.byazt.qca.jx.hp(hpVar6.f25956w, hpVar6.f25950j);
            }

            @Override // com.byazt.kuv.hp
            public void j() {
                if (hp.this.sz != null) {
                    hp.this.sz.eb();
                }
            }

            @Override // com.byazt.kuv.hp
            public void jx() {
                hp.this.cx();
                hp hpVar = hp.this;
                if (hpVar.f25932u) {
                    hpVar.o();
                    if (hp.this.sz != null) {
                        hp.this.sz.jx();
                    }
                }
            }

            @Override // com.byazt.kuv.hp
            public void l() {
                String strL;
                long jCurrentTimeMillis;
                hp.this.b();
                if (hp.this.sz != null) {
                    hp.this.sz.l();
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (xs.hp(hp.this.f25950j)) {
                    strL = xs.l();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strL = null;
                    jCurrentTimeMillis = -1;
                }
                String str = strL;
                long j2 = jCurrentTimeMillis;
                hp hpVar = hp.this;
                com.byazt.rt.jx jxVar = hpVar.f25950j;
                com.byazt.iqm.l lVar = hpVar.f25948a;
                boolean zN = hpVar.n();
                com.byazt.lsx.a.hp(jxVar, lVar, zN ? 1 : 0, str, j2, hp.this.f25950j.isClickListenRepeatOnce());
            }

            @Override // com.byazt.kuv.hp
            public void w() {
                if (hp.this.sz != null) {
                    hp.this.sz.s();
                }
            }

            @Override // com.byazt.kuv.hp
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
                String strL;
                long jCurrentTimeMillis;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (xs.hp(hp.this.f25950j)) {
                    strL = xs.l();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strL = null;
                    jCurrentTimeMillis = -1;
                }
                String str = strL;
                long j2 = jCurrentTimeMillis;
                hp hpVar2 = hp.this;
                com.byazt.lsx.a.hp(hpVar2.f25950j, hpVar2.f25948a, hpVar, 1, hpVar2.n() ? 1 : 0, str, j2);
                hp.this.hp(hpVar);
            }
        };
    }

    private void l(Activity activity, Object obj, String str) {
        super.hp(activity, obj, str, new e.hp() { // from class: com.byazt.toc.hp.1
            @Override // com.byazt.toc.e.hp
            public void hp() {
                hp.this.hp(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            }
        });
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        com.byazt.to.l lVar = this.ec;
        if (lVar != null) {
            lVar.hp();
        }
    }

    @Override // com.byazt.toc.l
    public com.byazt.dq.jx f_() {
        if (this.f25925n) {
            return super.f_();
        }
        return null;
    }

    @Override // com.byazt.toc.e, com.byazt.toc.l
    public void jx() {
        if (this.f25950j == null) {
            com.byazt.xob.hp.hp().hp(this.jx.hp(false), this.f25956w, this.f25948a, vv(), this.f25950j);
        }
        super.jx();
        this.sz = null;
        this.ec = null;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void s() {
        com.byazt.to.l lVar = this.ec;
        if (lVar != null) {
            lVar.l();
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(com.byazt.dq.hp hpVar) {
        com.byazt.to.l lVar = this.ec;
        if (lVar != null) {
            lVar.hp(hpVar);
        }
    }

    public void hp(com.byazt.iqm.l lVar, com.byazt.to.l lVar2) {
        super.l(lVar);
        this.f25948a = lVar;
        this.ec = lVar2;
        this.f25953q = this.hp;
        q();
    }

    public void hp(Activity activity) {
        hp(activity, (Object) null, (String) null);
    }

    @Override // com.byazt.toc.j
    public void hp(Activity activity, Object obj, String str) {
        if (activity == null) {
            com.byazt.aw.l.j(MediationConstant.TAG, "activity can not be null !");
        } else {
            l(activity, obj, str);
            hp(this.f25950j);
        }
    }

    public void hp(com.byazt.to.hp hpVar) {
        this.sz = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.hp.2
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.sz != null) {
                    hp.this.sz.hp(hpVar);
                }
            }
        });
    }

    @Override // com.byazt.toc.j, com.byazt.toc.e
    public void hp(com.byazt.rt.jx jxVar, Activity activity, Object obj, String str) {
        if (jxVar != null) {
            if (jxVar.getSubAdType() == 1) {
                this.f25953q = this.f25924l;
            } else if (jxVar.getSubAdType() == 2) {
                this.f25953q = this.hp;
            }
        }
        super.hp(jxVar, activity, obj, str);
    }
}
