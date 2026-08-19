package com.byazt.pn;

import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.hq.d;
import com.byazt.hq.hq;
import com.byazt.hq.n;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.hq.zy;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 741, 28})
/* loaded from: classes3.dex */
public final class hp implements sz {
    public final zy hp;

    public hp(zy zyVar) {
        this.hp = zyVar;
    }

    @Override // com.byazt.hq.sz
    public hq hp(sz.hp hpVar) throws IOException {
        o oVarHp = hpVar.hp();
        o.hp hpVarA = oVarHp.a();
        d dVarJ = oVarHp.j();
        if (dVarJ != null) {
            n nVarHp = dVarJ.hp();
            if (nVarHp != null) {
                hpVarA.hp(AbstractC1114b.f5589g, nVarHp.toString());
            }
            long jL = dVarJ.l();
            if (jL != -1) {
                hpVarA.hp(c.f37366e, Long.toString(jL));
                hpVarA.l(c.f37369h);
            } else {
                hpVarA.hp(c.f37369h, "chunked");
                hpVarA.l(c.f37366e);
            }
        }
        boolean z2 = false;
        if (oVarHp.hp("Host") == null) {
            hpVarA.hp("Host", com.byazt.ru.jx.hp(oVarHp.hp(), false));
        }
        if (oVarHp.hp("Connection") == null) {
            hpVarA.hp("Connection", "Keep-Alive");
        }
        if (oVarHp.hp("Accept-Encoding") == null && oVarHp.hp(c.f37363b) == null) {
            hpVarA.hp("Accept-Encoding", "gzip");
            z2 = true;
        }
        List<com.byazt.hq.jl> listHp = this.hp.hp(oVarHp.hp());
        if (!listHp.isEmpty()) {
            hpVarA.hp(com.sigmob.sdk.base.e.f36239a, hp(listHp));
        }
        if (oVarHp.hp("User-Agent") == null) {
            hpVarA.hp("User-Agent", com.byazt.ru.j.hp());
        }
        hq hqVarHp = hpVar.hp(hpVarA.hp());
        w.hp(this.hp, oVarHp.hp(), hqVarHp.eb());
        hq.hp hpVarHp = hqVarHp.q().hp(oVarHp);
        if (z2 && "gzip".equalsIgnoreCase(hqVarHp.hp("Content-Encoding")) && w.jx(hqVarHp)) {
            com.byazt.raq.e eVar = new com.byazt.raq.e(hqVarHp.s().jx());
            hpVarHp.hp(hqVarHp.eb().l().l("Content-Encoding").l(c.f37366e).hp());
            hpVarHp.hp(new s(hqVarHp.hp(AbstractC1114b.f5589g), -1L, com.byazt.raq.jl.hp(eVar)));
        }
        return hpVarHp.hp();
    }

    private String hp(List<com.byazt.hq.jl> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append("; ");
            }
            com.byazt.hq.jl jlVar = list.get(i2);
            sb.append(jlVar.hp());
            sb.append('=');
            sb.append(jlVar.l());
        }
        return sb.toString();
    }
}
