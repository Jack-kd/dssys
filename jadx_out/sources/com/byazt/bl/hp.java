package com.byazt.bl;

import com.byazt.qt.a;
import com.byazt.qt.j;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1567, 28})
/* loaded from: classes2.dex */
public class hp extends j {
    public final l hp;

    public hp(l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.qt.j
    public List<a> getFilterWords() {
        l lVar = this.hp;
        if (lVar == null) {
            return null;
        }
        return lVar.hp();
    }
}
