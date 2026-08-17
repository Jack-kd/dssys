package com.byazt.ba;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1812, 34})
/* loaded from: classes2.dex */
public class l implements jx {
    public List<j> hp = new CopyOnWriteArrayList();

    @Override // com.byazt.ba.jx
    public void hp(j jVar) {
        this.hp.add(jVar);
    }

    @Override // com.byazt.ba.jx
    public void hp(String str) {
        if (this.hp.isEmpty()) {
            return;
        }
        Iterator<j> it = this.hp.iterator();
        while (it.hasNext()) {
            it.next().hp(str);
        }
    }
}
