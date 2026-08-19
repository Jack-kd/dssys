package com.byazt.au;

@com.byazt.kj.hp(hp = {0, 1, 273, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.yk.eb {
    @Override // com.byazt.yk.eb
    public int hp(int i2, com.byazt.ip.jl jlVar) {
        if (jlVar.ordinal() <= com.byazt.ip.jl.MODERATE.ordinal()) {
            return 1;
        }
        return jlVar == com.byazt.ip.jl.GOOD ? i2 - 1 : i2;
    }
}
