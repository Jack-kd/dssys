package com.kwad.sdk.core.videocache;

import com.kwad.sdk.utils.az;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
class k {
    private final m bat;
    private final com.kwad.sdk.core.videocache.a bau;
    private volatile Thread bay;
    private volatile boolean nK;
    private final Object bav = new Object();
    private final Object baw = new Object();
    private volatile int baz = -1;
    private final AtomicInteger bax = new AtomicInteger();

    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            k.this.Pk();
        }

        public /* synthetic */ a(k kVar, byte b3) {
            this();
        }
    }

    public k(m mVar, com.kwad.sdk.core.videocache.a aVar) {
        this.bat = (m) az.checkNotNull(mVar);
        this.bau = (com.kwad.sdk.core.videocache.a) az.checkNotNull(aVar);
    }

    private void Ph() throws ProxyCacheException {
        int i2 = this.bax.get();
        if (i2 <= 0) {
            return;
        }
        this.bax.set(0);
        throw new ProxyCacheException("Error reading source " + i2 + " times");
    }

    private synchronized void Pi() {
        try {
            byte b3 = 0;
            boolean z2 = (this.bay == null || this.bay.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.nK && !this.bau.isCompleted() && !z2) {
                this.bay = new Thread(new a(this, b3), "Source reader for " + this.bat);
                this.bay.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void Pj() {
        synchronized (this.bav) {
            try {
                try {
                    this.bav.wait(1000L);
                } catch (InterruptedException e2) {
                    throw new ProxyCacheException("Waiting source data is interrupted!", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        r2 = r2 + r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Pk() {
        /*
            r8 = this;
            r0 = -1
            r2 = 0
            com.kwad.sdk.core.videocache.a r4 = r8.bau     // Catch: java.lang.Throwable -> L41
            long r2 = r4.OV()     // Catch: java.lang.Throwable -> L41
            com.kwad.sdk.core.videocache.m r4 = r8.bat     // Catch: java.lang.Throwable -> L41
            r4.aP(r2)     // Catch: java.lang.Throwable -> L41
            com.kwad.sdk.core.videocache.m r4 = r8.bat     // Catch: java.lang.Throwable -> L41
            long r0 = r4.length()     // Catch: java.lang.Throwable -> L41
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L41
        L19:
            com.kwad.sdk.core.videocache.m r5 = r8.bat     // Catch: java.lang.Throwable -> L41
            int r5 = r5.read(r4)     // Catch: java.lang.Throwable -> L41
            r6 = -1
            if (r5 == r6) goto L45
            java.lang.Object r6 = r8.baw     // Catch: java.lang.Throwable -> L41
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L41
            boolean r7 = r8.isStopped()     // Catch: java.lang.Throwable -> L33
            if (r7 == 0) goto L35
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
        L2c:
            r8.Pm()
            r8.j(r2, r0)
            return
        L33:
            r4 = move-exception
            goto L43
        L35:
            com.kwad.sdk.core.videocache.a r7 = r8.bau     // Catch: java.lang.Throwable -> L33
            r7.d(r4, r5)     // Catch: java.lang.Throwable -> L33
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
            long r5 = (long) r5
            long r2 = r2 + r5
            r8.j(r2, r0)     // Catch: java.lang.Throwable -> L41
            goto L19
        L41:
            r4 = move-exception
            goto L4c
        L43:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L33
            throw r4     // Catch: java.lang.Throwable -> L41
        L45:
            r8.tryComplete()     // Catch: java.lang.Throwable -> L41
            r8.Pl()     // Catch: java.lang.Throwable -> L41
            goto L2c
        L4c:
            java.util.concurrent.atomic.AtomicInteger r5 = r8.bax     // Catch: java.lang.Throwable -> L55
            r5.incrementAndGet()     // Catch: java.lang.Throwable -> L55
            onError(r4)     // Catch: java.lang.Throwable -> L55
            goto L2c
        L55:
            r4 = move-exception
            r8.Pm()
            r8.j(r2, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.videocache.k.Pk():void");
    }

    private void Pl() {
        this.baz = 100;
        eM(this.baz);
    }

    private void Pm() {
        try {
            this.bat.close();
        } catch (ProxyCacheException e2) {
            onError(new ProxyCacheException("Error closing source " + this.bat, e2));
        }
    }

    private boolean isStopped() {
        return Thread.currentThread().isInterrupted() || this.nK;
    }

    private void j(long j2, long j3) {
        k(j2, j3);
        synchronized (this.bav) {
            this.bav.notifyAll();
        }
    }

    private void k(long j2, long j3) {
        int i2 = j3 == 0 ? 100 : (int) ((j2 / j3) * 100.0f);
        boolean z2 = i2 != this.baz;
        if (j3 >= 0 && z2) {
            eM(i2);
        }
        this.baz = i2;
    }

    private static void onError(Throwable th) {
        if (th instanceof InterruptedProxyCacheException) {
            com.kwad.sdk.core.d.c.d("ProxyCache", "ProxyCache is interrupted");
        } else {
            com.kwad.sdk.core.d.c.e("ProxyCache", "ProxyCache error");
        }
    }

    private void tryComplete() {
        synchronized (this.baw) {
            try {
                if (!isStopped() && this.bau.OV() == this.bat.length()) {
                    this.bau.complete();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void eM(int i2) {
    }

    public final void shutdown() {
        synchronized (this.baw) {
            try {
                com.kwad.sdk.core.d.c.d("ProxyCache", "Shutdown proxy for " + this.bat);
                try {
                    this.nK = true;
                    if (this.bay != null) {
                        this.bay.interrupt();
                    }
                    this.bau.close();
                } catch (ProxyCacheException e2) {
                    onError(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int a(byte[] bArr, long j2, int i2) throws ProxyCacheException {
        l.b(bArr, j2, 1024);
        while (!this.bau.isCompleted() && this.bau.OV() < 1024 + j2 && !this.nK) {
            Pi();
            Pj();
            Ph();
        }
        int iA = this.bau.a(bArr, j2, 1024);
        if (this.bau.isCompleted() && this.baz != 100) {
            this.baz = 100;
            eM(100);
        }
        return iA;
    }
}
