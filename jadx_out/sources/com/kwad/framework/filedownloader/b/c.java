package com.kwad.framework.filedownloader.b;

import android.database.SQLException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.kwad.framework.filedownloader.b.a;
import com.kwad.framework.filedownloader.f.f;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes4.dex */
public final class c implements a {
    private volatile Thread aAD;
    private Handler handler;
    private volatile List<Integer> aAB = new CopyOnWriteArrayList();
    private AtomicInteger aAC = new AtomicInteger();
    private final b aAy = new b();
    private final d aAz = new d();
    private final long aAA = com.kwad.framework.filedownloader.f.e.Dz().aDt;

    public c() {
        HandlerThread handlerThread = new HandlerThread(f.cp("RemitHandoverToDB"), 10);
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper(), new Handler.Callback() { // from class: com.kwad.framework.filedownloader.b.c.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 0) {
                    if (c.this.aAD != null) {
                        LockSupport.unpark(c.this.aAD);
                        c.a(c.this, (Thread) null);
                    }
                    return false;
                }
                try {
                    c.this.aAC.set(i2);
                    c.this.cH(i2);
                    c.this.aAB.add(Integer.valueOf(i2));
                    return false;
                } finally {
                    c.this.aAC.set(0);
                    if (c.this.aAD != null) {
                        LockSupport.unpark(c.this.aAD);
                        c.a(c.this, (Thread) null);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cH(int i2) throws SQLException {
        this.aAz.b(this.aAy.cC(i2));
        List<com.kwad.framework.filedownloader.d.a> listCD = this.aAy.cD(i2);
        this.aAz.cE(i2);
        Iterator<com.kwad.framework.filedownloader.d.a> it = listCD.iterator();
        while (it.hasNext()) {
            this.aAz.a(it.next());
        }
    }

    private boolean cI(int i2) {
        return !this.aAB.contains(Integer.valueOf(i2));
    }

    private void cJ(int i2) throws SQLException {
        this.handler.removeMessages(i2);
        if (this.aAC.get() != i2) {
            cH(i2);
            return;
        }
        this.aAD = Thread.currentThread();
        this.handler.sendEmptyMessage(0);
        LockSupport.park();
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final a.InterfaceC0581a BR() {
        d dVar = this.aAz;
        b bVar = this.aAy;
        return dVar.a(bVar.aAv, bVar.aAw);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cB(int i2) {
        this.handler.sendEmptyMessageDelayed(i2, this.aAA);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.d.c cC(int i2) {
        return this.aAy.cC(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final List<com.kwad.framework.filedownloader.d.a> cD(int i2) {
        return this.aAy.cD(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cE(int i2) throws SQLException {
        this.aAy.cE(i2);
        if (cI(i2)) {
            return;
        }
        this.aAz.cE(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final boolean cF(int i2) {
        this.aAz.cF(i2);
        return this.aAy.cF(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cG(int i2) {
        this.aAy.cG(i2);
        if (cI(i2)) {
            return;
        }
        this.aAz.cG(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void clear() throws SQLException {
        this.aAy.clear();
        this.aAz.clear();
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void d(int i2, long j2) throws SQLException {
        this.aAy.d(i2, j2);
        if (cI(i2)) {
            cJ(i2);
        }
        this.aAz.d(i2, j2);
        this.aAB.remove(Integer.valueOf(i2));
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void w(int i2, int i3) throws SQLException {
        this.aAy.w(i2, i3);
        if (cI(i2)) {
            return;
        }
        this.aAz.w(i2, i3);
    }

    public static /* synthetic */ Thread a(c cVar, Thread thread) {
        cVar.aAD = null;
        return null;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(int i2, long j2) throws SQLException {
        this.aAy.b(i2, j2);
        if (cI(i2)) {
            return;
        }
        this.aAz.b(i2, j2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void c(int i2, long j2) {
        this.aAy.c(i2, j2);
        if (cI(i2)) {
            this.handler.removeMessages(i2);
            if (this.aAC.get() == i2) {
                this.aAD = Thread.currentThread();
                this.handler.sendEmptyMessage(0);
                LockSupport.park();
                this.aAz.c(i2, j2);
            }
        } else {
            this.aAz.c(i2, j2);
        }
        this.aAB.remove(Integer.valueOf(i2));
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(com.kwad.framework.filedownloader.d.a aVar) throws SQLException {
        this.aAy.a(aVar);
        if (cI(aVar.getId())) {
            return;
        }
        this.aAz.a(aVar);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(com.kwad.framework.filedownloader.d.c cVar) throws SQLException {
        this.aAy.b(cVar);
        if (cI(cVar.getId())) {
            return;
        }
        this.aAz.b(cVar);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, int i3, long j2) throws SQLException {
        this.aAy.a(i2, i3, j2);
        if (cI(i2)) {
            return;
        }
        this.aAz.a(i2, i3, j2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, String str, long j2, long j3, int i3) throws SQLException {
        this.aAy.a(i2, str, j2, j3, i3);
        if (cI(i2)) {
            return;
        }
        this.aAz.a(i2, str, j2, j3, i3);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, long j2, String str, String str2) throws SQLException {
        this.aAy.a(i2, j2, str, str2);
        if (cI(i2)) {
            return;
        }
        this.aAz.a(i2, j2, str, str2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, Throwable th) throws SQLException {
        this.aAy.a(i2, th);
        if (cI(i2)) {
            return;
        }
        this.aAz.a(i2, th);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, Throwable th, long j2) throws SQLException {
        this.aAy.a(i2, th, j2);
        if (cI(i2)) {
            cJ(i2);
        }
        this.aAz.a(i2, th, j2);
        this.aAB.remove(Integer.valueOf(i2));
    }
}
