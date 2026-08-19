package com.kwad.framework.filedownloader.download;

import android.os.SystemClock;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class e {
    private final int aAO;
    private final long aAW;
    long aAX;
    private final long aAY;
    private final f aBL;
    private final int aBN;
    private final com.kwad.framework.filedownloader.b.a aBd;
    private final boolean aBl;
    private final c aCd;
    private final com.kwad.framework.filedownloader.a.b aCe;
    private com.kwad.framework.filedownloader.e.a aCf;
    private volatile long aCg;
    private volatile long aCh;
    private final String apn;
    private final long contentLength;
    private volatile boolean nJ;

    public static class a {
        Integer aAU;
        com.kwad.framework.filedownloader.download.a aAV;
        Boolean aBI;
        f aBL;
        Integer aBP;
        com.kwad.framework.filedownloader.a.b aCe;
        c aCi;
        String apn;

        public final e CE() {
            com.kwad.framework.filedownloader.a.b bVar;
            com.kwad.framework.filedownloader.download.a aVar;
            Integer num;
            if (this.aBI == null || (bVar = this.aCe) == null || (aVar = this.aAV) == null || this.aBL == null || this.apn == null || (num = this.aAU) == null || this.aBP == null) {
                throw new IllegalArgumentException();
            }
            return new e(bVar, aVar, this.aCi, num.intValue(), this.aBP.intValue(), this.aBI.booleanValue(), this.aBL, this.apn, (byte) 0);
        }

        public final a a(c cVar) {
            this.aCi = cVar;
            return this;
        }

        public final a b(f fVar) {
            this.aBL = fVar;
            return this;
        }

        public final a bx(boolean z2) {
            this.aBI = Boolean.valueOf(z2);
            return this;
        }

        public final a c(com.kwad.framework.filedownloader.download.a aVar) {
            this.aAV = aVar;
            return this;
        }

        public final a cN(int i2) {
            this.aBP = Integer.valueOf(i2);
            return this;
        }

        public final a cO(int i2) {
            this.aAU = Integer.valueOf(i2);
            return this;
        }

        public final a ce(String str) {
            this.apn = str;
            return this;
        }

        public final a d(com.kwad.framework.filedownloader.a.b bVar) {
            this.aCe = bVar;
            return this;
        }
    }

    public /* synthetic */ e(com.kwad.framework.filedownloader.a.b bVar, com.kwad.framework.filedownloader.download.a aVar, c cVar, int i2, int i3, boolean z2, f fVar, String str, byte b3) {
        this(bVar, aVar, cVar, i2, i3, z2, fVar, str);
    }

    private void CD() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (com.kwad.framework.filedownloader.f.f.i(this.aAX - this.aCg, jElapsedRealtime - this.aCh)) {
            sync();
            this.aCg = this.aAX;
            this.aCh = jElapsedRealtime;
        }
    }

    private void sync() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        try {
            this.aCf.Du();
            if (this.aCd != null) {
                this.aBd.a(this.aAO, this.aBN, this.aAX);
            } else {
                this.aBL.Cm();
            }
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]", Integer.valueOf(this.aAO), Integer.valueOf(this.aBN), Long.valueOf(this.aAX), Long.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
            }
        } catch (IOException e2) {
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s", e2);
            }
        }
    }

    public final void pause() {
        this.nJ = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0109, code lost:
    
        if (r6 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010b, code lost:
    
        sync();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010e, code lost:
    
        com.kwad.sdk.crash.utils.b.closeQuietly(r4);
        com.kwad.sdk.crash.utils.b.closeQuietly(r6);
        r4 = r13.aAX - r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011b, code lost:
    
        if (r0 == (-1)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x011f, code lost:
    
        if (r0 != r4) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x014f, code lost:
    
        throw new com.kwad.framework.filedownloader.exception.FileDownloadGiveUpRetryException(com.kwad.framework.filedownloader.f.f.c("fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset", java.lang.Long.valueOf(r4), java.lang.Long.valueOf(r0), java.lang.Long.valueOf(r13.aAW), java.lang.Long.valueOf(r13.aAY), java.lang.Long.valueOf(r13.aAX), java.lang.Long.valueOf(r2)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0150, code lost:
    
        r13.aBL.a(r13.aCd, r13.aAW, r13.aAY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.framework.filedownloader.download.e.run():void");
    }

    private e(com.kwad.framework.filedownloader.a.b bVar, com.kwad.framework.filedownloader.download.a aVar, c cVar, int i2, int i3, boolean z2, f fVar, String str) {
        this.aCg = 0L;
        this.aCh = 0L;
        this.aBL = fVar;
        this.apn = str;
        this.aCe = bVar;
        this.aBl = z2;
        this.aCd = cVar;
        this.aBN = i3;
        this.aAO = i2;
        this.aBd = b.Ca().Cc();
        this.aAW = aVar.aAW;
        this.aAY = aVar.aAY;
        this.aAX = aVar.aAX;
        this.contentLength = aVar.contentLength;
    }
}
