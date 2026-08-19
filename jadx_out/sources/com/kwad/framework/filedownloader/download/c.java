package com.kwad.framework.filedownloader.download;

import com.kwad.framework.filedownloader.download.ConnectTask;

/* loaded from: classes4.dex */
public final class c implements Runnable {
    private final int aAO;
    private final ConnectTask aBK;
    private final f aBL;
    private e aBM;
    final int aBN;
    private final boolean aBl;
    private final String apn;
    private volatile boolean nJ;

    public static class a {
        private Boolean aBI;
        private f aBL;
        private final ConnectTask.a aBO = new ConnectTask.a();
        private Integer aBP;
        private String apn;

        public final c Cr() {
            if (this.aBL == null || this.apn == null || this.aBI == null || this.aBP == null) {
                throw new IllegalArgumentException(com.kwad.framework.filedownloader.f.f.c("%s %s %B", this.aBL, this.apn, this.aBI));
            }
            ConnectTask connectTaskBZ = this.aBO.BZ();
            return new c(connectTaskBZ.aAO, this.aBP.intValue(), connectTaskBZ, this.aBL, this.aBI.booleanValue(), this.apn, (byte) 0);
        }

        public final a a(f fVar) {
            this.aBL = fVar;
            return this;
        }

        public final a b(com.kwad.framework.filedownloader.download.a aVar) {
            this.aBO.a(aVar);
            return this;
        }

        public final a bv(boolean z2) {
            this.aBI = Boolean.valueOf(z2);
            return this;
        }

        public final a c(com.kwad.framework.filedownloader.d.b bVar) {
            this.aBO.a(bVar);
            return this;
        }

        public final a cL(int i2) {
            this.aBO.cK(i2);
            return this;
        }

        public final a cb(String str) {
            this.aBO.bY(str);
            return this;
        }

        public final a cc(String str) {
            this.aBO.bZ(str);
            return this;
        }

        public final a cd(String str) {
            this.apn = str;
            return this;
        }

        public final a i(Integer num) {
            this.aBP = num;
            return this;
        }
    }

    public /* synthetic */ c(int i2, int i3, ConnectTask connectTask, f fVar, boolean z2, String str, byte b3) {
        this(i2, i3, connectTask, fVar, z2, str);
    }

    public final void Bw() {
        pause();
    }

    public final void pause() {
        this.nJ = true;
        e eVar = this.aBM;
        if (eVar != null) {
            eVar.pause();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:(8:73|7|(1:9)|22|(3:27|28|76)|29|30|(3:77|32|33)(4:34|(2:36|79)(1:78)|48|49))|3|71) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00dd, code lost:
    
        r5 = r4;
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e5, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0127 A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.framework.filedownloader.download.c.run():void");
    }

    private c(int i2, int i3, ConnectTask connectTask, f fVar, boolean z2, String str) {
        this.aAO = i2;
        this.aBN = i3;
        this.nJ = false;
        this.aBL = fVar;
        this.apn = str;
        this.aBK = connectTask;
        this.aBl = z2;
    }
}
