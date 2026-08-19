package com.byazt.wr;

import android.content.Context;
import com.byazt.eb.w;
import com.byazt.toc.eb;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 722, 30})
/* loaded from: classes3.dex */
public class jx implements w {
    public eb hp;
    public com.byazt.p000if.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f27111l;

    public jx(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.l lVar) {
        this.f27111l = hpVar;
        if (hpVar != null) {
            this.hp = new eb(context);
            this.jx = lVar;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        this.hp.hp(new com.byazt.iqm.l(9, this.f27111l.nu(), this.f27111l.lv()), new com.byazt.gpb.l() { // from class: com.byazt.wr.jx.1
            @Override // com.byazt.gpb.l
            public void hp(List<com.byazt.rt.jx> list) {
                if (list == null) {
                    hp(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (jx.this.jx != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<com.byazt.rt.jx> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new hp(jx.this.hp, it.next(), jx.this.hp.ec()));
                    }
                    jx.this.jx.hp(arrayList);
                }
            }

            @Override // com.byazt.gpb.l
            public void hp(com.byazt.dq.hp hpVar) {
                if (hpVar == null || jx.this.jx == null) {
                    return;
                }
                jx.this.jx.hp(hpVar.hp, hpVar.f19238l);
            }
        });
    }
}
