package com.byazt.hq;

import com.byazt.hq.vv;
import java.io.Closeable;

@com.byazt.kj.hp(hp = {0, 1, 158, 158})
/* loaded from: classes2.dex */
public final class hq implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final vv f20859a;

    /* renamed from: e, reason: collision with root package name */
    public final hq f20860e;
    public final ud eb;
    public final long gu;
    public final o hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f20861j;
    public final long jl;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final b f20862l;

    /* renamed from: q, reason: collision with root package name */
    public final hq f20863q;

    /* renamed from: s, reason: collision with root package name */
    public final hq f20864s;

    /* renamed from: w, reason: collision with root package name */
    public final xs f20865w;
    public volatile j zy;

    @com.byazt.kj.hp(hp = {0, 1, 158, 1892})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public vv.hp f20866a;

        /* renamed from: e, reason: collision with root package name */
        public hq f20867e;
        public ud eb;
        public long gu;
        public o hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20868j;
        public long jl;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public b f20869l;

        /* renamed from: q, reason: collision with root package name */
        public hq f20870q;

        /* renamed from: s, reason: collision with root package name */
        public hq f20871s;

        /* renamed from: w, reason: collision with root package name */
        public xs f20872w;

        public hp() {
            this.jx = -1;
            this.f20866a = new vv.hp();
        }

        private void j(hq hqVar) {
            if (hqVar.eb != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public hp hp(o oVar) {
            this.hp = oVar;
            return this;
        }

        public hp jx(hq hqVar) {
            if (hqVar != null) {
                j(hqVar);
            }
            this.f20867e = hqVar;
            return this;
        }

        public hp l(hq hqVar) {
            if (hqVar != null) {
                hp("cacheResponse", hqVar);
            }
            this.f20870q = hqVar;
            return this;
        }

        public hp hp(b bVar) {
            this.f20869l = bVar;
            return this;
        }

        public hp hp(int i2) {
            this.jx = i2;
            return this;
        }

        public hp l(long j2) {
            this.jl = j2;
            return this;
        }

        public hp(hq hqVar) {
            this.jx = -1;
            this.hp = hqVar.hp;
            this.f20869l = hqVar.f20862l;
            this.jx = hqVar.jx;
            this.f20868j = hqVar.f20861j;
            this.f20872w = hqVar.f20865w;
            this.f20866a = hqVar.f20859a.l();
            this.eb = hqVar.eb;
            this.f20871s = hqVar.f20864s;
            this.f20870q = hqVar.f20863q;
            this.f20867e = hqVar.f20860e;
            this.gu = hqVar.gu;
            this.jl = hqVar.jl;
        }

        public hp hp(String str) {
            this.f20868j = str;
            return this;
        }

        public hp hp(xs xsVar) {
            this.f20872w = xsVar;
            return this;
        }

        public hp hp(String str, String str2) {
            this.f20866a.hp(str, str2);
            return this;
        }

        public hp hp(vv vvVar) {
            this.f20866a = vvVar.l();
            return this;
        }

        public hp hp(ud udVar) {
            this.eb = udVar;
            return this;
        }

        public hp hp(hq hqVar) {
            if (hqVar != null) {
                hp("networkResponse", hqVar);
            }
            this.f20871s = hqVar;
            return this;
        }

        private void hp(String str, hq hqVar) {
            if (hqVar.eb == null) {
                if (hqVar.f20864s == null) {
                    if (hqVar.f20863q == null) {
                        if (hqVar.f20860e == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public hp hp(long j2) {
            this.gu = j2;
            return this;
        }

        public hq hp() {
            if (this.hp != null) {
                if (this.f20869l != null) {
                    if (this.jx >= 0) {
                        if (this.f20868j != null) {
                            return new hq(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("code < 0: " + this.jx);
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    public hq(hp hpVar) {
        this.hp = hpVar.hp;
        this.f20862l = hpVar.f20869l;
        this.jx = hpVar.jx;
        this.f20861j = hpVar.f20868j;
        this.f20865w = hpVar.f20872w;
        this.f20859a = hpVar.f20866a.hp();
        this.eb = hpVar.eb;
        this.f20864s = hpVar.f20871s;
        this.f20863q = hpVar.f20870q;
        this.f20860e = hpVar.f20867e;
        this.gu = hpVar.gu;
        this.jl = hpVar.jl;
    }

    public xs a() {
        return this.f20865w;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ud udVar = this.eb;
        if (udVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        udVar.close();
    }

    public hq e() {
        return this.f20864s;
    }

    public vv eb() {
        return this.f20859a;
    }

    public hq gu() {
        return this.f20860e;
    }

    public o hp() {
        return this.hp;
    }

    public boolean j() {
        int i2 = this.jx;
        return i2 >= 200 && i2 < 300;
    }

    public j jl() {
        j jVar = this.zy;
        if (jVar != null) {
            return jVar;
        }
        j jVarHp = j.hp(this.f20859a);
        this.zy = jVarHp;
        return jVarHp;
    }

    public int jx() {
        return this.jx;
    }

    public long k() {
        return this.jl;
    }

    public b l() {
        return this.f20862l;
    }

    public hp q() {
        return new hp(this);
    }

    public ud s() {
        return this.eb;
    }

    public String toString() {
        return "Response{protocol=" + this.f20862l + ", code=" + this.jx + ", message=" + this.f20861j + ", url=" + this.hp.hp() + '}';
    }

    public wv v() {
        o oVar = this.hp;
        if (oVar == null) {
            return null;
        }
        return oVar.f20923a;
    }

    public String w() {
        return this.f20861j;
    }

    public long zy() {
        return this.gu;
    }

    public String hp(String str) {
        return hp(str, null);
    }

    public String hp(String str, String str2) {
        String strHp = this.f20859a.hp(str);
        return strHp != null ? strHp : str2;
    }
}
