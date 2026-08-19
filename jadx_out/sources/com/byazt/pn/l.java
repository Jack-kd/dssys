package com.byazt.pn;

import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.hq.wv;
import com.byazt.raq.vv;
import java.io.IOException;
import java.net.ProtocolException;

@com.byazt.kj.hp(hp = {0, 1, 741, 34})
/* loaded from: classes3.dex */
public final class l implements sz {
    public final boolean hp;

    @com.byazt.kj.hp(hp = {0, 1, 741, 123})
    public static final class hp extends com.byazt.raq.eb {
        public long hp;

        public hp(vv vvVar) {
            super(vvVar);
        }

        @Override // com.byazt.raq.eb, com.byazt.raq.vv
        public void a_(com.byazt.raq.jx jxVar, long j2) throws IOException {
            super.a_(jxVar, j2);
            this.hp += j2;
        }
    }

    public l(boolean z2) {
        this.hp = z2;
    }

    @Override // com.byazt.hq.sz
    public hq hp(sz.hp hpVar) throws IOException {
        wv wvVar;
        eb ebVar = (eb) hpVar;
        jx jxVarEb = ebVar.eb();
        com.byazt.tt.eb ebVarA = ebVar.a();
        com.byazt.tt.jx jxVar = (com.byazt.tt.jx) ebVar.w();
        o oVarHp = ebVar.hp();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (oVarHp != null && (wvVar = oVarHp.f20923a) != null) {
            wvVar.hp(jCurrentTimeMillis);
        }
        ebVar.call();
        jxVarEb.hp(oVarHp);
        ebVar.call();
        hq.hp hpVarHp = null;
        if (a.jx(oVarHp.l()) && oVarHp.j() != null) {
            if ("100-continue".equalsIgnoreCase(oVarHp.hp("Expect"))) {
                jxVarEb.hp();
                ebVar.call();
                hpVarHp = jxVarEb.hp(true);
            }
            if (hpVarHp == null) {
                ebVar.call();
                com.byazt.raq.j jVarHp = com.byazt.raq.jl.hp(new hp(jxVarEb.hp(oVarHp, oVarHp.j().l())));
                oVarHp.j().hp(jVarHp);
                jVarHp.close();
                ebVar.call();
            } else if (!jxVar.w()) {
                ebVarA.j();
            }
        }
        jxVarEb.l();
        if (hpVarHp == null) {
            ebVar.call();
            hpVarHp = jxVarEb.hp(false);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        wv wvVar2 = oVarHp.f20923a;
        if (wvVar2 != null) {
            wvVar2.l(jCurrentTimeMillis2);
        }
        hq hqVarHp = hpVarHp.hp(oVarHp).hp(ebVarA.l().j()).hp(jCurrentTimeMillis).l(jCurrentTimeMillis2).hp();
        ebVar.call();
        int iJx = hqVarHp.jx();
        hq hqVarHp2 = (this.hp && iJx == 101) ? hqVarHp.q().hp(com.byazt.ru.jx.jx).hp() : hqVarHp.q().hp(jxVarEb.hp(hqVarHp)).hp();
        if ("close".equalsIgnoreCase(hqVarHp2.hp().hp("Connection")) || "close".equalsIgnoreCase(hqVarHp2.hp("Connection"))) {
            ebVarA.j();
        }
        if ((iJx != 204 && iJx != 205) || hqVarHp2.s().l() <= 0) {
            return hqVarHp2;
        }
        throw new ProtocolException("HTTP " + iJx + " had non-zero Content-Length: " + hqVarHp2.s().l());
    }
}
