package com.byazt.sv;

import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.hq.b;
import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.hq.ud;
import com.byazt.hq.vv;
import com.byazt.pn.s;
import com.byazt.raq.ec;
import com.byazt.raq.jl;
import com.byazt.raq.vv;
import com.byazt.sv.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS, 28})
/* loaded from: classes3.dex */
public final class hp implements sz {
    public final a hp;

    public hp(a aVar) {
        this.hp = aVar;
    }

    @Override // com.byazt.hq.sz
    public hq hp(sz.hp hpVar) throws IOException {
        a aVar = this.hp;
        hq hqVarHp = aVar != null ? aVar.hp(hpVar.hp()) : null;
        jx jxVarHp = new jx.hp(System.currentTimeMillis(), hpVar.hp(), hqVarHp).hp();
        o oVar = jxVarHp.hp;
        hq hqVar = jxVarHp.f25596l;
        if (hqVarHp != null && hqVar == null) {
            com.byazt.ru.jx.hp(hqVarHp.s());
        }
        if (oVar == null && hqVar == null) {
            return new hq.hp().hp(hpVar.hp()).hp(b.HTTP_1_1).hp(e.f35439E).hp("Unsatisfiable Request (only-if-cached)").hp(com.byazt.ru.jx.jx).hp(-1L).l(System.currentTimeMillis()).hp();
        }
        if (oVar == null) {
            return hqVar.q().l(hp(hqVar)).hp();
        }
        try {
            hq hqVarHp2 = hpVar.hp(oVar);
            if (hqVarHp2 == null && hqVarHp != null) {
            }
            if (hqVar != null) {
                if (hqVarHp2.jx() == 304) {
                    hq hqVarHp3 = hqVar.q().hp(hp(hqVar.eb(), hqVarHp2.eb())).hp(hqVarHp2.zy()).l(hqVarHp2.k()).l(hp(hqVar)).hp(hp(hqVarHp2)).hp();
                    hqVarHp2.s().close();
                    this.hp.update(hqVar, hqVarHp3);
                    return hqVarHp3;
                }
                com.byazt.ru.jx.hp(hqVar.s());
            }
            hq hqVarHp4 = hqVarHp2.q().l(hp(hqVar)).hp(hp(hqVarHp2)).hp();
            if (this.hp != null) {
                if (com.byazt.pn.w.jx(hqVarHp4) && jx.hp(hqVarHp4, oVar)) {
                    return hp(this.hp.hp(hqVarHp4), hqVarHp4);
                }
                com.byazt.pn.a.hp(oVar.l());
            }
            return hqVarHp4;
        } finally {
            if (hqVarHp != null) {
                com.byazt.ru.jx.hp(hqVarHp.s());
            }
        }
    }

    private static hq hp(hq hqVar) {
        return (hqVar == null || hqVar.s() == null) ? hqVar : hqVar.q().hp((ud) null).hp();
    }

    private hq hp(final l lVar, hq hqVar) throws IOException {
        vv vvVarHp;
        if (lVar == null || (vvVarHp = lVar.hp()) == null) {
            return hqVar;
        }
        final com.byazt.raq.w wVarJx = hqVar.s().jx();
        final com.byazt.raq.j jVarHp = jl.hp(vvVarHp);
        return hqVar.q().hp(new s(hqVar.hp(AbstractC1114b.f5589g), hqVar.s().l(), jl.hp(new ec() { // from class: com.byazt.sv.hp.1
            public boolean hp;

            @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.hp && !com.byazt.ru.jx.hp(this, 100, TimeUnit.MILLISECONDS)) {
                    this.hp = true;
                }
                wVarJx.close();
            }

            @Override // com.byazt.raq.ec
            public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
                try {
                    long jHp = wVarJx.hp(jxVar, j2);
                    if (jHp != -1) {
                        jxVar.hp(jVarHp.jx(), jxVar.l() - jHp, jHp);
                        jVarHp.n();
                        return jHp;
                    }
                    if (!this.hp) {
                        this.hp = true;
                        jVarHp.close();
                    }
                    return -1L;
                } catch (IOException e2) {
                    if (this.hp) {
                        throw e2;
                    }
                    this.hp = true;
                    throw e2;
                }
            }

            @Override // com.byazt.raq.ec
            public com.byazt.raq.sz hp() {
                return wVarJx.hp();
            }
        }))).hp();
    }

    private static com.byazt.hq.vv hp(com.byazt.hq.vv vvVar, com.byazt.hq.vv vvVar2) {
        vv.hp hpVar = new vv.hp();
        int iHp = vvVar.hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            String strHp = vvVar.hp(i2);
            String strL = vvVar.l(i2);
            if ((!"Warning".equalsIgnoreCase(strHp) || !strL.startsWith("1")) && (!hp(strHp) || vvVar2.hp(strHp) == null)) {
                com.byazt.ru.hp.hp.hp(hpVar, strHp, strL);
            }
        }
        int iHp2 = vvVar2.hp();
        for (int i3 = 0; i3 < iHp2; i3++) {
            String strHp2 = vvVar2.hp(i3);
            if (!c.f37366e.equalsIgnoreCase(strHp2) && hp(strHp2)) {
                com.byazt.ru.hp.hp.hp(hpVar, strHp2, vvVar2.l(i3));
            }
        }
        return hpVar.hp();
    }

    public static boolean hp(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || c.f37369h.equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
