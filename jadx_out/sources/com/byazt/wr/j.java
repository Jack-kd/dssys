package com.byazt.wr;

import android.text.TextUtils;
import com.byazt.toc.eb;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 722, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.mn.hp {
    public eb hp;

    public j(eb ebVar) {
        this.hp = ebVar;
    }

    public void loadByAdm(String str, final com.byazt.p000if.l lVar) {
        eb ebVar;
        if (TextUtils.isEmpty(str) || (ebVar = this.hp) == null || lVar == null) {
            com.byazt.aw.l.j("TMe", "adm 参数错误 或者 drawTokenInfo is null");
        } else {
            ebVar.hp(str, new com.byazt.gpb.l() { // from class: com.byazt.wr.j.1
                @Override // com.byazt.gpb.l
                public void hp(List<com.byazt.rt.jx> list) {
                    if (list == null) {
                        lVar.hp(null);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (com.byazt.rt.jx jxVar : list) {
                        if (jxVar != null) {
                            arrayList.add(new hp(j.this.hp, jxVar, j.this.hp.ec()));
                        }
                    }
                    lVar.hp(arrayList);
                }

                @Override // com.byazt.gpb.l
                public void hp(com.byazt.dq.hp hpVar) {
                    if (hpVar != null) {
                        lVar.hp(hpVar.hp, hpVar.f19238l);
                    }
                }
            });
        }
    }

    @Override // com.byazt.mn.hp
    public void loadDrawAdByAdm(String str, com.byazt.p000if.l lVar) {
        loadByAdm(str, lVar);
    }
}
