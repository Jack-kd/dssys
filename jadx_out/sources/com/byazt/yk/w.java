package com.byazt.yk;

import android.os.SystemClock;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, 90, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: l, reason: collision with root package name */
    public static String f28014l = "ResponseHandler";

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.ip.q f28015a;

    /* renamed from: b, reason: collision with root package name */
    public final long f28016b;
    public final long cx;

    /* renamed from: d, reason: collision with root package name */
    public long f28017d;
    public final boolean di;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.fu.w f28018e;
    public e eb;
    public final boolean ec;
    public BaseException gu;
    public long hq;

    /* renamed from: j, reason: collision with root package name */
    public final String f28019j;
    public volatile boolean jl;
    public final DownloadInfo jx;

    /* renamed from: k, reason: collision with root package name */
    public final com.byazt.ez.a f28020k;

    /* renamed from: n, reason: collision with root package name */
    public final com.byazt.ei.hp f28021n;
    public final boolean ns;

    /* renamed from: o, reason: collision with root package name */
    public boolean f28022o;

    /* renamed from: q, reason: collision with root package name */
    public sz f28023q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.au.gu f28024s;
    public final com.byazt.jb.hp sz;

    /* renamed from: u, reason: collision with root package name */
    public long f28025u;
    public long ud;

    /* renamed from: v, reason: collision with root package name */
    public long f28026v;
    public volatile long vv;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.fu.l f28027w;
    public long wv;
    public volatile long xs;
    public volatile boolean zy;
    public boolean hp = false;
    public volatile long nu = 0;
    public volatile long dy = 0;

    public w(DownloadInfo downloadInfo, String str, com.byazt.ip.q qVar, com.byazt.fu.l lVar, com.byazt.ez.a aVar) {
        this.jx = downloadInfo;
        this.f28019j = str;
        e eVarDi = jx.di();
        this.eb = eVarDi;
        if (eVarDi instanceof com.byazt.au.j) {
            com.byazt.au.j jVar = (com.byazt.au.j) eVarDi;
            this.f28024s = jVar.hp();
            this.f28023q = jVar.a();
        }
        this.f28015a = qVar;
        this.f28027w = lVar;
        this.f28020k = aVar;
        long jK = lVar.k();
        this.f28026v = jK;
        this.f28025u = jK;
        if (lVar.j()) {
            this.vv = lVar.xs();
        } else {
            this.vv = lVar.jx(false);
        }
        this.xs = lVar.u();
        this.f28021n = com.byazt.ei.hp.hp();
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
        this.sz = hpVarHp;
        boolean z2 = hpVarHp.hp("sync_strategy", 0) == 1;
        this.ns = z2;
        if (z2) {
            long jHp = hpVarHp.hp("sync_interval_ms_fg", 5000);
            long jHp2 = hpVarHp.hp("sync_interval_ms_bg", 1000);
            this.cx = Math.max(jHp, 500L);
            this.f28016b = Math.max(jHp2, 500L);
        } else {
            this.cx = 0L;
            this.f28016b = 0L;
        }
        this.di = hpVarHp.l("monitor_rw") == 1;
        this.ec = com.byazt.xq.hp.hp(65536);
    }

    private boolean a() {
        return this.jl || this.zy;
    }

    private void eb() {
        ExecutorService executorServiceJl;
        if (this.f28015a == null || (executorServiceJl = jx.jl()) == null) {
            return;
        }
        executorServiceJl.execute(new Runnable() { // from class: com.byazt.yk.w.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.f28015a.j();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private boolean l(long j2, long j3) {
        return j2 > 65536 && j3 > 500;
    }

    private void s() {
        long jNanoTime = this.di ? System.nanoTime() : 0L;
        try {
            this.f28018e.hp();
            this.jx.updateRealDownloadTime(true);
            boolean z2 = this.jx.getChunkCount() > 1;
            zy zyVarHp = com.byazt.au.jl.hp(com.byazt.xq.a.l());
            if (z2) {
                hp(this.f28023q);
                if (zyVarHp != null) {
                    zyVarHp.jx(this.jx);
                } else {
                    this.f28023q.hp(this.jx.getId(), this.jx.getCurBytes());
                }
            } else if (zyVarHp != null) {
                zyVarHp.jx(this.jx);
            } else {
                this.f28023q.hp(this.f28027w.gu(), this.f28026v);
            }
            this.nu = this.f28026v;
        } catch (Exception unused) {
        }
        if (this.di) {
            this.hq += System.nanoTime() - jNanoTime;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:184:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x037d A[Catch: all -> 0x045e, TRY_ENTER, TRY_LEAVE, TryCatch #31 {all -> 0x045e, blocks: (B:182:0x030f, B:213:0x037d, B:214:0x0380, B:258:0x0462, B:259:0x0464, B:260:0x0465, B:262:0x047e, B:292:0x04d5, B:293:0x04da), top: B:363:0x0028, inners: #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x047e A[Catch: all -> 0x045e, TRY_LEAVE, TryCatch #31 {all -> 0x045e, blocks: (B:182:0x030f, B:213:0x037d, B:214:0x0380, B:258:0x0462, B:259:0x0464, B:260:0x0465, B:262:0x047e, B:292:0x04d5, B:293:0x04da), top: B:363:0x0028, inners: #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:380:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() throws com.byazt.io.BaseException {
        /*
            Method dump skipped, instructions count: 1385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yk.w.j():void");
    }

    public void jx() {
        if (this.zy) {
            return;
        }
        synchronized (this.f28020k) {
            this.zy = true;
        }
        eb();
    }

    public long w() {
        return this.nu;
    }

    public long hp() {
        return this.f28026v;
    }

    public void l() {
        if (this.jl) {
            return;
        }
        this.jl = true;
        eb();
    }

    public void hp(long j2, long j3, long j4) {
        this.f28026v = j2;
        this.f28025u = j2;
        this.xs = j3;
        this.vv = j4;
    }

    public void hp(long j2, long j3) {
        this.xs = j2;
        this.vv = j3;
    }

    private com.byazt.zd.l hp(InputStream inputStream) {
        int iPu = jx.pu();
        if (this.sz.hp("rw_concurrent", 0) == 1 && this.jx.getChunkCount() == 1 && this.jx.getTotalBytes() > 20971520) {
            try {
                com.byazt.zd.hp hpVar = new com.byazt.zd.hp(inputStream, iPu, this.sz.hp("rw_concurrent_max_buffer_count", 4));
                this.f28022o = true;
                return hpVar;
            } catch (Throwable unused) {
            }
        }
        com.byazt.zd.jx jxVar = new com.byazt.zd.jx(inputStream, iPu);
        this.f28022o = false;
        return jxVar;
    }

    private void hp(boolean z2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j2 = jUptimeMillis - this.dy;
        if (this.ns) {
            if (j2 <= (this.f28021n.l() ? this.cx : this.f28016b)) {
                return;
            }
        } else {
            long j3 = this.f28026v - this.nu;
            if (!z2 && !l(j3, j2)) {
                return;
            }
        }
        s();
        this.dy = jUptimeMillis;
    }

    private void hp(e eVar) {
        zy zyVarHp;
        com.byazt.fu.l lVarW;
        e eVar2;
        if (eVar == null) {
            return;
        }
        boolean z2 = eVar instanceof com.byazt.cy.w;
        if (z2) {
            zyVarHp = com.byazt.au.jl.hp(com.byazt.xq.a.l());
            if (zyVarHp == null) {
                return;
            }
        } else {
            zyVarHp = null;
        }
        zy zyVar = zyVarHp;
        if (this.f28027w.j()) {
            lVarW = this.f28027w.w();
        } else {
            lVarW = this.f28027w;
        }
        if (lVarW != null) {
            lVarW.l(this.f28026v);
            if (z2 && zyVar != null) {
                zyVar.hp(lVarW.gu(), lVarW.ec(), lVarW.l(), this.f28026v);
                eVar2 = eVar;
            } else {
                eVar2 = eVar;
                eVar2.hp(lVarW.gu(), lVarW.ec(), lVarW.l(), this.f28026v);
            }
            if (lVarW.s()) {
                if (lVarW.q()) {
                    long jE = lVarW.e();
                    if (jE > this.f28026v) {
                        if (z2 && zyVar != null) {
                            zyVar.hp(lVarW.gu(), lVarW.l(), jE);
                            return;
                        } else {
                            eVar2.hp(lVarW.gu(), lVarW.l(), jE);
                            return;
                        }
                    }
                }
                if (z2 && zyVar != null) {
                    zyVar.hp(lVarW.gu(), lVarW.l(), this.f28026v);
                    return;
                } else {
                    eVar2.hp(lVarW.gu(), lVarW.l(), this.f28026v);
                    return;
                }
            }
            return;
        }
        if (this.f28027w.j()) {
            if (z2 && zyVar != null) {
                zyVar.hp(this.f28027w.gu(), this.f28027w.ec(), this.f28026v);
            } else {
                eVar.hp(this.f28027w.gu(), this.f28027w.ec(), this.f28026v);
            }
        }
    }
}
