package com.byazt.rc;

import android.text.TextUtils;
import androidx.core.location.LocationRequestCompat;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.be;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 302})
/* loaded from: classes3.dex */
public class zy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public volatile long f25171a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f25172b;
    public Future cx;

    /* renamed from: d, reason: collision with root package name */
    public Thread f25173d;
    public volatile boolean di;
    public long dy;

    /* renamed from: e, reason: collision with root package name */
    public String f25174e;
    public volatile long eb;
    public volatile long ec;
    public final a gu;
    public volatile q hp;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public volatile long f25175j;
    public final jx jl;
    public final int jx;

    /* renamed from: k, reason: collision with root package name */
    public final com.byazt.jb.hp f25176k;
    public boolean ky;

    /* renamed from: l, reason: collision with root package name */
    public xs f25177l;
    public int lv;

    /* renamed from: ms, reason: collision with root package name */
    public com.byazt.xq.w f25178ms;
    public volatile long ns;
    public int nu;

    /* renamed from: o, reason: collision with root package name */
    public volatile boolean f25180o;
    public BaseException pu;

    /* renamed from: q, reason: collision with root package name */
    public String f25181q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f25182r;

    /* renamed from: s, reason: collision with root package name */
    public String f25183s;
    public volatile long sz;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.fu.j f25184u;
    public int ud;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.ip.q f25185v;
    public long vv;

    /* renamed from: w, reason: collision with root package name */
    public volatile long f25186w;
    public volatile boolean wv;
    public boolean xh;
    public final DownloadInfo zy;
    public final List<q> xs = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public volatile long f25179n = -1;

    public zy(DownloadInfo downloadInfo, gu guVar, jx jxVar, xs xsVar, int i2) {
        this.zy = downloadInfo;
        this.gu = guVar;
        this.jl = jxVar;
        this.f25176k = com.byazt.jb.hp.hp(downloadInfo.getId());
        this.f25177l = xsVar;
        this.jx = i2;
    }

    private void e() {
        com.byazt.ip.q qVar = this.f25185v;
        if (qVar != null) {
            try {
                com.byazt.nu.hp.jx("SegmentReader", "closeConnection: thread = " + this.jx);
                qVar.j();
                qVar.jx();
            } catch (Throwable unused) {
            }
        }
    }

    private void gu() {
        this.f25182r = false;
        jl();
    }

    private boolean hp(q qVar) throws BaseException {
        gu();
        while (true) {
            try {
                l(qVar);
                j(qVar);
                q();
                return true;
            } catch (e e2) {
                this.pu = e2;
                throw e2;
            } catch (Throwable th) {
                try {
                    com.byazt.nu.hp.w("SegmentReader", "download: e = " + th + ", threadIndex = " + this.jx + ", reconnect = " + this.di + ", closed = " + this.f25172b);
                    if (this.f25172b) {
                        q();
                        return false;
                    }
                    if (this.di) {
                        this.di = false;
                        try {
                            Thread.interrupted();
                        } catch (Throwable unused) {
                        }
                        if (this.f25180o) {
                            this.f25180o = false;
                            throw new e(5, "download");
                        }
                    } else {
                        if (th instanceof BaseException) {
                            e = th;
                        } else {
                            try {
                                com.byazt.xq.a.hp((Throwable) th, "download");
                                e = null;
                            } catch (BaseException e3) {
                                e = e3;
                            }
                        }
                        if (e == null || !hp(qVar, e)) {
                            q();
                            return false;
                        }
                    }
                    q();
                } catch (Throwable th2) {
                    q();
                    throw th2;
                }
            }
        }
        q();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x01ef, code lost:
    
        if (r11 <= 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01f3, code lost:
    
        if (r11 == androidx.core.location.LocationRequestCompat.PASSIVE_INTERVAL) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01f7, code lost:
    
        if (r13 <= r11) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x021c, code lost:
    
        throw new com.byazt.io.BaseException(1051, java.lang.String.format("range[%d, %d] , but readCurrent[%d] , readStart[%d]", java.lang.Long.valueOf(r26), java.lang.Long.valueOf(r11), java.lang.Long.valueOf(r13), java.lang.Long.valueOf(r26)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x021d, code lost:
    
        r0 = new java.io.Closeable[1];
        r0[r18] = r10;
        com.byazt.xq.a.hp(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0224, code lost:
    
        if (r9 == null) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0226, code lost:
    
        r0 = r3.l();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x022b, code lost:
    
        r0.jx = -1;
        r9.l(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0232, code lost:
    
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0235, code lost:
    
        r3.hp(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0242, code lost:
    
        r0 = r40.f25176k;
        r3 = r40.zy;
        r4 = r40.f25183s;
        r5 = r40.f25181q;
        r6 = r40.f25174e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x024e, code lost:
    
        if (r40.f25172b != false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0255, code lost:
    
        r33 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0258, code lost:
    
        r33 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0137, code lost:
    
        r6 = r11 + 1;
        r22 = r13 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013d, code lost:
    
        if (r22 <= 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0143, code lost:
    
        r26 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0145, code lost:
    
        com.byazt.nu.hp.w("SegmentReader", "loopAndRead: redundant = ".concat(java.lang.String.valueOf(r22)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0157, code lost:
    
        r26 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0159, code lost:
    
        r40.f25179n = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x015c, code lost:
    
        r13 = r6;
        r18 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x015f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0354 A[PHI: r15
      0x0354: PHI (r15v8 com.byazt.rc.hp) = (r15v7 com.byazt.rc.hp), (r15v10 com.byazt.rc.hp) binds: [B:194:0x0344, B:239:0x0354] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0162 A[PHI: r11
      0x0162: PHI (r11v7 long) = (r11v6 long), (r11v9 long) binds: [B:66:0x0108, B:68:0x0135] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v22 */
    /* JADX WARN: Type inference failed for: r18v27 */
    /* JADX WARN: Type inference failed for: r18v28 */
    /* JADX WARN: Type inference failed for: r18v29 */
    /* JADX WARN: Type inference failed for: r18v30 */
    /* JADX WARN: Type inference failed for: r18v31 */
    /* JADX WARN: Type inference failed for: r18v32 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void j(com.byazt.rc.q r41) throws com.byazt.io.BaseException {
        /*
            Method dump skipped, instructions count: 1008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rc.zy.j(com.byazt.rc.q):void");
    }

    private void jl() {
        this.ud = this.f25177l.f25166j ? this.zy.getRetryCount() : this.zy.getBackUpUrlRetryCount();
        this.nu = 0;
    }

    private void jx(q qVar) throws BaseException {
        String str;
        com.byazt.ip.q qVarHp;
        try {
            try {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    this.f25186w = 0L;
                    this.f25175j = jCurrentTimeMillis;
                    this.vv = qVar.w();
                    this.sz = qVar.a();
                    if (this.sz > 0 && this.vv > this.sz) {
                        throw new e(6, "createConn, ".concat(String.valueOf(qVar)));
                    }
                    this.f25178ms = new com.byazt.xq.w();
                    List<com.byazt.fu.jx> listHp = com.byazt.xq.a.hp(this.zy.getExtraHeaders(), this.zy.geteTag(), this.vv, this.sz);
                    listHp.add(new com.byazt.fu.jx("Segment-Index", String.valueOf(qVar.eb())));
                    listHp.add(new com.byazt.fu.jx("Thread-Index", String.valueOf(this.jx)));
                    com.byazt.xq.a.hp(listHp, this.zy);
                    com.byazt.xq.a.l(listHp, this.zy);
                    String strReplaceFirst = this.f25177l.hp;
                    if (this.f25182r && !TextUtils.isEmpty(strReplaceFirst) && strReplaceFirst.startsWith("https")) {
                        strReplaceFirst = strReplaceFirst.replaceFirst("https", "http");
                    }
                    str = strReplaceFirst;
                    String str2 = this.f25177l.f25167l;
                    com.byazt.nu.hp.jx("SegmentReader", "createConnectionBegin: url = " + str + ", ip = " + str2 + ", segment = " + qVar + ", threadIndex = " + this.jx);
                    this.f25183s = str;
                    this.f25181q = str2;
                    qVarHp = com.byazt.yk.jx.hp(this.zy.isNeedDefaultHttpServiceBackUp(), this.zy.getMaxBytes(), str, str2, listHp, 0, jCurrentTimeMillis - this.dy > 3000 && this.f25176k.l("monitor_download_connect") > 0, this.zy);
                } catch (BaseException e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                com.byazt.xq.a.hp(th, "createConn");
            }
            if (qVarHp == null) {
                throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
            }
            this.f25185v = qVarHp;
            this.f25184u = new com.byazt.fu.j(str, qVarHp);
            if (this.f25172b) {
                throw new u("createConn");
            }
            if (qVarHp instanceof com.byazt.ip.hp) {
                this.f25174e = ((com.byazt.ip.hp) qVarHp).w();
            }
            this.f25186w = System.currentTimeMillis();
        } catch (Throwable th2) {
            this.f25186w = System.currentTimeMillis();
            throw th2;
        }
    }

    private void l(q qVar) throws com.byazt.io.q, BaseException {
        jx(qVar);
        this.gu.hp(this, qVar, this.f25177l, this.f25184u);
        this.f25177l.jx();
    }

    private void q() {
        this.dy = this.f25175j;
        this.f25175j = -1L;
        this.f25186w = -1L;
        this.f25171a = -1L;
        this.eb = -1L;
        e();
    }

    private long zy() {
        long j2 = this.ec;
        this.ec = 0L;
        return j2 <= 0 ? LocationRequestCompat.PASSIVE_INTERVAL : j2;
    }

    public void a() {
        hp(false);
    }

    public boolean eb() {
        return this.ky;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
    
        r5.hp = null;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            r5 = this;
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            r0 = 0
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> Ld2
            r5.f25173d = r1     // Catch: java.lang.Throwable -> Ld2
            com.byazt.rc.a r1 = r5.gu     // Catch: java.lang.Throwable -> Ld2
            r1.hp(r5)     // Catch: java.lang.Throwable -> Ld2
            com.byazt.rc.xs r1 = r5.f25177l     // Catch: java.lang.Throwable -> Ld2
            r1.hp(r5)     // Catch: java.lang.Throwable -> Ld2
        L16:
            com.byazt.rc.a r1 = r5.gu     // Catch: java.lang.Throwable -> Ld2
            com.byazt.rc.xs r2 = r5.f25177l     // Catch: java.lang.Throwable -> Ld2
            com.byazt.rc.q r1 = r1.hp(r5, r2)     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r2 = "SegmentReader"
            if (r1 != 0) goto L37
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r3 = "no more segment, thread_index = "
            r1.<init>(r3)     // Catch: java.lang.Throwable -> Ld2
            int r3 = r5.jx     // Catch: java.lang.Throwable -> Ld2
            r1.append(r3)     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Ld2
            com.byazt.nu.hp.jx(r2, r1)     // Catch: java.lang.Throwable -> Ld2
            goto Lb5
        L37:
            r5.hp = r1     // Catch: java.lang.Throwable -> Ld2
            boolean r3 = r5.hp(r1)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            if (r3 == 0) goto L51
            java.util.List<com.byazt.rc.q> r3 = r5.xs     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            r3.add(r1)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            r5.hp = r0     // Catch: java.lang.Throwable -> Ld2
        L46:
            com.byazt.rc.a r2 = r5.gu     // Catch: java.lang.Throwable -> Ld2
            r2.hp(r5, r1)     // Catch: java.lang.Throwable -> Ld2
            goto L16
        L4c:
            r2 = move-exception
            goto Lca
        L4f:
            r3 = move-exception
            goto L82
        L51:
            boolean r3 = r5.f25172b     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            if (r3 != 0) goto L7a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            java.lang.String r4 = "download segment failed, segment = "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            r3.append(r1)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            java.lang.String r4 = ", thread_index = "
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            int r4 = r5.jx     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            java.lang.String r4 = ", failedException = "
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            com.byazt.io.BaseException r4 = r5.pu     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
            com.byazt.nu.hp.w(r2, r3)     // Catch: java.lang.Throwable -> L4c com.byazt.rc.e -> L4f
        L7a:
            r5.hp = r0     // Catch: java.lang.Throwable -> Ld2
        L7c:
            com.byazt.rc.a r2 = r5.gu     // Catch: java.lang.Throwable -> Ld2
            r2.hp(r5, r1)     // Catch: java.lang.Throwable -> Ld2
            goto Lb5
        L82:
            java.lang.String r4 = "run: SegmentApplyException, e = "
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r3 = r4.concat(r3)     // Catch: java.lang.Throwable -> L4c
            com.byazt.nu.hp.w(r2, r3)     // Catch: java.lang.Throwable -> L4c
            int r3 = r5.hq     // Catch: java.lang.Throwable -> L4c
            r4 = 50
            if (r3 < r4) goto Lc2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c
            java.lang.String r4 = "segment apply failed "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4c
            int r4 = r5.hq     // Catch: java.lang.Throwable -> L4c
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r4 = "times, thread_index = "
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c
            int r4 = r5.jx     // Catch: java.lang.Throwable -> L4c
            r3.append(r4)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L4c
            com.byazt.nu.hp.w(r2, r3)     // Catch: java.lang.Throwable -> L4c
            r5.hp = r0     // Catch: java.lang.Throwable -> Ld2
            goto L7c
        Lb5:
            com.byazt.rc.xs r1 = r5.f25177l     // Catch: java.lang.Throwable -> Lbf
            r1.l(r5)     // Catch: java.lang.Throwable -> Lbf
            com.byazt.rc.a r1 = r5.gu     // Catch: java.lang.Throwable -> Lbf
            r1.l(r5)     // Catch: java.lang.Throwable -> Lbf
        Lbf:
            r5.f25173d = r0
            return
        Lc2:
            int r3 = r3 + 1
            r5.hq = r3     // Catch: java.lang.Throwable -> L4c
            r5.hp = r0     // Catch: java.lang.Throwable -> Ld2
            goto L46
        Lca:
            r5.hp = r0     // Catch: java.lang.Throwable -> Ld2
            com.byazt.rc.a r3 = r5.gu     // Catch: java.lang.Throwable -> Ld2
            r3.hp(r5, r1)     // Catch: java.lang.Throwable -> Ld2
            throw r2     // Catch: java.lang.Throwable -> Ld2
        Ld2:
            com.byazt.rc.xs r1 = r5.f25177l     // Catch: java.lang.Throwable -> Ldc
            r1.l(r5)     // Catch: java.lang.Throwable -> Ldc
            com.byazt.rc.a r1 = r5.gu     // Catch: java.lang.Throwable -> Ldc
            r1.l(r5)     // Catch: java.lang.Throwable -> Ldc
        Ldc:
            r5.f25173d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rc.zy.run():void");
    }

    public long s() {
        return this.vv;
    }

    public void w() {
        com.byazt.nu.hp.jx("SegmentReader", "close: threadIndex = " + this.jx);
        synchronized (this) {
            this.f25172b = true;
            this.wv = true;
        }
        e();
        Future future = this.cx;
        if (future != null) {
            this.cx = null;
            try {
                future.cancel(true);
            } catch (Throwable unused) {
            }
        }
    }

    public long l() {
        long jJx;
        synchronized (this.gu) {
            jJx = this.ns + jx();
        }
        return jJx;
    }

    public void l(boolean z2) {
        this.ky = z2;
    }

    public void l(long j2) {
        long j3 = this.f25179n;
        com.byazt.xq.w wVar = this.f25178ms;
        if (j3 < 0 || wVar == null) {
            return;
        }
        wVar.hp(j3, j2);
    }

    public boolean hp(xs xsVar) {
        int i2 = this.lv;
        if (i2 >= 30) {
            return false;
        }
        this.lv = i2 + 1;
        xs xsVar2 = this.f25177l;
        if (xsVar2 != null) {
            xsVar2.l(this);
        }
        xsVar.hp(this);
        this.f25177l = xsVar;
        jl();
        return true;
    }

    private boolean hp(q qVar, BaseException baseException) {
        com.byazt.nu.hp.w("SegmentReader", "handleDownloadFailed:  e = " + baseException + ", curRetryCount = " + this.nu + ", retryCount = " + this.ud);
        this.pu = baseException;
        this.f25177l.l();
        this.gu.hp(this, this.f25177l, qVar, baseException, this.nu, this.ud);
        int i2 = this.nu;
        if (i2 < this.ud) {
            this.nu = i2 + 1;
            return true;
        }
        if (hp(baseException)) {
            return true;
        }
        this.gu.hp(this, this.f25177l, qVar, baseException);
        return false;
    }

    private boolean hp(BaseException baseException) {
        if (!com.byazt.xq.a.jx(baseException)) {
            return false;
        }
        String str = this.f25177l.hp;
        if (TextUtils.isEmpty(str) || !str.startsWith("https") || !this.zy.isNeedHttpsToHttpRetry() || this.f25182r) {
            return false;
        }
        this.f25182r = true;
        jl();
        return true;
    }

    public long jx() {
        synchronized (this.gu) {
            try {
                long j2 = this.f25179n;
                long j3 = this.vv;
                if (j3 < 0 || j2 <= j3) {
                    return 0L;
                }
                return j2 - j3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void jx(boolean z2) {
        this.xh = z2;
    }

    private hp hp(jx jxVar, InputStream inputStream) throws Throwable {
        int i2;
        hp hpVarL = jxVar.l();
        try {
            i2 = inputStream.read(hpVarL.hp);
        } catch (Throwable th) {
            th = th;
            i2 = -1;
        }
        try {
            if (i2 != -1) {
                hpVarL.jx = i2;
                if (i2 == -1) {
                    jxVar.hp(hpVarL);
                }
                return hpVarL;
            }
            throw new BaseException(1073, be.f48816s);
        } catch (Throwable th2) {
            th = th2;
            if (i2 == -1) {
                jxVar.hp(hpVarL);
            }
            throw th;
        }
    }

    public boolean hp(long j2) {
        long j3 = this.sz;
        if (j2 <= 0 && j3 > 0) {
            return false;
        }
        if (j2 > j3 && j3 > 0) {
            return false;
        }
        this.ec = j2;
        this.wv = true;
        return true;
    }

    public void hp() {
        xs xsVar = this.f25177l;
        try {
            synchronized (this.gu) {
                try {
                    long jJx = jx();
                    if (jJx > 0) {
                        this.ns += jJx;
                        xsVar.hp(jJx);
                    }
                    this.f25179n = -1L;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(boolean z2) {
        com.byazt.nu.hp.jx("SegmentReader", "reconnect: threadIndex = " + this.jx);
        synchronized (this) {
            this.f25180o = z2;
            this.di = true;
            this.wv = true;
        }
        e();
        Thread thread = this.f25173d;
        if (thread != null) {
            try {
                thread.interrupt();
            } catch (Throwable unused) {
            }
        }
    }

    public void hp(Future future) {
        this.cx = future;
    }

    public long hp(long j2, long j3) {
        com.byazt.xq.w wVar = this.f25178ms;
        if (wVar == null) {
            return -1L;
        }
        return wVar.l(j2, j3);
    }

    public long j() {
        return this.f25179n;
    }
}
