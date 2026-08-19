package com.byazt.efq;

import com.byazt.hq.n;
import com.byazt.hq.ud;
import com.byazt.uhg.xs;
import java.io.InputStream;

@com.byazt.kj.hp(hp = {0, 1, 1388, 45})
/* loaded from: classes2.dex */
public class e extends xs {
    public ud hp;

    public e(ud udVar) {
        this.hp = udVar;
    }

    @Override // com.byazt.uhg.xs, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ud udVar = this.hp;
        if (udVar != null) {
            udVar.close();
        }
    }

    @Override // com.byazt.uhg.xs
    public long hp() {
        ud udVar = this.hp;
        if (udVar != null) {
            return udVar.l();
        }
        return -1L;
    }

    @Override // com.byazt.uhg.xs
    public byte[] j() {
        try {
            return this.hp.w();
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    @Override // com.byazt.uhg.xs
    public InputStream jx() {
        ud udVar = this.hp;
        if (udVar != null) {
            return udVar.j();
        }
        return null;
    }

    @Override // com.byazt.uhg.xs
    public String l() {
        try {
            return this.hp.a();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.byazt.uhg.xs
    public com.byazt.uhg.e w() {
        n nVarHp;
        ud udVar = this.hp;
        if (udVar == null || (nVarHp = udVar.hp()) == null) {
            return null;
        }
        return new com.byazt.uhg.e(nVarHp.toString(), nVarHp.hp(), nVarHp.l(), nVarHp.jx() != null ? nVarHp.jx().name() : null);
    }
}
