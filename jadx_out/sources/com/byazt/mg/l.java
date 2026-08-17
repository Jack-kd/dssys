package com.byazt.mg;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.mg.a;
import com.byazt.mg.s;
import com.byazt.mg.w;
import com.byazt.ymw.u;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 790, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.mg.hp {
    public final Object jl;

    /* renamed from: k, reason: collision with root package name */
    public final int f23001k;

    /* renamed from: v, reason: collision with root package name */
    public final InterfaceC0309l f23002v;
    public final Object zy;

    /* renamed from: com.byazt.mg.l$l, reason: collision with other inner class name */
    public interface InterfaceC0309l {
        void hp(l lVar);
    }

    public l(hp hpVar) {
        super(hpVar.f23004j, hpVar.f23008w);
        this.f23001k = hpVar.eb;
        this.f23002v = hpVar.f23007s;
        this.jl = this;
        this.eb = hpVar.hp;
        this.f22979s = hpVar.f23005l;
        this.f22973a = hpVar.f23003a;
        this.f22978q = hpVar.jx;
        this.zy = hpVar.f23006q;
    }

    private boolean eb() throws com.byazt.df.hp {
        while (this.f22978q.hp()) {
            j();
            s.hp hpVarL = this.f22978q.l();
            try {
                hp(hpVarL);
                return true;
            } catch (com.byazt.df.jx unused) {
                hpVarL.hp();
                a();
            } catch (w.hp unused2) {
                a();
                return false;
            } catch (IOException e2) {
                if (e2 instanceof SocketTimeoutException) {
                    hpVarL.l();
                }
                if (!l()) {
                    a();
                }
            } catch (Throwable unused3) {
                return false;
            }
        }
        return false;
    }

    private void hp(s.hp hpVar) throws Throwable {
        File fileJx = this.hp.jx(this.f22979s);
        long length = fileJx.length();
        int i2 = this.f23001k;
        if (i2 > 0 && length >= i2) {
            return;
        }
        int iW = w();
        com.byazt.zt.hp hpVarQuery = this.f22977l.query(this.f22979s, iW);
        if (hpVarQuery != null && length >= hpVarQuery.jx) {
            com.byazt.ya.l lVar = j.hp;
            return;
        }
        j();
        int i3 = (int) length;
        com.byazt.fs.hp hpVarHp = hp(hpVar, i3, this.f23001k, "GET");
        if (hpVarHp == null) {
            return;
        }
        boolean z2 = true;
        w wVar = null;
        try {
            j();
            String strHp = com.byazt.vk.hp.hp(hpVarHp, j.eb, true);
            if (strHp != null) {
                throw new com.byazt.df.jx(strHp + ", rawKey: " + this.eb + ", url: " + hpVar);
            }
            int iHp = com.byazt.vk.hp.hp(hpVarHp);
            if (hpVarQuery != null && hpVarQuery.jx != iHp) {
                if (j.f22987w) {
                    u.l("TAG_PROXY_DownloadTask", "Content-Length not match, old: " + hpVarQuery.jx + ", " + iHp + ", key: " + this.f22979s);
                }
                throw new com.byazt.df.l("Content-Length not match, old length: " + hpVarQuery.jx + ", new length: " + iHp + ", rawKey: " + this.eb + ", currentUrl: " + hpVar + ", previousInfo: " + hpVarQuery.f28605w);
            }
            com.byazt.vk.hp.hp(hpVarHp, this.f22977l, this.f22979s, iW);
            com.byazt.zt.hp hpVarQuery2 = this.f22977l.query(this.f22979s, iW);
            int i4 = hpVarQuery2 == null ? 0 : hpVarQuery2.jx;
            InputStream inputStreamJ = hpVarHp.j();
            w wVar2 = new w(fileJx, j.f22981a ? "rwd" : "rw");
            try {
                wVar2.hp(length);
                com.byazt.ya.l lVar2 = j.hp;
                byte[] bArr = new byte[8192];
                while (true) {
                    int i5 = inputStreamJ.read(bArr);
                    if (i5 < 0) {
                        try {
                            jx();
                            com.byazt.ya.l lVar3 = j.hp;
                            com.byazt.vk.hp.hp(hpVarHp.j());
                            wVar2.hp();
                            return;
                        } catch (Throwable th) {
                            th = th;
                            z2 = false;
                            wVar = wVar2;
                            com.byazt.vk.hp.hp(hpVarHp.j());
                            if (wVar != null) {
                                wVar.hp();
                            }
                            if (z2) {
                                hp();
                                com.byazt.ya.l lVar4 = j.hp;
                            }
                            throw th;
                        }
                    }
                    j();
                    if (i5 > 0) {
                        wVar2.hp(bArr, 0, i5);
                        i3 += i5;
                        this.jx.addAndGet(i5);
                        hp(i4, i3);
                    }
                    int i6 = this.f23001k;
                    if (i6 > 0 && i3 >= i6) {
                        com.byazt.ya.l lVar5 = j.hp;
                        com.byazt.vk.hp.hp(hpVarHp.j());
                        wVar2.hp();
                        hp();
                        return;
                    }
                    j();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.hp.hp(this.f22979s);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            eb();
        } catch (Throwable unused) {
        }
        this.f22975j.set(SystemClock.elapsedRealtime() - jElapsedRealtime);
        this.hp.l(this.f22979s);
        InterfaceC0309l interfaceC0309l = this.f23002v;
        if (interfaceC0309l != null) {
            interfaceC0309l.hp(this);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 790, 123})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public List<a.l> f23003a;
        public int eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public com.byazt.ya.hp f23004j;
        public s jx;

        /* renamed from: l, reason: collision with root package name */
        public String f23005l;

        /* renamed from: q, reason: collision with root package name */
        public Object f23006q;

        /* renamed from: s, reason: collision with root package name */
        public InterfaceC0309l f23007s;

        /* renamed from: w, reason: collision with root package name */
        public com.byazt.zt.jx f23008w;

        public hp hp(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.hp = str;
            return this;
        }

        public hp l(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.f23005l = str;
            return this;
        }

        public hp hp(s sVar) {
            if (sVar != null) {
                this.jx = sVar;
                return this;
            }
            throw new IllegalArgumentException("urls is empty");
        }

        public hp hp(com.byazt.ya.hp hpVar) {
            if (hpVar != null) {
                this.f23004j = hpVar;
                return this;
            }
            throw new IllegalArgumentException("cache == null");
        }

        public hp hp(com.byazt.zt.jx jxVar) {
            if (jxVar != null) {
                this.f23008w = jxVar;
                return this;
            }
            throw new IllegalArgumentException("db == null");
        }

        public hp hp(List<a.l> list) {
            this.f23003a = list;
            return this;
        }

        public hp hp(int i2) {
            this.eb = i2;
            return this;
        }

        public hp hp(InterfaceC0309l interfaceC0309l) {
            this.f23007s = interfaceC0309l;
            return this;
        }

        public hp hp(Object obj) {
            this.f23006q = obj;
            return this;
        }

        public l hp() {
            if (this.f23004j != null && this.f23008w != null && !TextUtils.isEmpty(this.hp) && !TextUtils.isEmpty(this.f23005l) && this.jx != null) {
                return new l(this);
            }
            throw new IllegalArgumentException();
        }
    }
}
