package com.byazt.hq;

import com.byazt.sv.j;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 158, 30})
/* loaded from: classes2.dex */
public final class jx implements Closeable, Flushable {
    public final com.byazt.sv.a hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.sv.j f20894l;

    @com.byazt.kj.hp(hp = {0, 1, 158, 219})
    public static class hp extends ud {
        public final j.jx hp;

        /* renamed from: j, reason: collision with root package name */
        public final String f20895j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final com.byazt.raq.w f20896l;

        @Override // com.byazt.hq.ud
        public n hp() {
            String str = this.jx;
            if (str != null) {
                return n.hp(str);
            }
            return null;
        }

        @Override // com.byazt.hq.ud
        public com.byazt.raq.w jx() {
            return this.f20896l;
        }

        @Override // com.byazt.hq.ud
        public long l() {
            try {
                String str = this.f20895j;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }
    }

    private void hp(j.hp hpVar) {
        if (hpVar != null) {
            try {
                hpVar.jx();
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f20894l.close();
    }

    public void delete() throws IOException {
        this.f20894l.delete();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f20894l.flush();
    }

    public void update(hq hqVar, hq hqVar2) {
        j.hp hpVarHp;
        l lVar = new l(hqVar2);
        try {
            hpVarHp = ((hp) hqVar.s()).hp.hp();
            if (hpVarHp != null) {
                try {
                    lVar.hp(hpVarHp);
                    hpVarHp.l();
                } catch (IOException unused) {
                    hp(hpVarHp);
                }
            }
        } catch (IOException unused2) {
            hpVarHp = null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 158, 224})
    public static final class l {
        public static final String hp = com.byazt.ksw.w.l().jx() + "-Sent-Millis";

        /* renamed from: l, reason: collision with root package name */
        public static final String f20897l = com.byazt.ksw.w.l().jx() + "-Received-Millis";

        /* renamed from: a, reason: collision with root package name */
        public final b f20898a;

        /* renamed from: e, reason: collision with root package name */
        public final xs f20899e;
        public final int eb;
        public final long gu;

        /* renamed from: j, reason: collision with root package name */
        public final vv f20900j;
        public final long jl;
        public final String jx;

        /* renamed from: q, reason: collision with root package name */
        public final vv f20901q;

        /* renamed from: s, reason: collision with root package name */
        public final String f20902s;

        /* renamed from: w, reason: collision with root package name */
        public final String f20903w;

        public l(hq hqVar) {
            this.jx = hqVar.hp().hp().toString();
            this.f20900j = com.byazt.pn.w.l(hqVar);
            this.f20903w = hqVar.hp().l();
            this.f20898a = hqVar.l();
            this.eb = hqVar.jx();
            this.f20902s = hqVar.w();
            this.f20901q = hqVar.eb();
            this.f20899e = hqVar.a();
            this.gu = hqVar.zy();
            this.jl = hqVar.k();
        }

        public void hp(j.hp hpVar) throws IOException {
            com.byazt.raq.j jVarHp = com.byazt.raq.jl.hp(hpVar.hp(0));
            jVarHp.l(this.jx).q(10);
            jVarHp.l(this.f20903w).q(10);
            jVarHp.jl(this.f20900j.hp()).q(10);
            int iHp = this.f20900j.hp();
            for (int i2 = 0; i2 < iHp; i2++) {
                jVarHp.l(this.f20900j.hp(i2)).l(": ").l(this.f20900j.l(i2)).q(10);
            }
            jVarHp.l(new com.byazt.pn.gu(this.f20898a, this.eb, this.f20902s).toString()).q(10);
            jVarHp.jl(this.f20901q.hp() + 2).q(10);
            int iHp2 = this.f20901q.hp();
            for (int i3 = 0; i3 < iHp2; i3++) {
                jVarHp.l(this.f20901q.hp(i3)).l(": ").l(this.f20901q.l(i3)).q(10);
            }
            jVarHp.l(hp).l(": ").jl(this.gu).q(10);
            jVarHp.l(f20897l).l(": ").jl(this.jl).q(10);
            if (hp()) {
                jVarHp.q(10);
                jVarHp.l(this.f20899e.l().hp()).q(10);
                hp(jVarHp, this.f20899e.jx());
                hp(jVarHp, this.f20899e.j());
                jVarHp.l(this.f20899e.hp().hp()).q(10);
            }
            jVarHp.close();
        }

        private boolean hp() {
            return this.jx.startsWith("https://");
        }

        private void hp(com.byazt.raq.j jVar, List<Certificate> list) throws IOException {
            try {
                jVar.jl(list.size()).q(10);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    jVar.l(com.byazt.raq.a.hp(list.get(i2).getEncoded()).l()).q(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }
    }
}
