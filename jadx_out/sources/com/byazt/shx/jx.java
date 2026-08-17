package com.byazt.shx;

import com.byazt.jv.eb;
import com.byazt.uid.q;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1272, 30})
/* loaded from: classes3.dex */
public class jx extends Thread {
    public eb proxy;

    public jx() {
    }

    @Override // java.lang.Thread
    public void interrupt() {
        eb ebVar = this.proxy;
        if (ebVar != null) {
            ebVar.interrupt();
        } else {
            super.interrupt();
        }
    }

    @Override // java.lang.Thread
    public boolean isInterrupted() {
        eb ebVar = this.proxy;
        return ebVar != null ? ebVar.isInterrupted() : super.isInterrupted();
    }

    public boolean isProxyEnable() {
        return q.f26242l.l(1);
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        try {
            try {
                if (!isProxyEnable()) {
                    super.start();
                    return;
                }
                if (this.proxy == null) {
                    this.proxy = new eb(this);
                }
                this.proxy.start();
            } catch (InternalError unused) {
            } catch (OutOfMemoryError unused2) {
                com.byazt.uid.jx.hp.hp("PThread");
                q qVar = q.f26242l;
                qVar.jl().schedule(new Runnable() { // from class: com.byazt.shx.jx.1
                    @Override // java.lang.Runnable
                    public void run() {
                        jx.super.start();
                    }
                }, qVar.j(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public jx(Runnable runnable) {
        super(runnable);
    }

    public jx(String str) {
        super(str);
    }

    public jx(ThreadGroup threadGroup, Runnable runnable) {
        super(threadGroup, runnable);
    }

    public jx(ThreadGroup threadGroup, String str) {
        super(threadGroup, str);
    }

    public jx(Runnable runnable, String str) {
        super(runnable, str);
    }

    public jx(ThreadGroup threadGroup, Runnable runnable, String str) {
        super(threadGroup, runnable, str);
    }

    public jx(ThreadGroup threadGroup, Runnable runnable, String str, long j2) {
        super(threadGroup, runnable, str, j2);
    }
}
