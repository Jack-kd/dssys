package com.byazt.ag;

import com.byazt.dnb.gu;
import com.byazt.jz.sz;
import com.byazt.vu.eb;
import com.byazt.vu.s;
import com.byazt.xci.mp;
import com.byazt.zn.k;
import com.byazt.zn.u;

@com.byazt.kj.hp(hp = {0, 1, 233, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.luy.hp {
    public eb hp = new eb();

    private void l(final com.byazt.vu.l lVar, final com.byazt.cx.jx<s, eb> jxVar) {
        if (lVar == null || jxVar == null) {
            return;
        }
        this.hp.l(lVar.zy());
        this.hp.hp(lVar.l());
        if (sz.l().s(lVar.s()) == 4) {
            s sVar = new s(lVar.l(), lVar.zy());
            sVar.hp(false);
            sVar.hp(lVar.hp());
            sVar.hp(lVar.jx());
            jxVar.l(sVar);
            return;
        }
        com.byazt.er.l lVarJ = lVar.j();
        if (lVarJ == null) {
            this.hp.l(2);
            this.hp.hp("image request fail");
            this.hp.hp(false);
            jxVar.hp(this.hp);
            return;
        }
        com.byazt.kl.hp.hp("Splash_FullLink", "加载图片素材 " + lVar.l().ns());
        u.hp(lVarJ, lVar.w(), lVar.a(), new u.hp() { // from class: com.byazt.ag.l.1
            @Override // com.byazt.zn.u.hp
            public void hp(com.byazt.pjc.l lVar2, com.byazt.nke.u uVar) {
                s sVar2 = new s(lVar2, lVar.l(), lVar.zy());
                sVar2.hp(false);
                sVar2.hp(lVar.hp());
                sVar2.w(lVar.jx());
                if (uVar != null) {
                    sVar2.hp(uVar.getHeaders());
                    sVar2.l(uVar.isLocal());
                    sVar2.l(k.hp(uVar.getHeaders()));
                    if (uVar.getHttpTime() != null) {
                        sVar2.l(uVar.getHttpTime().getFirstFrameTime());
                        sVar2.jx(uVar.getHttpTime().getStartRequestTime());
                        sVar2.j(uVar.getHttpTime().getEndRequestTime());
                    }
                }
                jxVar.l(sVar2);
            }

            @Override // com.byazt.zn.u.hp
            public void hp() {
                l.this.hp.l(2);
                l.this.hp.hp("load image fail");
                l.this.hp.hp(false);
                jxVar.hp(l.this.hp);
            }
        }, gu.w(), 4, new com.byazt.nke.sz() { // from class: com.byazt.ag.l.2
            @Override // com.byazt.nke.sz
            public void onStep(int i2, Object obj) {
                if (i2 == 3 && l.this.hp(lVar)) {
                    s sVar2 = new s(lVar.l(), lVar.zy());
                    sVar2.hp(false);
                    sVar2.hp(lVar.hp());
                    sVar2.hp(lVar.jx());
                    sVar2.j(true);
                    sVar2.l(false);
                    jxVar.jx(sVar2);
                }
            }
        }, true);
    }

    @Override // com.byazt.luy.hp
    public void hp(com.byazt.vu.l lVar, com.byazt.cx.jx<s, eb> jxVar) {
        l(lVar, jxVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(com.byazt.vu.l lVar) {
        mp mpVarL;
        if (lVar == null || (mpVarL = lVar.l()) == null) {
            return false;
        }
        int iVx = mpVarL.vx();
        return iVx == 3 || iVx == 4;
    }
}
