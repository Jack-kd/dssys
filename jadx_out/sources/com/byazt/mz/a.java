package com.byazt.mz;

import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.toc.q;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 663, 54})
/* loaded from: classes3.dex */
public class a implements com.byazt.eb.w {
    public q hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f23327j;
    public com.byazt.p000if.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f23328l;

    public a(Context context, com.byazt.aqw.hp hpVar, com.byazt.p000if.jx jxVar, boolean z2) {
        this.f23328l = hpVar;
        this.f23327j = z2;
        if (hpVar != null) {
            this.hp = new q(context);
            this.jx = jxVar;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        com.byazt.iqm.l lVar = new com.byazt.iqm.l(5, this.f23328l.nu(), this.f23328l.lv());
        lVar.hp(this.f23327j);
        this.hp.hp(lVar, new com.byazt.qjq.j() { // from class: com.byazt.mz.a.1
            @Override // com.byazt.qjq.j
            public void hp(@NonNull List<com.byazt.rt.jx> list) {
                if (list == null) {
                    hp(new com.byazt.dq.hp(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (a.this.jx != null) {
                    LinkedList linkedList = new LinkedList();
                    Iterator<com.byazt.rt.jx> it = list.iterator();
                    while (it.hasNext()) {
                        linkedList.add(new l(a.this.hp, it.next(), a.this.hp.ec()));
                    }
                    a.this.jx.hp(linkedList);
                }
            }

            @Override // com.byazt.qjq.j
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
                if (hpVar == null || a.this.jx == null) {
                    return;
                }
                a.this.jx.hp(hpVar.hp, hpVar.f19238l);
            }
        });
    }
}
