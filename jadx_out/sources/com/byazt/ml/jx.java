package com.byazt.ml;

import android.text.TextUtils;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;

@com.byazt.kj.hp(hp = {0, 1, 449, 30})
/* loaded from: classes3.dex */
public final class jx extends jl {
    public j jl;

    public jx(jl.hp hpVar) {
        super(hpVar);
        this.jl = new j();
    }

    @Override // com.byazt.uhg.jl
    public com.byazt.uhg.j hp() {
        return this.jl;
    }

    @Override // com.byazt.uhg.jl
    public com.byazt.uhg.l hp(k kVar) {
        kVar.hp(this);
        if (kVar.l() == null || kVar.l().hp() == null || TextUtils.isEmpty(kVar.l().hp().toString())) {
            return null;
        }
        return new hp(kVar, this.jl);
    }
}
