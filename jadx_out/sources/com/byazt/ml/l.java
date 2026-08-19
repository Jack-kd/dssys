package com.byazt.ml;

import com.byazt.uhg.k;
import com.byazt.uhg.q;
import com.byazt.uhg.u;
import java.io.IOException;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 449, 34})
/* loaded from: classes3.dex */
public class l implements q.hp {
    public List<q> hp;
    public int jx = 0;

    /* renamed from: l, reason: collision with root package name */
    public k f23085l;

    public l(List<q> list, k kVar) {
        this.hp = list;
        this.f23085l = kVar;
    }

    @Override // com.byazt.uhg.q.hp
    public k hp() {
        return this.f23085l;
    }

    @Override // com.byazt.uhg.q.hp
    public u hp(k kVar) throws IOException {
        this.f23085l = kVar;
        int i2 = this.jx + 1;
        this.jx = i2;
        return this.hp.get(i2).hp(this);
    }
}
