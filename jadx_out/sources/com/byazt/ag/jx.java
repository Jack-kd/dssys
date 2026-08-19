package com.byazt.ag;

import android.text.TextUtils;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.vu.a;
import com.byazt.vu.eb;
import com.byazt.vu.w;

@com.byazt.kj.hp(hp = {0, 1, 233, 30})
/* loaded from: classes2.dex */
public class jx {
    public eb hp = new eb();
    public int jx = 3;

    /* renamed from: l, reason: collision with root package name */
    public final cx f17997l = sz.hp();

    public void hp(final w wVar, final com.byazt.cx.l<a, eb> lVar) {
        if (this.f17997l == null || wVar == null) {
            return;
        }
        this.hp.l(false);
        this.f17997l.hp(wVar.j(), wVar.w(), this.jx, new cx.l() { // from class: com.byazt.ag.jx.1
            @Override // com.byazt.jz.cx.l
            public void hp(int i2, String str, com.byazt.xci.l lVar2) {
                jx.this.hp.l(i2);
                jx.this.hp.jx(lVar2 != null ? lVar2.jx() : 0);
                if (TextUtils.isEmpty(str)) {
                    str = "load ad error";
                }
                jx.this.hp.hp(str);
                lVar.hp(jx.this.hp);
            }

            @Override // com.byazt.jz.cx.l
            public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar2) {
                if (hpVar == null || hpVar.l() == null) {
                    jx.this.hp.l(1);
                    jx.this.hp.hp("no ad or material");
                    lVar.hp(jx.this.hp);
                    return;
                }
                a aVar = new a(hpVar, false);
                aVar.l(lVar2.q());
                aVar.jx(lVar2.e());
                aVar.j(lVar2.gu());
                aVar.w(lVar2.jl());
                aVar.hp(wVar.hp());
                aVar.hp(wVar.jx());
                lVar.l(aVar);
            }
        });
    }
}
