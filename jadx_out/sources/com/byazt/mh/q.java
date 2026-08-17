package com.byazt.mh;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import com.byazt.dk.a;
import com.byazt.dk.eb;
import com.byazt.pg.r;
import com.byazt.ymw.u;
import com.bytedance.component.sdk.annotation.WorkerThread;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.LockSupport;

@com.byazt.kj.hp(hp = {0, 1, 1216, 150})
/* loaded from: classes3.dex */
public abstract class q<R extends com.byazt.dk.a, W extends com.byazt.dk.eb> {
    public static final String eb = "q";

    /* renamed from: k, reason: collision with root package name */
    public static final Rect f23033k = new Rect();

    /* renamed from: a, reason: collision with root package name */
    public volatile Rect f23034a;

    /* renamed from: e, reason: collision with root package name */
    public int f23035e;
    public R ec;

    /* renamed from: j, reason: collision with root package name */
    public Map<Bitmap, Canvas> f23036j;
    public final Set<hp> jl;
    public int jx;

    /* renamed from: n, reason: collision with root package name */
    public volatile l f23038n;

    /* renamed from: q, reason: collision with root package name */
    public final Handler f23039q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.vj.l f23040s;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public final Set<Bitmap> f23041u;

    /* renamed from: v, reason: collision with root package name */
    public final Runnable f23042v;
    public W vv;

    /* renamed from: w, reason: collision with root package name */
    public ByteBuffer f23043w;
    public final Object xs;
    public final AtomicBoolean zy;
    public List<s<R, W>> hp = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public int f23037l = -1;
    public Integer gu = null;

    public interface hp {
        void hp();

        void l();

        void l(ByteBuffer byteBuffer);
    }

    public enum l {
        IDLE,
        RUNNING,
        INITIALIZING,
        FINISHING
    }

    public q(com.byazt.vj.l lVar, hp hpVar) {
        HashSet hashSet = new HashSet();
        this.jl = hashSet;
        this.zy = new AtomicBoolean(true);
        this.f23042v = new Runnable() { // from class: com.byazt.mh.q.1
            @Override // java.lang.Runnable
            public void run() {
                if (q.this.zy.get()) {
                    return;
                }
                if (!q.this.xs()) {
                    q.this.q();
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                q.this.f23039q.postDelayed(this, Math.max(0L, q.this.vv() - (System.currentTimeMillis() - jCurrentTimeMillis)));
                Iterator it = q.this.jl.iterator();
                while (it.hasNext()) {
                    ((hp) it.next()).l(q.this.f23043w);
                }
            }
        };
        this.jx = 1;
        this.f23041u = new HashSet();
        this.xs = new Object();
        this.f23036j = new WeakHashMap();
        this.vv = (W) j();
        this.ec = null;
        this.sz = false;
        this.f23038n = l.IDLE;
        this.f23040s = lVar;
        if (hpVar != null) {
            hashSet.add(hpVar);
        }
        this.f23039q = ((r) com.byazt.ym.j.getService("thread_service")).getIOHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void k() {
        this.f23039q.removeCallbacks(this.f23042v);
        this.hp.clear();
        synchronized (this.xs) {
            try {
                for (Bitmap bitmap : this.f23041u) {
                    if (bitmap != null && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                }
                this.f23041u.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f23043w != null) {
            this.f23043w = null;
        }
        this.f23036j.clear();
        try {
            if (this.ec != null) {
                this.ec = null;
            }
        } catch (IOException unused) {
        }
        jx();
        this.f23038n = l.IDLE;
        Iterator<hp> it = this.jl.iterator();
        while (it.hasNext()) {
            it.next().l();
        }
    }

    private int u() {
        Integer num = this.gu;
        return num != null ? num.intValue() : l();
    }

    private String v() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public long vv() {
        int i2 = this.f23037l + 1;
        this.f23037l = i2;
        if (i2 >= eb()) {
            this.f23037l = 0;
            this.f23035e++;
        }
        s<R, W> sVarHp = hp(this.f23037l);
        if (sVarHp == null) {
            return 0L;
        }
        hp(sVarHp);
        return sVarHp.jl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean xs() {
        if (!e() || this.hp.size() == 0) {
            return false;
        }
        if (u() <= 0 || this.f23035e < u() - 1) {
            return true;
        }
        if (this.f23035e == u() - 1 && this.f23037l < eb() - 1) {
            return true;
        }
        this.sz = true;
        return false;
    }

    public boolean e() {
        return this.f23038n == l.RUNNING || this.f23038n == l.INITIALIZING;
    }

    public void gu() {
        this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.8
            @Override // java.lang.Runnable
            public void run() {
                q.this.f23035e = 0;
                q qVar = q.this;
                qVar.f23037l = -1;
                qVar.sz = false;
            }
        });
    }

    public abstract void hp(s<R, W> sVar);

    public abstract W j();

    public int jl() {
        return this.jx;
    }

    public abstract R jx(com.byazt.dk.a aVar);

    public abstract void jx();

    public abstract int l();

    public abstract Rect l(R r2) throws IOException;

    public Rect a() {
        if (this.f23034a == null) {
            if (this.f23038n == l.FINISHING) {
                u.l(eb, "In finishing,do not interrupt");
            }
            final Thread threadCurrentThread = Thread.currentThread();
            this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.5
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            if (q.this.f23034a == null) {
                                if (q.this.ec == null) {
                                    q qVar = q.this;
                                    qVar.ec = qVar.jx(qVar.f23040s.l());
                                } else {
                                    q.this.ec.d_();
                                }
                                q qVar2 = q.this;
                                qVar2.hp(qVar2.l((q) qVar2.ec));
                            }
                        } catch (Exception unused) {
                            q.this.f23034a = q.f23033k;
                        }
                        LockSupport.unpark(threadCurrentThread);
                    } catch (Throwable th) {
                        LockSupport.unpark(threadCurrentThread);
                        throw th;
                    }
                }
            });
            LockSupport.park(threadCurrentThread);
        }
        return this.f23034a == null ? f23033k : this.f23034a;
    }

    public int eb() {
        return this.hp.size();
    }

    public int jx(int i2, int i3) {
        int i4 = 1;
        if (i2 != 0 && i3 != 0) {
            int iMin = Math.min(a().width() / i2, a().height() / i3);
            while (true) {
                int i5 = i4 * 2;
                if (i5 > iMin) {
                    break;
                }
                i4 = i5;
            }
        }
        return i4;
    }

    public void l(final hp hpVar) {
        this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.3
            @Override // java.lang.Runnable
            public void run() {
                q.this.jl.remove(hpVar);
            }
        });
    }

    public void q() {
        if (this.f23034a == f23033k) {
            return;
        }
        l lVar = this.f23038n;
        l lVar2 = l.FINISHING;
        if (lVar == lVar2 || this.f23038n == l.IDLE) {
            v();
            return;
        }
        if (this.f23038n == l.INITIALIZING) {
            u.l(eb, v() + "Processing,wait for finish at " + this.f23038n);
        }
        this.f23038n = lVar2;
        if (Looper.myLooper() == this.f23039q.getLooper()) {
            k();
        } else {
            this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.7
                @Override // java.lang.Runnable
                public void run() {
                    q.this.k();
                }
            });
        }
    }

    public void s() {
        if (this.f23034a == f23033k) {
            return;
        }
        if (this.f23038n != l.RUNNING) {
            l lVar = this.f23038n;
            l lVar2 = l.INITIALIZING;
            if (lVar != lVar2) {
                if (this.f23038n == l.FINISHING) {
                    u.l(eb, v() + " Processing,wait for finish at " + this.f23038n);
                }
                this.f23038n = lVar2;
                if (Looper.myLooper() == this.f23039q.getLooper()) {
                    hp();
                    return;
                } else {
                    this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.6
                        @Override // java.lang.Runnable
                        public void run() {
                            q.this.hp();
                        }
                    });
                    return;
                }
            }
        }
        v();
    }

    public void w() {
        this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.4
            @Override // java.lang.Runnable
            public void run() {
                if (q.this.jl.size() == 0) {
                    q.this.q();
                }
            }
        });
    }

    public boolean l(int i2, int i3) {
        final int iJx = jx(i2, i3);
        if (iJx == this.jx) {
            return false;
        }
        final boolean zE = e();
        this.f23039q.removeCallbacks(this.f23042v);
        this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.9
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                q.this.k();
                try {
                    q qVar = q.this;
                    qVar.jx = iJx;
                    qVar.hp(qVar.l((q) qVar.jx(qVar.f23040s.l())));
                    if (zE) {
                        q.this.hp();
                    }
                } catch (IOException unused) {
                }
            }
        });
        return true;
    }

    public Bitmap hp(int i2, int i3) {
        synchronized (this.xs) {
            try {
                Iterator<Bitmap> it = this.f23041u.iterator();
                Bitmap bitmapCreateBitmap = null;
                while (it.hasNext()) {
                    int i4 = i2 * i3 * 4;
                    Bitmap next = it.next();
                    if (next != null && next.getAllocationByteCount() >= i4) {
                        it.remove();
                        if (next.getWidth() != i2 || next.getHeight() != i3) {
                            if (i2 > 0 && i3 > 0) {
                                next.reconfigure(i2, i3, Bitmap.Config.ARGB_4444);
                            }
                        }
                        next.eraseColor(0);
                        return next;
                    }
                    bitmapCreateBitmap = next;
                }
                if (i2 <= 0 || i3 <= 0) {
                    return null;
                }
                try {
                    bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_4444);
                } catch (Exception | OutOfMemoryError unused) {
                }
                return bitmapCreateBitmap;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(Bitmap bitmap) {
        synchronized (this.xs) {
            if (bitmap != null) {
                try {
                    this.f23041u.add(bitmap);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void hp(final hp hpVar) {
        this.f23039q.post(new Runnable() { // from class: com.byazt.mh.q.2
            @Override // java.lang.Runnable
            public void run() {
                q.this.jl.add(hpVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Rect rect) {
        this.f23034a = rect;
        int iWidth = rect.width() * rect.height();
        int i2 = this.jx;
        this.f23043w = ByteBuffer.allocate(((iWidth / (i2 * i2)) + 1) * 4);
        if (this.vv == null) {
            this.vv = (W) j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void hp() {
        this.zy.compareAndSet(true, false);
        System.currentTimeMillis();
        try {
            if (this.hp.size() == 0) {
                try {
                    R r2 = this.ec;
                    if (r2 == null) {
                        this.ec = (R) jx(this.f23040s.l());
                    } else {
                        r2.d_();
                    }
                    hp(l((q<R, W>) this.ec));
                } catch (Throwable unused) {
                }
            }
            v();
            System.currentTimeMillis();
            this.f23038n = l.RUNNING;
            if (u() != 0 && this.sz) {
                v();
                return;
            }
            this.f23037l = -1;
            this.f23042v.run();
            Iterator<hp> it = this.jl.iterator();
            while (it.hasNext()) {
                it.next().hp();
            }
        } catch (Throwable th) {
            v();
            System.currentTimeMillis();
            this.f23038n = l.RUNNING;
            throw th;
        }
    }

    public s<R, W> hp(int i2) {
        if (i2 < 0 || i2 >= this.hp.size()) {
            return null;
        }
        return this.hp.get(i2);
    }
}
