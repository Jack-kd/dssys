package com.byazt.ji;

import android.content.Context;
import android.view.View;
import com.byazt.eb.w;
import com.byazt.qre.j;
import com.byazt.toc.gu;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 753, 30})
/* loaded from: classes.dex */
public class jx implements w {
    public final com.byazt.aqw.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21499j;
    public gu jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ys.hp f21500l;

    public jx(Context context, com.byazt.aqw.hp hpVar, com.byazt.ys.hp hpVar2, boolean z2) {
        this.hp = hpVar;
        this.f21500l = hpVar2;
        this.f21499j = z2;
        if (hpVar != null) {
            this.jx = new gu(context);
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        final com.byazt.tl.l lVarE;
        com.byazt.iqm.l lVar = new com.byazt.iqm.l(1, this.hp.nu(), this.hp.lv());
        lVar.hp(this.f21499j);
        com.byazt.aqw.l lVarWv = this.hp.wv();
        if (lVarWv != null && (lVarE = lVarWv.e()) != null) {
            this.jx.hp(new j() { // from class: com.byazt.ji.jx.1
                @Override // com.byazt.qre.j
                public View hp(com.byazt.qre.jx jxVar) {
                    if (jxVar != null) {
                        return lVarE.hp(new com.byazt.ys.j(jxVar));
                    }
                    return null;
                }
            });
        }
        this.jx.hp(lVar, new com.byazt.qre.l() { // from class: com.byazt.ji.jx.2
            @Override // com.byazt.qre.l
            public void hp(com.byazt.dq.hp hpVar) {
                if (jx.this.f21500l != null) {
                    jx.this.f21500l.hp(hpVar.hp, hpVar.f19238l);
                }
            }

            @Override // com.byazt.qre.l
            public void hp() {
                if (jx.this.f21500l != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new hp(jx.this.jx));
                    jx.this.f21500l.hp(arrayList);
                }
            }
        });
    }
}
