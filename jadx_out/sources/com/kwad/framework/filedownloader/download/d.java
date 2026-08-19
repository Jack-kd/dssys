package com.kwad.framework.filedownloader.download;

import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.kwad.framework.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.kwad.framework.filedownloader.exception.FileDownloadOutOfSpaceException;
import com.kwad.sdk.crash.utils.h;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes4.dex */
public final class d implements Handler.Callback {
    private volatile Thread aAD;
    private final a aBQ;
    private final int aBR;
    private final int aBS;
    private final int aBT;
    private long aBU;
    private HandlerThread aBV;
    private volatile boolean aBY;
    private final com.kwad.framework.filedownloader.d.c aBi;
    private Handler handler;
    private volatile boolean aBW = false;
    private volatile long aBC = 0;
    private final AtomicLong aBX = new AtomicLong();
    private boolean aBZ = true;
    private final com.kwad.framework.filedownloader.b.a aBd = b.Ca().Cc();

    public static class a {
        private boolean aCa;
        private Exception aCb;
        private int aCc;

        public final int AL() {
            return this.aCc;
        }

        public final boolean CC() {
            return this.aCa;
        }

        public final void bw(boolean z2) {
            this.aCa = z2;
        }

        public final void cM(int i2) {
            this.aCc = i2;
        }

        public final void f(Exception exc) {
            this.aCb = exc;
        }

        public final Exception getException() {
            return this.aCb;
        }
    }

    public d(com.kwad.framework.filedownloader.d.c cVar, int i2, int i3, int i4) {
        this.aBi = cVar;
        this.aBS = i3 < 5 ? 5 : i3;
        this.aBT = i4;
        this.aBQ = new a();
        this.aBR = i2;
    }

    private boolean CA() {
        if (this.aBi.isChunked()) {
            com.kwad.framework.filedownloader.d.c cVar = this.aBi;
            cVar.ah(cVar.CX());
            return false;
        }
        if (this.aBi.CX() == this.aBi.getTotal()) {
            return false;
        }
        c(new FileDownloadGiveUpRetryException(com.kwad.framework.filedownloader.f.f.c("sofar[%d] not equal total[%d]", Long.valueOf(this.aBi.CX()), Long.valueOf(this.aBi.getTotal()))));
        return true;
    }

    private void CB() {
        this.aBi.d((byte) -2);
        this.aBd.d(this.aBi.getId(), this.aBi.CX());
        c((byte) -2);
    }

    private void Cy() {
        String strCp = this.aBi.Cp();
        String targetFilePath = this.aBi.getTargetFilePath();
        File file = new File(strCp);
        try {
            File file2 = new File(targetFilePath);
            if (file2.exists()) {
                long length = file2.length();
                if (!file2.delete()) {
                    throw new IOException(com.kwad.framework.filedownloader.f.f.c("Can't delete the old file([%s], [%d]), so can't replace it with the new downloaded one.", targetFilePath, Long.valueOf(length)));
                }
                com.kwad.framework.filedownloader.f.d.d(this, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]", targetFilePath, Long.valueOf(length), Long.valueOf(file.length()));
            }
            if (!file.renameTo(file2)) {
                throw new IOException(com.kwad.framework.filedownloader.f.f.c("Can't rename the  temp downloaded file(%s) to the target file(%s)", strCp, targetFilePath));
            }
            if (!file.exists() || file.delete()) {
                return;
            }
            com.kwad.framework.filedownloader.f.d.d(this, "delete the temp file(%s) failed, on completed downloading.", strCp);
        } catch (Throwable th) {
            if (file.exists() && !file.delete()) {
                com.kwad.framework.filedownloader.f.d.d(this, "delete the temp file(%s) failed, on completed downloading.", strCp);
            }
            throw th;
        }
    }

    private void Cz() {
        Cy();
        this.aBi.d((byte) -3);
        this.aBd.c(this.aBi.getId(), this.aBi.getTotal());
        this.aBd.cE(this.aBi.getId());
        c((byte) -3);
        if (com.kwad.framework.filedownloader.f.e.Dz().aDy) {
            com.kwad.framework.filedownloader.services.f.f(this.aBi);
        }
    }

    private boolean ac(long j2) {
        if (!this.aBZ) {
            return this.aBU != -1 && this.aBX.get() >= this.aBU && j2 - this.aBC >= ((long) this.aBS);
        }
        this.aBZ = false;
        return true;
    }

    private synchronized void b(Message message) {
        if (!this.aBV.isAlive()) {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
            }
            return;
        }
        try {
            this.handler.sendMessage(message);
        } catch (IllegalStateException e2) {
            if (this.aBV.isAlive()) {
                throw e2;
            }
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
            }
        }
    }

    private Exception d(Exception exc) {
        long length;
        String strCp = this.aBi.Cp();
        if ((this.aBi.isChunked() || com.kwad.framework.filedownloader.f.e.Dz().aDx) && (exc instanceof IOException) && new File(strCp).exists()) {
            long availableBytes = h.getAvailableBytes(strCp);
            if (availableBytes <= 4096) {
                File file = new File(strCp);
                if (file.exists()) {
                    length = file.length();
                } else {
                    com.kwad.framework.filedownloader.f.d.a(this, exc, "Exception with: free space isn't enough, and the target file not exist.", new Object[0]);
                    length = 0;
                }
                return new FileDownloadOutOfSpaceException(availableBytes, 4096L, length, exc);
            }
        }
        return exc;
    }

    private void e(Exception exc) {
        Exception exc2;
        Exception excD = d(exc);
        if (excD instanceof SQLiteFullException) {
            a((SQLiteFullException) excD);
            exc2 = excD;
        } else {
            try {
                this.aBi.d((byte) -1);
                this.aBi.ch(exc.toString());
                this.aBd.a(this.aBi.getId(), excD, this.aBi.CX());
                exc2 = excD;
            } catch (SQLiteFullException e2) {
                SQLiteFullException sQLiteFullException = e2;
                a(sQLiteFullException);
                exc2 = sQLiteFullException;
            }
        }
        this.aBQ.f(exc2);
        c((byte) -1);
    }

    private static long h(long j2, long j3) {
        if (j3 <= 0) {
            return -1L;
        }
        if (j2 == -1) {
            return 1L;
        }
        long j4 = j2 / (j3 + 1);
        if (j4 <= 0) {
            return 1L;
        }
        return j4;
    }

    public final void Cs() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.aBV.quit();
            this.aAD = Thread.currentThread();
            while (this.aBW) {
                LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(100L));
            }
            this.aAD = null;
        }
    }

    public final void Ct() {
        this.aBi.d((byte) 1);
        this.aBd.cG(this.aBi.getId());
        c((byte) 1);
    }

    public final void Cu() {
        this.aBi.d((byte) 6);
        c((byte) 6);
        this.aBd.cB(this.aBi.getId());
    }

    public final void Cv() {
        HandlerThread handlerThread = new HandlerThread("source-status-callback", 10);
        this.aBV = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.aBV.getLooper(), this);
    }

    public final void Cw() {
        CB();
    }

    public final void Cx() {
        if (CA()) {
            return;
        }
        Cz();
    }

    public final void a(boolean z2, long j2, String str, String str2) {
        String strCY = this.aBi.CY();
        if (strCY != null && !strCY.equals(str)) {
            throw new IllegalArgumentException(com.kwad.framework.filedownloader.f.f.c("callback onConnected must with precondition succeed, but the etag is changes(%s != %s)", str, strCY));
        }
        this.aBQ.bw(z2);
        this.aBi.d((byte) 2);
        this.aBi.ah(j2);
        this.aBi.cg(str);
        this.aBi.ci(str2);
        this.aBd.a(this.aBi.getId(), j2, str, str2);
        c((byte) 2);
        this.aBU = h(j2, this.aBT);
        this.aBY = true;
    }

    public final void c(Exception exc) {
        e(exc);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0026  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r5) {
        /*
            r4 = this;
            r0 = 1
            r4.aBW = r0
            int r1 = r5.what
            r2 = 3
            r3 = 0
            if (r1 == r2) goto L19
            r2 = 5
            if (r1 == r2) goto Ld
            goto L20
        Ld:
            java.lang.Object r1 = r5.obj     // Catch: java.lang.Throwable -> L17
            java.lang.Exception r1 = (java.lang.Exception) r1     // Catch: java.lang.Throwable -> L17
            int r5 = r5.arg1     // Catch: java.lang.Throwable -> L17
            r4.a(r1, r5)     // Catch: java.lang.Throwable -> L17
            goto L20
        L17:
            r5 = move-exception
            goto L2c
        L19:
            long r1 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L17
            r4.b(r1, r0)     // Catch: java.lang.Throwable -> L17
        L20:
            r4.aBW = r3
            java.lang.Thread r5 = r4.aAD
            if (r5 == 0) goto L2b
            java.lang.Thread r5 = r4.aAD
            java.util.concurrent.locks.LockSupport.unpark(r5)
        L2b:
            return r0
        L2c:
            r4.aBW = r3
            java.lang.Thread r0 = r4.aAD
            if (r0 == 0) goto L37
            java.lang.Thread r0 = r4.aAD
            java.util.concurrent.locks.LockSupport.unpark(r0)
        L37:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.framework.filedownloader.download.d.handleMessage(android.os.Message):boolean");
    }

    public final boolean isAlive() {
        HandlerThread handlerThread = this.aBV;
        return handlerThread != null && handlerThread.isAlive();
    }

    public final void onProgress(long j2) {
        this.aBX.addAndGet(j2);
        this.aBi.ag(j2);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zAc = ac(jElapsedRealtime);
        Handler handler = this.handler;
        if (handler == null) {
            b(jElapsedRealtime, zAc);
        } else if (zAc) {
            b(handler.obtainMessage(3));
        }
    }

    private void c(byte b3) {
        if (b3 != -2) {
            com.kwad.framework.filedownloader.message.e.CR().s(com.kwad.framework.filedownloader.message.f.a(b3, this.aBi, this.aBQ));
        } else if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "High concurrent cause, Already paused and we don't need to call-back to Task in here, %d", Integer.valueOf(this.aBi.getId()));
        }
    }

    private void b(long j2, boolean z2) {
        if (this.aBi.CX() == this.aBi.getTotal()) {
            this.aBd.b(this.aBi.getId(), this.aBi.CX());
            return;
        }
        if (this.aBY) {
            this.aBY = false;
            this.aBi.d((byte) 3);
        }
        if (z2) {
            this.aBC = j2;
            c((byte) 3);
            this.aBX.set(0L);
        }
    }

    public final void a(Exception exc, int i2, long j2) {
        this.aBX.set(0L);
        this.aBi.ag(-j2);
        Handler handler = this.handler;
        if (handler == null) {
            a(exc, i2);
        } else {
            b(handler.obtainMessage(5, i2, 0, exc));
        }
    }

    private void a(SQLiteFullException sQLiteFullException) {
        int id = this.aBi.getId();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly.", Integer.valueOf(id), sQLiteFullException.toString());
        }
        this.aBi.ch(sQLiteFullException.toString());
        this.aBi.d((byte) -1);
        this.aBd.cF(id);
        this.aBd.cE(id);
    }

    private void a(Exception exc, int i2) {
        Exception excD = d(exc);
        this.aBQ.f(excD);
        this.aBQ.cM(this.aBR - i2);
        this.aBi.d((byte) 5);
        this.aBi.ch(excD.toString());
        this.aBd.a(this.aBi.getId(), excD);
        c((byte) 5);
    }
}
