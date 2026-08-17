package com.byazt.zd;

import android.os.Process;
import com.byazt.io.BaseException;
import com.byazt.rc.u;
import com.byazt.xq.a;
import java.io.InputStream;
import java.util.concurrent.Future;

@com.byazt.kj.hp(hp = {0, 1, 1414, 28})
/* loaded from: classes3.dex */
public class hp implements l {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.rc.hp f28365a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.rc.hp f28366e;
    public com.byazt.rc.hp eb;
    public com.byazt.rc.hp gu;
    public final InputStream hp;
    public volatile boolean jl;
    public final int jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile Throwable f28368k;

    /* renamed from: l, reason: collision with root package name */
    public final int f28369l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.rc.hp f28370q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.rc.hp f28371s;

    /* renamed from: u, reason: collision with root package name */
    public int f28372u;

    /* renamed from: v, reason: collision with root package name */
    public volatile Future f28373v;
    public volatile boolean zy;

    /* renamed from: j, reason: collision with root package name */
    public final Object f28367j = new Object();

    /* renamed from: w, reason: collision with root package name */
    public final Object f28374w = new Object();
    public final Runnable xs = new Runnable() { // from class: com.byazt.zd.hp.1
        @Override // java.lang.Runnable
        public void run() throws SecurityException, IllegalArgumentException {
            com.byazt.rc.hp hpVarJ;
            Process.setThreadPriority(10);
            do {
                try {
                    hpVarJ = hp.this.j();
                    hpVarJ.jx = hp.this.hp.read(hpVarJ.hp);
                    hp.this.jx(hpVarJ);
                } catch (Throwable th) {
                    try {
                        hp.this.f28368k = th;
                        synchronized (hp.this.f28374w) {
                            hp.this.zy = true;
                            hp.this.f28374w.notify();
                            a.hp(hp.this.hp);
                            return;
                        }
                    } catch (Throwable th2) {
                        synchronized (hp.this.f28374w) {
                            hp.this.zy = true;
                            hp.this.f28374w.notify();
                            a.hp(hp.this.hp);
                            throw th2;
                        }
                    }
                }
            } while (hpVarJ.jx != -1);
            synchronized (hp.this.f28374w) {
                hp.this.zy = true;
                hp.this.f28374w.notify();
            }
            a.hp(hp.this.hp);
        }
    };

    public hp(InputStream inputStream, int i2, int i3) throws Throwable {
        this.hp = inputStream;
        this.f28369l = i2;
        if (i3 <= 0) {
            i3 = 1;
        } else if (i3 > 64) {
            i3 = 64;
        }
        this.jx = i3;
        jx();
    }

    private void a() throws BaseException {
        Throwable th = this.f28368k;
        if (th != null) {
            if (th instanceof u) {
                throw new BaseException(1068, "async reader closed!");
            }
            a.hp(th, "async_read");
        }
        throw new BaseException(1069, "async reader terminated!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.rc.hp j() throws InterruptedException, u {
        int i2;
        com.byazt.rc.hp hpVar = this.f28371s;
        if (hpVar != null) {
            if (this.jl) {
                throw new u("");
            }
            this.f28371s = hpVar.f25147j;
            hpVar.f25147j = null;
            return hpVar;
        }
        synchronized (this.f28367j) {
            try {
                if (this.jl) {
                    throw new u("");
                }
                com.byazt.rc.hp hpVar2 = this.f28365a;
                if (hpVar2 == null && (i2 = this.f28372u) < this.jx) {
                    this.f28372u = i2 + 1;
                    return new com.byazt.rc.hp(this.f28369l);
                }
                while (hpVar2 == null) {
                    this.f28367j.wait();
                    if (this.jl) {
                        throw new u("");
                    }
                    hpVar2 = this.f28365a;
                }
                this.f28371s = hpVar2.f25147j;
                this.eb = null;
                this.f28365a = null;
                hpVar2.f25147j = null;
                return hpVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private com.byazt.rc.hp w() throws InterruptedException, BaseException {
        com.byazt.rc.hp hpVar;
        com.byazt.rc.hp hpVar2 = this.gu;
        if (hpVar2 != null) {
            this.gu = hpVar2.f25147j;
            hpVar2.f25147j = null;
            return hpVar2;
        }
        synchronized (this.f28374w) {
            try {
                hpVar = this.f28370q;
                if (hpVar == null) {
                    do {
                        if (this.zy) {
                            a();
                        }
                        this.f28374w.wait();
                        hpVar = this.f28370q;
                    } while (hpVar == null);
                }
                this.gu = hpVar.f25147j;
                this.f28366e = null;
                this.f28370q = null;
                hpVar.f25147j = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hpVar;
    }

    private void jx() throws Throwable {
        this.f28373v = com.byazt.yk.jx.xs().submit(this.xs);
    }

    @Override // com.byazt.zd.l
    public void l() {
        synchronized (this.f28367j) {
            this.jl = true;
            this.f28367j.notify();
        }
        Future future = this.f28373v;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable unused) {
            }
            this.f28373v = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(com.byazt.rc.hp hpVar) {
        synchronized (this.f28374w) {
            try {
                com.byazt.rc.hp hpVar2 = this.f28366e;
                if (hpVar2 == null) {
                    this.f28366e = hpVar;
                    this.f28370q = hpVar;
                    this.f28374w.notify();
                } else {
                    hpVar2.f25147j = hpVar;
                    this.f28366e = hpVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.zd.l
    public com.byazt.rc.hp hp() throws InterruptedException, BaseException {
        return w();
    }

    @Override // com.byazt.zd.l
    public void hp(com.byazt.rc.hp hpVar) {
        l(hpVar);
    }

    private void l(com.byazt.rc.hp hpVar) {
        synchronized (this.f28367j) {
            try {
                com.byazt.rc.hp hpVar2 = this.eb;
                if (hpVar2 == null) {
                    this.eb = hpVar;
                    this.f28365a = hpVar;
                    this.f28367j.notify();
                } else {
                    hpVar2.f25147j = hpVar;
                    this.eb = hpVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
