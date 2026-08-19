package com.byazt.aq;

import com.byazt.uhg.k;
import com.byazt.uhg.q;
import com.byazt.uhg.u;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 403, 54})
/* loaded from: classes2.dex */
public class a implements q {
    public int hp;

    public void hp(int i2) {
        this.hp = i2;
    }

    @Override // com.byazt.uhg.q
    public u hp(q.hp hpVar) throws IOException {
        IOException iOException;
        k kVarHp = hpVar.hp();
        if (eb.hp().hp(this.hp).l() != null) {
            eb.hp().hp(this.hp).l().w();
        }
        String string = kVarHp.l().toString();
        String strHp = eb.hp().hp(this.hp).hp(string);
        if (!string.equals(strHp)) {
            kVarHp = kVarHp.eb().hp(strHp).l();
        }
        u uVarHp = null;
        try {
            iOException = null;
            uVarHp = hpVar.hp(kVarHp);
        } catch (Exception e2) {
            iOException = new IOException(e2.getMessage());
            eb.hp().hp(this.hp).hp(kVarHp, e2);
        }
        eb.hp().hp(this.hp).hp(kVarHp, uVarHp);
        if (iOException == null) {
            return uVarHp == null ? hpVar.hp(kVarHp) : uVarHp;
        }
        throw iOException;
    }
}
