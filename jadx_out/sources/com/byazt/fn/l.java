package com.byazt.fn;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 588, 34})
/* loaded from: classes2.dex */
public abstract class l implements ns {
    public boolean hp = false;

    @Override // com.byazt.fn.ns
    public void hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.hp = true;
    }

    @Override // com.byazt.fn.ns
    public boolean hp() {
        return this.hp;
    }
}
