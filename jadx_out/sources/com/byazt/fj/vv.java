package com.byazt.fj;

import android.graphics.Path;
import com.byazt.dt.hp;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 65})
/* loaded from: classes2.dex */
public class vv implements zy, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19876a;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.na.s f19877j;
    public final boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f19878l;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.dt.zy f19879w;
    public final Path hp = new Path();
    public final l eb = new l();

    public vv(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.xs xsVar) {
        this.f19878l = xsVar.hp();
        this.jx = xsVar.jx();
        this.f19877j = sVar;
        com.byazt.dt.zy zyVarHp = xsVar.l().hp();
        this.f19879w = zyVarHp;
        jxVar.hp(zyVarHp);
        zyVarHp.hp(this);
    }

    private void l() {
        this.f19876a = false;
        this.f19877j.invalidateSelf();
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        l();
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        if (this.f19876a) {
            return this.hp;
        }
        this.hp.reset();
        if (this.jx) {
            this.f19876a = true;
            return this.hp;
        }
        Path pathEb = this.f19879w.eb();
        if (pathEb == null) {
            return this.hp;
        }
        this.hp.set(pathEb);
        this.hp.setFillType(Path.FillType.EVEN_ODD);
        this.eb.hp(this.hp);
        this.f19876a = true;
        return this.hp;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    @Override // com.byazt.fj.jx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(java.util.List<com.byazt.fj.jx> r6, java.util.List<com.byazt.fj.jx> r7) {
        /*
            r5 = this;
            r7 = 0
            r0 = 0
        L2:
            int r1 = r6.size()
            if (r0 >= r1) goto L39
            java.lang.Object r1 = r6.get(r0)
            com.byazt.fj.jx r1 = (com.byazt.fj.jx) r1
            boolean r2 = r1 instanceof com.byazt.fj.n
            if (r2 == 0) goto L26
            r2 = r1
            com.byazt.fj.n r2 = (com.byazt.fj.n) r2
            com.byazt.mo.ec$hp r3 = r2.getType()
            com.byazt.mo.ec$hp r4 = com.byazt.mo.ec.hp.SIMULTANEOUSLY
            if (r3 != r4) goto L26
            com.byazt.fj.l r1 = r5.eb
            r1.hp(r2)
            r2.hp(r5)
            goto L36
        L26:
            boolean r2 = r1 instanceof com.byazt.fj.ec
            if (r2 == 0) goto L36
            if (r7 != 0) goto L31
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
        L31:
            com.byazt.fj.ec r1 = (com.byazt.fj.ec) r1
            r7.add(r1)
        L36:
            int r0 = r0 + 1
            goto L2
        L39:
            com.byazt.dt.zy r6 = r5.f19879w
            r6.hp(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fj.vv.hp(java.util.List, java.util.List):void");
    }
}
