package com.byazt.zde;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.uq.w {
    public List<j> hp = new ArrayList();

    public l(View view, List<com.byazt.nw.hp> list) {
        Iterator<com.byazt.nw.hp> it = list.iterator();
        while (it.hasNext()) {
            j jVarHp = jx.hp().hp(view, it.next());
            if (jVarHp != null) {
                this.hp.add(jVarHp);
            }
        }
    }

    public void hp() {
        Iterator<j> it = this.hp.iterator();
        while (it.hasNext()) {
            try {
                it.next().jx();
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.byazt.uq.w
    public void l() {
        Iterator<j> it = this.hp.iterator();
        while (it.hasNext()) {
            try {
                it.next().l();
            } catch (Exception unused) {
            }
        }
    }
}
