package com.smartdigimkt.z0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.smartdigimkt.w0.e0;
import com.smartdigimkt.w0.l0;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class w extends Handler implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final int f45419a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.w0.f f45420b;

    /* renamed from: c, reason: collision with root package name */
    public final long f45421c;

    /* renamed from: d, reason: collision with root package name */
    public v f45422d;

    /* renamed from: e, reason: collision with root package name */
    public IOException f45423e;

    /* renamed from: f, reason: collision with root package name */
    public int f45424f;

    /* renamed from: g, reason: collision with root package name */
    public volatile Thread f45425g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f45426h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f45427i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ a0 f45428j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(a0 a0Var, Looper looper, com.smartdigimkt.w0.f fVar, v vVar, int i2, long j2) {
        super(looper);
        this.f45428j = a0Var;
        this.f45420b = fVar;
        this.f45422d = vVar;
        this.f45419a = i2;
        this.f45421c = j2;
    }

    public final void a(boolean z2) {
        this.f45427i = z2;
        this.f45423e = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z2) {
                sendEmptyMessage(1);
            }
        } else {
            this.f45426h = true;
            this.f45420b.f44773f = true;
            if (this.f45425g != null) {
                this.f45425g.interrupt();
            }
        }
        if (z2) {
            this.f45428j.f45352b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ((com.smartdigimkt.w0.i) this.f45422d).a(this.f45420b, jElapsedRealtime, jElapsedRealtime - this.f45421c, true);
            this.f45422d = null;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        char c2;
        com.smartdigimkt.o0.k kVar;
        if (this.f45427i) {
            return;
        }
        int i2 = message.what;
        if (i2 == 0) {
            this.f45423e = null;
            a0 a0Var = this.f45428j;
            a0Var.f45351a.execute(a0Var.f45352b);
            return;
        }
        if (i2 == 4) {
            throw ((Error) message.obj);
        }
        this.f45428j.f45352b = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - this.f45421c;
        if (this.f45426h) {
            ((com.smartdigimkt.w0.i) this.f45422d).a(this.f45420b, jElapsedRealtime, j2, false);
            return;
        }
        int i3 = message.what;
        if (i3 == 1) {
            ((com.smartdigimkt.w0.i) this.f45422d).a(this.f45420b, jElapsedRealtime, j2, false);
            return;
        }
        if (i3 == 2) {
            try {
                ((com.smartdigimkt.w0.i) this.f45422d).a(this.f45420b, jElapsedRealtime, j2);
                return;
            } catch (RuntimeException e2) {
                Log.e("LoadTask", "Unexpected exception handling load completed", e2);
                this.f45428j.f45353c = new z(e2);
                return;
            }
        }
        if (i3 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f45423e = iOException;
        v vVar = this.f45422d;
        com.smartdigimkt.w0.f fVar = this.f45420b;
        com.smartdigimkt.w0.i iVar = (com.smartdigimkt.w0.i) vVar;
        iVar.getClass();
        boolean z2 = iOException instanceof l0;
        com.smartdigimkt.w0.x xVar = iVar.f44803d;
        k kVar2 = fVar.f44776i;
        long j3 = fVar.f44775h;
        long j4 = iVar.f44788A;
        com.smartdigimkt.w0.y yVar = new com.smartdigimkt.w0.y();
        xVar.a(j3);
        xVar.a(j4);
        com.smartdigimkt.w0.z zVar = new com.smartdigimkt.w0.z();
        Iterator it = xVar.f44871c.iterator();
        while (it.hasNext()) {
            com.smartdigimkt.w0.w wVar = (com.smartdigimkt.w0.w) it.next();
            com.smartdigimkt.w0.y yVar2 = yVar;
            com.smartdigimkt.w0.x.a(wVar.f44867a, new com.smartdigimkt.w0.t(xVar, wVar.f44868b, yVar2, zVar, iOException, z2));
            yVar = yVar2;
        }
        if (iVar.f44793F == -1) {
            iVar.f44793F = fVar.f44777j;
        }
        if (z2) {
            c2 = 3;
        } else {
            int iF = iVar.f();
            boolean z3 = iF > iVar.f44797J;
            if (iVar.f44793F == -1 && ((kVar = iVar.f44815p) == null || kVar.b() == -9223372036854775807L)) {
                boolean z4 = iVar.f44819t;
                if (z4 && !iVar.f44822w && iVar.f44795H == -9223372036854775807L) {
                    iVar.f44796I = true;
                    c2 = 2;
                } else {
                    iVar.f44822w = z4;
                    iVar.f44794G = 0L;
                    iVar.f44797J = 0;
                    for (e0 e0Var : iVar.f44816q) {
                        e0Var.d();
                    }
                    fVar.f44772e.f42199a = 0L;
                    fVar.f44775h = 0L;
                    fVar.f44774g = true;
                }
            } else {
                iVar.f44797J = iF;
            }
            c2 = z3 ? (char) 1 : (char) 0;
        }
        if (c2 == 3) {
            this.f45428j.f45353c = this.f45423e;
            return;
        }
        if (c2 != 2) {
            int i4 = c2 == 1 ? 1 : this.f45424f + 1;
            this.f45424f = i4;
            long jMin = Math.min((i4 - 1) * 1000, 5000);
            a0 a0Var2 = this.f45428j;
            if (a0Var2.f45352b != null) {
                throw new IllegalStateException();
            }
            a0Var2.f45352b = this;
            if (jMin > 0) {
                sendEmptyMessageDelayed(0, jMin);
            } else {
                this.f45423e = null;
                a0Var2.f45351a.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f45425g = Thread.currentThread();
            if (!this.f45426h) {
                com.smartdigimkt.a1.r.a("load:".concat(this.f45420b.getClass().getSimpleName()));
                try {
                    this.f45420b.a();
                    com.smartdigimkt.a1.r.a();
                } catch (Throwable th) {
                    com.smartdigimkt.a1.r.a();
                    throw th;
                }
            }
            if (this.f45427i) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e2) {
            if (this.f45427i) {
                return;
            }
            obtainMessage(3, e2).sendToTarget();
        } catch (Error e3) {
            Log.e("LoadTask", "Unexpected error loading stream", e3);
            if (!this.f45427i) {
                obtainMessage(4, e3).sendToTarget();
            }
            throw e3;
        } catch (InterruptedException unused) {
            if (!this.f45426h) {
                throw new IllegalStateException();
            }
            if (this.f45427i) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (this.f45427i) {
                return;
            }
            obtainMessage(3, new z(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (this.f45427i) {
                return;
            }
            obtainMessage(3, new z(e5)).sendToTarget();
        }
    }
}
