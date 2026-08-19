package com.byazt.jfu;

import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.hq.cx;
import com.byazt.hq.hq;
import com.byazt.hq.o;
import com.byazt.hq.ud;
import com.byazt.hq.vv;
import com.byazt.pn.gu;
import com.byazt.pn.s;
import com.byazt.raq.ec;
import com.byazt.raq.jl;
import com.byazt.raq.q;
import com.byazt.raq.sz;
import com.byazt.raq.vv;
import com.byazt.tt.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.downloader.core.c;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 446, 28})
/* loaded from: classes.dex */
public final class hp implements com.byazt.pn.jx {
    public final cx hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.raq.j f21479j;
    public final com.byazt.raq.w jx;

    /* renamed from: l, reason: collision with root package name */
    public final eb f21480l;

    /* renamed from: w, reason: collision with root package name */
    public int f21481w = 0;

    /* renamed from: a, reason: collision with root package name */
    public long f21478a = 262144;

    @com.byazt.kj.hp(hp = {0, 1, 446, 730})
    public class a extends AbstractC0284hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f21482a;

        public a() {
            super();
        }

        @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f21485l) {
                return;
            }
            if (!this.f21482a) {
                hp(false, (IOException) null);
            }
            this.f21485l = true;
        }

        @Override // com.byazt.jfu.hp.AbstractC0284hp, com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            if (this.f21485l) {
                throw new IllegalStateException("closed");
            }
            if (this.f21482a) {
                return -1L;
            }
            long jHp = super.hp(jxVar, j2);
            if (jHp != -1) {
                return jHp;
            }
            this.f21482a = true;
            hp(true, (IOException) null);
            return -1L;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 446, 170})
    /* renamed from: com.byazt.jfu.hp$hp, reason: collision with other inner class name */
    public abstract class AbstractC0284hp implements ec {
        public final q hp;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public boolean f21485l;

        private AbstractC0284hp() {
            this.hp = new q(hp.this.jx.hp());
            this.jx = 0L;
        }

        @Override // com.byazt.raq.ec
        public sz hp() {
            return this.hp;
        }

        @Override // com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            try {
                long jHp = hp.this.jx.hp(jxVar, j2);
                if (jHp <= 0) {
                    return jHp;
                }
                this.jx += jHp;
                return jHp;
            } catch (IOException e2) {
                hp(false, e2);
                throw e2;
            }
        }

        public final void hp(boolean z2, IOException iOException) throws IOException {
            hp hpVar = hp.this;
            int i2 = hpVar.f21481w;
            if (i2 == 6) {
                return;
            }
            if (i2 == 5) {
                hpVar.hp(this.hp);
                hp hpVar2 = hp.this;
                hpVar2.f21481w = 6;
                eb ebVar = hpVar2.f21480l;
                if (ebVar != null) {
                    ebVar.hp(!z2, hpVar2, this.jx, iOException);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + hp.this.f21481w);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 446, MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE})
    public final class j implements vv {

        /* renamed from: j, reason: collision with root package name */
        public long f21486j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public final q f21487l;

        public j(long j2) {
            this.f21487l = new q(hp.this.f21479j.hp());
            this.f21486j = j2;
        }

        @Override // com.byazt.raq.vv
        public void a_(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (this.jx) {
                throw new IllegalStateException("closed");
            }
            com.byazt.ru.jx.hp(jxVar.l(), 0L, j2);
            if (j2 <= this.f21486j) {
                hp.this.f21479j.a_(jxVar, j2);
                this.f21486j -= j2;
            } else {
                throw new ProtocolException("expected " + this.f21486j + " bytes but received " + j2);
            }
        }

        @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.jx) {
                return;
            }
            this.jx = true;
            if (this.f21486j > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            hp.this.hp(this.f21487l);
            hp.this.f21481w = 3;
        }

        @Override // com.byazt.raq.vv, java.io.Flushable
        public void flush() throws IOException {
            if (this.jx) {
                return;
            }
            hp.this.f21479j.flush();
        }

        @Override // com.byazt.raq.vv
        public sz hp() {
            return this.f21487l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 446, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public class jx extends AbstractC0284hp {

        /* renamed from: a, reason: collision with root package name */
        public final com.byazt.hq.ec f21488a;
        public long eb;

        /* renamed from: s, reason: collision with root package name */
        public boolean f21489s;

        public jx(com.byazt.hq.ec ecVar) {
            super();
            this.eb = -1L;
            this.f21489s = true;
            this.f21488a = ecVar;
        }

        private void l() throws IOException {
            if (this.eb != -1) {
                hp.this.jx.u();
            }
            try {
                this.eb = hp.this.jx.zy();
                String strTrim = hp.this.jx.u().trim();
                if (this.eb < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.eb + strTrim + "\"");
                }
                if (this.eb == 0) {
                    this.f21489s = false;
                    com.byazt.pn.w.hp(hp.this.hp.a(), this.f21488a, hp.this.j());
                    hp(true, (IOException) null);
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }

        @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f21485l) {
                return;
            }
            if (this.f21489s && !com.byazt.ru.jx.hp(this, 100, TimeUnit.MILLISECONDS)) {
                hp(false, (IOException) null);
            }
            this.f21485l = true;
        }

        @Override // com.byazt.jfu.hp.AbstractC0284hp, com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            if (this.f21485l) {
                throw new IllegalStateException("closed");
            }
            if (!this.f21489s) {
                return -1L;
            }
            long j3 = this.eb;
            if (j3 == 0 || j3 == -1) {
                l();
                if (!this.f21489s) {
                    return -1L;
                }
            }
            long jHp = super.hp(jxVar, Math.min(j2, this.eb));
            if (jHp != -1) {
                this.eb -= jHp;
                return jHp;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            hp(false, (IOException) protocolException);
            throw protocolException;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 446, 255})
    public final class l implements vv {
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public final q f21491l;

        public l() {
            this.f21491l = new q(hp.this.f21479j.hp());
        }

        @Override // com.byazt.raq.vv
        public void a_(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (this.jx) {
                throw new IllegalStateException("closed");
            }
            if (j2 == 0) {
                return;
            }
            hp.this.f21479j.gu(j2);
            hp.this.f21479j.l("\r\n");
            hp.this.f21479j.a_(jxVar, j2);
            hp.this.f21479j.l("\r\n");
        }

        @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.jx) {
                return;
            }
            this.jx = true;
            hp.this.f21479j.l("0\r\n\r\n");
            hp.this.hp(this.f21491l);
            hp.this.f21481w = 3;
        }

        @Override // com.byazt.raq.vv, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.jx) {
                return;
            }
            hp.this.f21479j.flush();
        }

        @Override // com.byazt.raq.vv
        public sz hp() {
            return this.f21491l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 446, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE})
    public class w extends AbstractC0284hp {

        /* renamed from: a, reason: collision with root package name */
        public long f21492a;

        public w(long j2) throws IOException {
            super();
            this.f21492a = j2;
            if (j2 == 0) {
                hp(true, (IOException) null);
            }
        }

        @Override // com.byazt.raq.ec, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f21485l) {
                return;
            }
            if (this.f21492a != 0 && !com.byazt.ru.jx.hp(this, 100, TimeUnit.MILLISECONDS)) {
                hp(false, (IOException) null);
            }
            this.f21485l = true;
        }

        @Override // com.byazt.jfu.hp.AbstractC0284hp, com.byazt.raq.ec
        public long hp(com.byazt.raq.jx jxVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
            }
            if (this.f21485l) {
                throw new IllegalStateException("closed");
            }
            long j3 = this.f21492a;
            if (j3 == 0) {
                return -1L;
            }
            long jHp = super.hp(jxVar, Math.min(j3, j2));
            if (jHp == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                hp(false, (IOException) protocolException);
                throw protocolException;
            }
            long j4 = this.f21492a - jHp;
            this.f21492a = j4;
            if (j4 == 0) {
                hp(true, (IOException) null);
            }
            return jHp;
        }
    }

    public hp(cx cxVar, eb ebVar, com.byazt.raq.w wVar, com.byazt.raq.j jVar) {
        this.hp = cxVar;
        this.f21480l = ebVar;
        this.jx = wVar;
        this.f21479j = jVar;
    }

    private String eb() throws IOException {
        String strW = this.jx.w(this.f21478a);
        this.f21478a -= strW.length();
        return strW;
    }

    public ec a() throws IOException {
        if (this.f21481w != 4) {
            throw new IllegalStateException("state: " + this.f21481w);
        }
        eb ebVar = this.f21480l;
        if (ebVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f21481w = 5;
        ebVar.j();
        return new a();
    }

    @Override // com.byazt.pn.jx
    public vv hp(o oVar, long j2) {
        if ("chunked".equalsIgnoreCase(oVar.hp(c.f37369h))) {
            return w();
        }
        if (j2 != -1) {
            return hp(j2);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public com.byazt.hq.vv j() throws IOException {
        vv.hp hpVar = new vv.hp();
        while (true) {
            String strEb = eb();
            if (strEb.length() == 0) {
                return hpVar.hp();
            }
            com.byazt.ru.hp.hp.hp(hpVar, strEb);
        }
    }

    @Override // com.byazt.pn.jx
    public void jx() {
        com.byazt.tt.jx jxVarL = this.f21480l.l();
        if (jxVarL != null) {
            jxVarL.l();
        }
    }

    @Override // com.byazt.pn.jx
    public void l() throws IOException {
        this.f21479j.flush();
    }

    public com.byazt.raq.vv w() {
        if (this.f21481w == 1) {
            this.f21481w = 2;
            return new l();
        }
        throw new IllegalStateException("state: " + this.f21481w);
    }

    public ec l(long j2) throws IOException {
        if (this.f21481w == 4) {
            this.f21481w = 5;
            return new w(j2);
        }
        throw new IllegalStateException("state: " + this.f21481w);
    }

    @Override // com.byazt.pn.jx
    public void hp(o oVar) throws IOException {
        hp(oVar.jx(), com.byazt.pn.q.hp(oVar, this.f21480l.l().hp().l().type()));
    }

    @Override // com.byazt.pn.jx
    public ud hp(hq hqVar) throws IOException {
        String strHp = hqVar.hp(AbstractC1114b.f5589g);
        if (!com.byazt.pn.w.jx(hqVar)) {
            return new s(strHp, 0L, jl.hp(l(0L)));
        }
        if ("chunked".equalsIgnoreCase(hqVar.hp(c.f37369h))) {
            return new s(strHp, -1L, jl.hp(hp(hqVar.hp().hp())));
        }
        long jHp = com.byazt.pn.w.hp(hqVar);
        if (jHp != -1) {
            return new s(strHp, jHp, jl.hp(l(jHp)));
        }
        return new s(strHp, -1L, jl.hp(a()));
    }

    @Override // com.byazt.pn.jx
    public void hp() throws IOException {
        this.f21479j.flush();
    }

    public void hp(com.byazt.hq.vv vvVar, String str) throws IOException {
        if (this.f21481w == 0) {
            this.f21479j.l(str).l("\r\n");
            int iHp = vvVar.hp();
            for (int i2 = 0; i2 < iHp; i2++) {
                this.f21479j.l(vvVar.hp(i2)).l(": ").l(vvVar.l(i2)).l("\r\n");
            }
            this.f21479j.l("\r\n");
            this.f21481w = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f21481w);
    }

    @Override // com.byazt.pn.jx
    public hq.hp hp(boolean z2) throws NumberFormatException, IOException {
        int i2 = this.f21481w;
        if (i2 != 1 && i2 != 3) {
            throw new IllegalStateException("state: " + this.f21481w);
        }
        try {
            gu guVarHp = gu.hp(eb());
            hq.hp hpVarHp = new hq.hp().hp(guVarHp.hp).hp(guVarHp.f24456l).hp(guVarHp.jx).hp(j());
            if (z2 && guVarHp.f24456l == 100) {
                return null;
            }
            this.f21481w = 4;
            return hpVarHp;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f21480l);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    public com.byazt.raq.vv hp(long j2) {
        if (this.f21481w == 1) {
            this.f21481w = 2;
            return new j(j2);
        }
        throw new IllegalStateException("state: " + this.f21481w);
    }

    public ec hp(com.byazt.hq.ec ecVar) throws IOException {
        if (this.f21481w == 4) {
            this.f21481w = 5;
            return new jx(ecVar);
        }
        throw new IllegalStateException("state: " + this.f21481w);
    }

    public void hp(q qVar) {
        sz szVarHp = qVar.hp();
        qVar.hp(sz.jx);
        szVarHp.a();
        szVarHp.w();
    }
}
