package com.byazt.mz;

import android.text.TextUtils;
import com.byazt.toc.q;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 663, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.mn.l {
    public q hp;

    public hp(q qVar) {
        this.hp = qVar;
    }

    public void loadAdByAdm(String str, final com.byazt.p000if.jx jxVar) {
        q qVar;
        if (TextUtils.isEmpty(str) || (qVar = this.hp) == null || jxVar == null) {
            com.byazt.aw.l.j("TMe", "adm 参数错误 或者 nativeAdManager is null");
        } else {
            qVar.hp(str, new com.byazt.qjq.j() { // from class: com.byazt.mz.hp.1
                @Override // com.byazt.qjq.j
                public void hp(List<com.byazt.rt.jx> list) {
                    if (list == null) {
                        jxVar.hp(null);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (com.byazt.rt.jx jxVar2 : list) {
                        if (jxVar2 != null) {
                            arrayList.add(new l(hp.this.hp, jxVar2, hp.this.hp.ec()));
                        }
                    }
                    jxVar.hp(arrayList);
                }

                @Override // com.byazt.qjq.j
                public void hp(com.byazt.dq.hp hpVar) {
                    if (hpVar != null) {
                        jxVar.hp(hpVar.hp, hpVar.f19238l);
                    }
                }
            });
        }
    }

    @Override // com.byazt.mn.l
    public void loadNativeAdByAdm(String str, com.byazt.p000if.jx jxVar) {
        loadAdByAdm(str, jxVar);
    }
}
