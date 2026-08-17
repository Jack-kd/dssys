package com.byazt.cd;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.m.f;
import com.byazt.hq.b;
import com.byazt.hq.cx;
import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.hq.ud;
import com.byazt.hq.vv;
import com.byazt.raq.ec;
import com.byazt.raq.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 54})
/* loaded from: classes2.dex */
public final class a implements com.byazt.pn.jx {

    /* renamed from: a, reason: collision with root package name */
    public static final com.byazt.raq.a f18735a;

    /* renamed from: e, reason: collision with root package name */
    public static final List<com.byazt.raq.a> f18736e;
    public static final com.byazt.raq.a eb;
    public static final List<com.byazt.raq.a> gu;

    /* renamed from: j, reason: collision with root package name */
    public static final com.byazt.raq.a f18737j;
    public static final com.byazt.raq.a jx;

    /* renamed from: l, reason: collision with root package name */
    public static final com.byazt.raq.a f18738l;

    /* renamed from: q, reason: collision with root package name */
    public static final com.byazt.raq.a f18739q;

    /* renamed from: s, reason: collision with root package name */
    public static final com.byazt.raq.a f18740s;

    /* renamed from: w, reason: collision with root package name */
    public static final com.byazt.raq.a f18741w;
    public final com.byazt.tt.eb hp;
    public final cx jl;

    /* renamed from: k, reason: collision with root package name */
    public final eb f18742k;

    /* renamed from: v, reason: collision with root package name */
    public q f18743v;
    public final sz.hp zy;

    static {
        com.byazt.raq.a aVarHp = com.byazt.raq.a.hp("connection");
        f18738l = aVarHp;
        com.byazt.raq.a aVarHp2 = com.byazt.raq.a.hp(f.bU);
        jx = aVarHp2;
        com.byazt.raq.a aVarHp3 = com.byazt.raq.a.hp("keep-alive");
        f18737j = aVarHp3;
        com.byazt.raq.a aVarHp4 = com.byazt.raq.a.hp("proxy-connection");
        f18741w = aVarHp4;
        com.byazt.raq.a aVarHp5 = com.byazt.raq.a.hp("transfer-encoding");
        f18735a = aVarHp5;
        com.byazt.raq.a aVarHp6 = com.byazt.raq.a.hp("te");
        eb = aVarHp6;
        com.byazt.raq.a aVarHp7 = com.byazt.raq.a.hp("encoding");
        f18740s = aVarHp7;
        com.byazt.raq.a aVarHp8 = com.byazt.raq.a.hp("upgrade");
        f18739q = aVarHp8;
        f18736e = com.byazt.ru.jx.hp(aVarHp, aVarHp2, aVarHp3, aVarHp4, aVarHp6, aVarHp5, aVarHp7, aVarHp8, jx.jx, jx.f18795j, jx.f18797w, jx.f18794a);
        gu = com.byazt.ru.jx.hp(aVarHp, aVarHp2, aVarHp3, aVarHp4, aVarHp6, aVarHp5, aVarHp7, aVarHp8);
    }

    public a(cx cxVar, sz.hp hpVar, com.byazt.tt.eb ebVar, eb ebVar2) {
        this.jl = cxVar;
        this.zy = hpVar;
        this.hp = ebVar;
        this.f18742k = ebVar2;
    }

    @Override // com.byazt.pn.jx
    public vv hp(o oVar, long j2) {
        return this.f18743v.s();
    }

    @Override // com.byazt.pn.jx
    public void jx() {
        q qVar = this.f18743v;
        if (qVar != null) {
            qVar.l(l.CANCEL);
        }
    }

    @Override // com.byazt.pn.jx
    public void l() throws IOException {
        this.f18743v.s().close();
    }

    public static List<jx> l(o oVar) {
        com.byazt.hq.vv vvVarJx = oVar.jx();
        ArrayList arrayList = new ArrayList(vvVarJx.hp() + 4);
        arrayList.add(new jx(jx.jx, oVar.l()));
        arrayList.add(new jx(jx.f18795j, com.byazt.pn.q.hp(oVar.hp())));
        String strHp = oVar.hp("Host");
        if (strHp != null) {
            arrayList.add(new jx(jx.f18794a, strHp));
        }
        arrayList.add(new jx(jx.f18797w, oVar.hp().jx()));
        int iHp = vvVarJx.hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            com.byazt.raq.a aVarHp = com.byazt.raq.a.hp(vvVarJx.hp(i2).toLowerCase(Locale.US));
            if (!f18736e.contains(aVarHp)) {
                arrayList.add(new jx(aVarHp, vvVarJx.l(i2)));
            }
        }
        return arrayList;
    }

    @Override // com.byazt.pn.jx
    public void hp(o oVar) throws IOException {
        if (this.f18743v != null) {
            return;
        }
        q qVarHp = this.f18742k.hp(l(oVar), oVar.j() != null);
        this.f18743v = qVarHp;
        com.byazt.raq.sz szVarW = qVarHp.w();
        long jJx = this.zy.jx();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        szVarW.hp(jJx, timeUnit);
        this.f18743v.a().hp(this.zy.j(), timeUnit);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public class hp extends com.byazt.raq.s {
        public boolean hp;

        /* renamed from: l, reason: collision with root package name */
        public long f18744l;

        public hp(ec ecVar) {
            super(ecVar);
            this.hp = false;
            this.f18744l = 0L;
        }

        @Override // com.byazt.raq.s, com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            hp(null);
        }

        @Override // com.byazt.raq.s, com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            try {
                long jHp = l().hp(jxVar, j2);
                if (jHp <= 0) {
                    return jHp;
                }
                this.f18744l += jHp;
                return jHp;
            } catch (IOException e2) {
                hp(e2);
                throw e2;
            }
        }

        private void hp(IOException iOException) throws IOException {
            if (this.hp) {
                return;
            }
            this.hp = true;
            a aVar = a.this;
            aVar.hp.hp(false, (com.byazt.pn.jx) aVar, this.f18744l, iOException);
        }
    }

    @Override // com.byazt.pn.jx
    public void hp() throws IOException {
        this.f18742k.l();
    }

    @Override // com.byazt.pn.jx
    public hq.hp hp(boolean z2) throws NumberFormatException, IOException {
        hq.hp hpVarHp = hp(this.f18743v.j());
        if (z2 && com.byazt.ru.hp.hp.hp(hpVarHp) == 100) {
            return null;
        }
        return hpVarHp;
    }

    public static hq.hp hp(List<jx> list) throws NumberFormatException, IOException {
        vv.hp hpVar = new vv.hp();
        int size = list.size();
        com.byazt.pn.gu guVarHp = null;
        for (int i2 = 0; i2 < size; i2++) {
            jx jxVar = list.get(i2);
            if (jxVar == null) {
                if (guVarHp != null && guVarHp.f24456l == 100) {
                    hpVar = new vv.hp();
                    guVarHp = null;
                }
            } else {
                com.byazt.raq.a aVar = jxVar.eb;
                String strHp = jxVar.f18799s.hp();
                if (aVar.equals(jx.f18796l)) {
                    guVarHp = com.byazt.pn.gu.hp("HTTP/1.1 ".concat(String.valueOf(strHp)));
                } else if (!gu.contains(aVar)) {
                    com.byazt.ru.hp.hp.hp(hpVar, aVar.hp(), strHp);
                }
            }
        }
        if (guVarHp != null) {
            return new hq.hp().hp(b.HTTP_2).hp(guVarHp.f24456l).hp(guVarHp.jx).hp(hpVar.hp());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // com.byazt.pn.jx
    public ud hp(hq hqVar) throws IOException {
        return new com.byazt.pn.s(hqVar.hp(AbstractC1114b.f5589g), com.byazt.pn.w.hp(hqVar), com.byazt.raq.jl.hp(new hp(this.f18743v.eb())));
    }
}
