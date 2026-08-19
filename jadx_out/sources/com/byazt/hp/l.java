package com.byazt.hp;

import com.byazt.jz.sz;
import com.byazt.qt.e;
import com.byazt.sr.l;
import com.byazt.xci.mp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 28, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.sr.l<List<e>> {
    public l(com.byazt.pc.l lVar) {
        super(lVar);
    }

    @Override // com.byazt.sr.l
    public /* bridge */ /* synthetic */ void hp(com.byazt.jt.l lVar, List list, List<e> list2) {
        hp2(lVar, (List<mp>) list, list2);
    }

    @Override // com.byazt.sr.l
    public void hp(com.byazt.jt.l lVar, List<mp> list, l.hp<List<e>> hpVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<mp> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new j(sz.getContext(), it.next(), 5, lVar));
        }
        if (hpVar != null) {
            hpVar.hp(arrayList);
        }
    }

    /* renamed from: hp, reason: avoid collision after fix types in other method */
    public void hp2(com.byazt.jt.l lVar, List<mp> list, List<e> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            mp mpVar = list.get(i2);
            e eVar = list2.get(i2);
            com.byazt.pc.l lVar2 = this.hp;
            if (lVar2 != null) {
                lVar2.l().hp(lVar, mpVar, (Object) eVar, false);
            }
        }
    }
}
