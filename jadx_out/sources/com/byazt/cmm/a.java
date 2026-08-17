package com.byazt.cmm;

import com.byazt.nm.eb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

@com.byazt.kj.hp(hp = {0, 1, 1902, 54})
/* loaded from: classes2.dex */
public class a implements w {
    public List<com.byazt.nm.hp> hp = new ArrayList();

    public a(Queue<String> queue, com.byazt.jw.w wVar) {
        if (com.byazt.fxy.hp.hp(wVar)) {
            this.hp.add(new com.byazt.nm.jx(wVar.eb(), queue, wVar));
        }
        if (com.byazt.fxy.hp.w(wVar)) {
            this.hp.add(new com.byazt.nm.j(wVar.hp() != null ? wVar.hp() : wVar.s(), queue, wVar));
        }
        if (com.byazt.fxy.hp.l(wVar)) {
            this.hp.add(new com.byazt.nm.w(wVar.s(), queue, wVar));
        }
        if (com.byazt.fxy.hp.jx(wVar)) {
            this.hp.add(new com.byazt.nm.a(wVar.s(), queue, wVar));
        }
        if (com.byazt.fxy.hp.j(wVar)) {
            this.hp.add(new com.byazt.nm.l(wVar.q(), queue, wVar));
        }
        if (com.byazt.fxy.hp.a(wVar)) {
            this.hp.add(new eb(wVar.a(), queue, wVar));
        }
    }

    @Override // com.byazt.cmm.w
    public List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, String str) {
        return null;
    }

    @Override // com.byazt.cmm.w
    public int l() {
        return 0;
    }

    @Override // com.byazt.cmm.w
    public void hp(com.byazt.jw.l lVar, int i2, boolean z2) {
        Iterator<com.byazt.nm.hp> it = this.hp.iterator();
        while (it.hasNext()) {
            it.next().l(lVar);
        }
    }

    @Override // com.byazt.cmm.w
    public l hp(int i2, List<com.byazt.jw.l> list, int i3) {
        Iterator<com.byazt.nm.hp> it = this.hp.iterator();
        l lVarHp = null;
        while (it.hasNext()) {
            lVarHp = it.next().hp(i2, list, i3);
            if (lVarHp.hp()) {
                break;
            }
        }
        return lVarHp;
    }

    @Override // com.byazt.cmm.w
    public List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list) {
        Iterator<com.byazt.nm.hp> it = this.hp.iterator();
        while (it.hasNext()) {
            int i3 = i2;
            com.byazt.jw.l lVar2 = lVar;
            boolean z3 = z2;
            List<String> list2 = list;
            List<com.byazt.jw.l> listHp = it.next().hp(i3, lVar2, z3, list2, "get");
            if (listHp != null && listHp.size() != 0) {
                return listHp;
            }
            i2 = i3;
            lVar = lVar2;
            z2 = z3;
            list = list2;
        }
        return null;
    }

    @Override // com.byazt.cmm.w
    public boolean hp(int i2, String str, com.byazt.jw.l lVar) {
        Iterator<com.byazt.nm.hp> it = this.hp.iterator();
        while (it.hasNext()) {
            if (it.next().hp(i2, str, lVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.cmm.w
    public int hp() {
        int size = this.hp.size();
        int iHp = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iHp += this.hp.get(i2).hp();
        }
        return iHp;
    }
}
