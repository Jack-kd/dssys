package com.byazt.ez;

import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.ip.q;
import com.byazt.yk.e;

@com.byazt.kj.hp(hp = {0, 1, 1109, 34})
/* loaded from: classes2.dex */
public class l implements Runnable {
    public static final String hp = "l";

    /* renamed from: a, reason: collision with root package name */
    public DownloadInfo f19583a;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f19584e;
    public final a eb;
    public volatile boolean gu;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.yk.w f19585j;
    public boolean jl;
    public com.byazt.fu.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.fu.l f19586l;

    /* renamed from: q, reason: collision with root package name */
    public e f19587q;

    /* renamed from: s, reason: collision with root package name */
    public q f19588s;

    /* renamed from: w, reason: collision with root package name */
    public final DownloadTask f19589w;

    public l(com.byazt.fu.l lVar, DownloadTask downloadTask, a aVar) {
        this.jl = false;
        this.jx = lVar;
        this.f19589w = downloadTask;
        if (downloadTask != null) {
            this.f19583a = downloadTask.getDownloadInfo();
        }
        this.eb = aVar;
        this.f19587q = com.byazt.yk.jx.di();
        this.jx.hp(this);
    }

    private void j() {
        q qVar = this.f19588s;
        if (qVar != null) {
            qVar.j();
            this.f19588s = null;
        }
    }

    private String jx() {
        return this.f19583a.getConnectionUrl();
    }

    private boolean w() {
        return this.f19584e || this.gu;
    }

    public void hp(long j2, long j3) {
        com.byazt.yk.w wVar = this.f19585j;
        if (wVar == null) {
            return;
        }
        wVar.hp(j2, j3);
    }

    public void l() {
        this.gu = true;
        com.byazt.yk.w wVar = this.f19585j;
        if (wVar != null) {
            wVar.jx();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        r3.f19586l.hp(false);
     */
    @Override // java.lang.Runnable
    @android.annotation.SuppressLint({"DefaultLocale"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            r3 = this;
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            com.byazt.fu.l r0 = r3.jx
            r3.f19586l = r0
        L9:
            r0 = 0
            com.byazt.fu.l r1 = r3.f19586l     // Catch: java.lang.Throwable -> L1d
            r1.hp(r3)     // Catch: java.lang.Throwable -> L1d
            com.byazt.fu.l r1 = r3.f19586l     // Catch: java.lang.Throwable -> L1d
            boolean r1 = r3.hp(r1)     // Catch: java.lang.Throwable -> L1d
            if (r1 != 0) goto L1f
            com.byazt.fu.l r1 = r3.f19586l     // Catch: java.lang.Throwable -> L1d
            r1.hp(r0)     // Catch: java.lang.Throwable -> L1d
            goto L48
        L1d:
            r1 = move-exception
            goto L58
        L1f:
            com.byazt.fu.l r1 = r3.f19586l     // Catch: java.lang.Throwable -> L1d
            r1.hp(r0)     // Catch: java.lang.Throwable -> L1d
            boolean r1 = r3.w()     // Catch: java.lang.Throwable -> L1d
            if (r1 != 0) goto L48
            com.byazt.ez.a r1 = r3.eb     // Catch: java.lang.Throwable -> L1d
            com.byazt.fu.l r2 = r3.f19586l     // Catch: java.lang.Throwable -> L1d
            int r2 = r2.ec()     // Catch: java.lang.Throwable -> L1d
            com.byazt.fu.l r1 = r1.hp(r2)     // Catch: java.lang.Throwable -> L1d
            r3.f19586l = r1     // Catch: java.lang.Throwable -> L1d
            boolean r1 = r3.w()     // Catch: java.lang.Throwable -> L1d
            if (r1 != 0) goto L48
            com.byazt.fu.l r1 = r3.f19586l     // Catch: java.lang.Throwable -> L1d
            if (r1 == 0) goto L48
            r0 = 50
            java.lang.Thread.sleep(r0)     // Catch: java.lang.Throwable -> L9
            goto L9
        L48:
            com.byazt.fu.l r1 = r3.f19586l
            if (r1 == 0) goto L4f
            r1.hp(r0)
        L4f:
            r3.j()
            com.byazt.ez.a r0 = r3.eb
            r0.hp(r3)
            return
        L58:
            com.byazt.fu.l r2 = r3.f19586l
            if (r2 == 0) goto L5f
            r2.hp(r0)
        L5f:
            r3.j()
            com.byazt.ez.a r0 = r3.eb
            r0.hp(r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.l.run():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x01ac A[Catch: all -> 0x01b3, TRY_LEAVE, TryCatch #12 {all -> 0x01b3, blocks: (B:130:0x01a4, B:133:0x01ac), top: B:214:0x01a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01ba A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01db A[Catch: all -> 0x01c4, TRY_ENTER, TryCatch #4 {all -> 0x01c4, blocks: (B:147:0x01d1, B:151:0x01db, B:153:0x01e1, B:156:0x01ea, B:158:0x01f2, B:160:0x01f8, B:164:0x0203, B:166:0x0207, B:168:0x020f, B:170:0x0220, B:178:0x0246, B:180:0x024c, B:182:0x0259, B:186:0x0261, B:181:0x0253, B:173:0x022f, B:174:0x023b, B:188:0x026c, B:190:0x0274, B:192:0x027c, B:194:0x0284, B:196:0x028c, B:199:0x0295, B:135:0x01b4, B:139:0x01be, B:144:0x01c8), top: B:207:0x01d1, inners: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x01be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x01d7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hp(com.byazt.fu.l r28) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.l.hp(com.byazt.fu.l):boolean");
    }

    public l(com.byazt.fu.l lVar, DownloadTask downloadTask, q qVar, a aVar) {
        this(lVar, downloadTask, aVar);
        this.f19588s = qVar;
    }

    private void hp(com.byazt.fu.l lVar, long j2) {
        com.byazt.fu.l lVarW = lVar.j() ? lVar.w() : lVar;
        if (lVarW != null) {
            if (lVarW.s()) {
                this.f19587q.hp(lVarW.gu(), lVarW.l(), j2);
            }
            lVarW.l(j2);
            this.f19587q.hp(lVarW.gu(), lVarW.ec(), lVarW.l(), j2);
            return;
        }
        if (lVar.j()) {
            this.f19587q.hp(lVar.gu(), lVar.ec(), j2);
        }
    }

    public void hp() {
        this.f19584e = true;
        com.byazt.yk.w wVar = this.f19585j;
        if (wVar != null) {
            wVar.l();
        }
    }
}
