package com.byazt.bki;

import androidx.annotation.Nullable;

@com.byazt.kj.hp(hp = {0, 1, 732, 42})
/* loaded from: classes2.dex */
public class k {
    public boolean hp() {
        return true;
    }

    public boolean jx() {
        return true;
    }

    @Nullable
    public q l() {
        return null;
    }

    public static k hp(final com.byazt.fr.jx jxVar) {
        return new k() { // from class: com.byazt.bki.k.1
            @Override // com.byazt.bki.k
            public boolean hp() {
                com.byazt.fr.jx jxVar2 = jxVar;
                return jxVar2 != null ? jxVar2.q() : super.hp();
            }

            @Override // com.byazt.bki.k
            public boolean jx() {
                com.byazt.fr.jx jxVar2 = jxVar;
                return jxVar2 != null ? jxVar2.s() : super.jx();
            }

            @Override // com.byazt.bki.k
            public q l() {
                com.byazt.fr.j jVarV;
                com.byazt.fr.jx jxVar2 = jxVar;
                return (jxVar2 == null || (jVarV = jxVar2.v()) == null || jVarV.hp() == 0.0d || jVarV.l() == 0.0d) ? super.l() : new q(jVarV.hp(), jVarV.l());
            }
        };
    }
}
