package com.byazt.efq;

import com.byazt.hq.hq;
import com.byazt.uhg.gu;
import com.byazt.uhg.u;
import com.byazt.uhg.xs;

@com.byazt.kj.hp(hp = {0, 1, 1388, 150})
/* loaded from: classes2.dex */
public class q extends u {
    public hq hp;

    public q(hq hqVar) {
        this.hp = hqVar;
    }

    @Override // com.byazt.uhg.u
    public xs a() {
        return new e(this.hp.s());
    }

    @Override // com.byazt.uhg.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.hp.close();
    }

    @Override // com.byazt.uhg.u
    public com.byazt.uhg.a eb() {
        return new com.byazt.uhg.a(this.hp.eb().hp);
    }

    @Override // com.byazt.uhg.u
    public long hp() {
        return this.hp.k();
    }

    @Override // com.byazt.uhg.u
    public boolean j() {
        return this.hp.j();
    }

    @Override // com.byazt.uhg.u
    public int jx() {
        hq hqVar = this.hp;
        if (hqVar != null) {
            return hqVar.jx();
        }
        return 0;
    }

    @Override // com.byazt.uhg.u
    public long l() {
        return this.hp.zy();
    }

    @Override // com.byazt.uhg.u
    public gu s() {
        hq hqVar = this.hp;
        if (hqVar == null) {
            return null;
        }
        return new gu(hqVar.v());
    }

    public String toString() {
        return this.hp.toString();
    }

    @Override // com.byazt.uhg.u
    public String w() {
        return this.hp.w();
    }

    @Override // com.byazt.uhg.u
    public String hp(String str) {
        return this.hp.hp(str);
    }

    @Override // com.byazt.uhg.u
    public String hp(String str, String str2) {
        return this.hp.hp(str, str2);
    }
}
