package com.byazt.ez;

import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import com.byazt.au.xs;
import com.byazt.fn.IDownloadInterceptor;
import com.byazt.fn.b;
import com.byazt.fn.cx;
import com.byazt.fn.vv;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.fu.l;
import com.byazt.io.BaseException;
import com.byazt.ip.q;
import com.byazt.rc.gu;
import com.byazt.rc.k;
import com.byazt.yk.e;
import com.byazt.yk.ec;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.kuaishou.weapon.p0.g;
import com.sigmob.sdk.downloader.core.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1109, 30})
/* loaded from: classes2.dex */
public class jx implements a, Runnable {
    public static final String hp = "jx";

    /* renamed from: b, reason: collision with root package name */
    public q f19568b;
    public volatile BaseException cx;

    /* renamed from: d, reason: collision with root package name */
    public vv f19569d;
    public com.byazt.ip.eb di;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19570e;
    public volatile com.byazt.yk.w eb;
    public com.byazt.yk.eb ec;
    public boolean gu;
    public boolean jl;
    public final DownloadTask jx;

    /* renamed from: l, reason: collision with root package name */
    public Future f19573l;
    public long lv;

    /* renamed from: n, reason: collision with root package name */
    public ec f19574n;
    public final com.byazt.yk.a ns;
    public String nu;

    /* renamed from: o, reason: collision with root package name */
    public cx f19575o;
    public final com.byazt.jb.hp pu;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19576q;

    /* renamed from: r, reason: collision with root package name */
    public long f19577r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19578s;
    public final com.byazt.yk.eb sz;

    /* renamed from: u, reason: collision with root package name */
    public DownloadInfo f19579u;

    /* renamed from: v, reason: collision with root package name */
    public final e f19580v;
    public final com.byazt.yk.s vv;

    /* renamed from: w, reason: collision with root package name */
    public AtomicInteger f19581w;
    public com.byazt.yk.s xs;
    public final AtomicBoolean zy;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f19571j = false;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<l> f19567a = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    public volatile com.byazt.oy.s f19572k = com.byazt.oy.s.RUN_STATUS_NONE;
    public volatile int wv = 5;
    public boolean hq = false;
    public boolean ud = false;
    public boolean dy = false;
    public int ky = 0;
    public volatile gu xh = null;

    public jx(DownloadTask downloadTask, Handler handler) {
        this.jx = downloadTask;
        if (downloadTask != null) {
            this.f19579u = downloadTask.getDownloadInfo();
            this.xs = downloadTask.getChunkStrategy();
            this.ec = downloadTask.getChunkAdjustCalculator();
            this.f19575o = downloadTask.getForbiddenHandler();
            this.f19569d = downloadTask.getDiskSpaceHandler();
            this.f19574n = hp(downloadTask);
            this.pu = com.byazt.jb.hp.hp(this.f19579u.getId());
        } else {
            this.pu = com.byazt.jb.hp.jx();
        }
        s();
        this.f19580v = com.byazt.yk.jx.di();
        this.vv = com.byazt.yk.jx.ky();
        this.sz = com.byazt.yk.jx.ms();
        this.ns = new com.byazt.yk.a(downloadTask, handler);
        this.zy = new AtomicBoolean(true);
    }

    private boolean b() {
        if (this.f19579u.getChunkCount() <= 1) {
            return this.f19579u.getCurBytes() > 0 && this.f19579u.getCurBytes() == this.f19579u.getTotalBytes();
        }
        List<com.byazt.fu.l> listJx = this.f19580v.jx(this.f19579u.getId());
        if (listJx == null || listJx.size() <= 1) {
            return false;
        }
        for (com.byazt.fu.l lVar : listJx) {
            if (lVar == null || !lVar.q()) {
                return false;
            }
        }
        return true;
    }

    private boolean cx() {
        if (this.f19572k == com.byazt.oy.s.RUN_STATUS_ERROR) {
            this.ns.hp(this.cx);
        } else if (this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED) {
            this.ns.jx();
        } else if (this.f19572k == com.byazt.oy.s.RUN_STATUS_PAUSE) {
            this.ns.j();
        } else if (this.f19572k == com.byazt.oy.s.RUN_STATUS_END_RIGHT_NOW) {
            try {
                this.ns.eb();
            } catch (BaseException e2) {
                this.ns.hp(e2);
            }
        } else if (this.f19572k == com.byazt.oy.s.RUN_STATUS_END_FOR_FILE_EXIST) {
            try {
                this.ns.hp(this.nu);
            } catch (BaseException e3) {
                this.ns.hp(e3);
            }
        } else {
            if (this.f19572k == com.byazt.oy.s.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET) {
                this.ns.hp(this.cx, false);
                return false;
            }
            if (this.f19572k == com.byazt.oy.s.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                return true;
            }
            com.byazt.oy.s sVar = this.f19572k;
            com.byazt.oy.s sVar2 = com.byazt.oy.s.RUN_STATUS_RETRY_DELAY;
            if (sVar == sVar2 && !b()) {
                com.byazt.nu.hp.l(hp, "doTaskStatusHandle retryDelay");
                o();
                return this.f19572k == sVar2;
            }
            try {
                if (!di()) {
                    return false;
                }
                this.ns.a();
                com.byazt.au.vv.hp().j();
            } catch (Throwable th) {
                l(new BaseException(PointerIconCompat.TYPE_TEXT, com.byazt.xq.a.l(th, "doTaskStatusHandle onComplete")));
            }
        }
        return true;
    }

    private long d() {
        return this.f19574n.hp(this.f19579u.getCurRetryTimeInTotal(), this.f19579u.getTotalRetryCount());
    }

    private boolean di() {
        if (this.f19579u.isChunked()) {
            DownloadInfo downloadInfo = this.f19579u;
            downloadInfo.setTotalBytes(downloadInfo.getCurBytes());
        }
        com.byazt.nu.hp.jx(hp, "checkCompletedByteValid: downloadInfo.getCurBytes() = " + this.f19579u.getCurBytes() + ",  downloadInfo.getTotalBytes() = " + this.f19579u.getTotalBytes());
        if (this.f19579u.getCurBytes() > 0) {
            if (this.f19579u.isIgnoreDataVerify()) {
                return true;
            }
            if (this.f19579u.getTotalBytes() > 0 && this.f19579u.getCurBytes() == this.f19579u.getTotalBytes()) {
                return true;
            }
        }
        this.f19579u.setByteInvalidRetryStatus(com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_RESTART);
        this.f19579u.reset();
        this.f19580v.hp(this.f19579u);
        this.f19580v.j(this.f19579u.getId());
        this.f19580v.zy(this.f19579u.getId());
        com.byazt.xq.a.hp(this.f19579u);
        return false;
    }

    private void dy() throws InterruptedException, BaseException {
        if (TextUtils.isEmpty(this.f19579u.getSavePath())) {
            throw new BaseException(1028, "download savePath can not be empty");
        }
        if (TextUtils.isEmpty(this.f19579u.getName())) {
            throw new BaseException(1029, "download name can not be empty");
        }
        File file = new File(this.f19579u.getSavePath());
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            if (!com.byazt.xq.j.l(this.f19579u)) {
                throw new BaseException(1031, "download savePath is not a directory:" + this.f19579u.getSavePath());
            }
            file.delete();
            if (file.mkdirs() || file.exists()) {
                return;
            }
            throw new BaseException(1031, "download savePath is not directory:path=" + this.f19579u.getSavePath());
        }
        boolean zMkdirs = file.mkdirs();
        if (zMkdirs || file.exists()) {
            return;
        }
        int i2 = 0;
        if (com.byazt.jb.hp.hp(this.f19579u.getId()).hp("opt_mkdir_failed", 0) != 1) {
            throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + this.f19579u.getSavePath());
        }
        while (!zMkdirs) {
            int i3 = i2 + 1;
            if (i2 >= 3) {
                break;
            }
            try {
                Thread.sleep(10L);
                zMkdirs = file.mkdirs();
                i2 = i3;
            } catch (InterruptedException unused) {
            }
        }
        if (zMkdirs || file.exists()) {
            return;
        }
        if (com.byazt.xq.a.j(this.f19579u.getSavePath()) < 16384) {
            throw new BaseException(1006, "download savePath directory can not created:" + this.f19579u.getSavePath());
        }
        throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + this.f19579u.getSavePath());
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x00e1: IF  (r4 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:75:0x00eb (LINE:226), block:B:72:0x00e1 */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00eb A[Catch: SQLiteException -> 0x00f2, TRY_LEAVE, TryCatch #3 {SQLiteException -> 0x00f2, blocks: (B:73:0x00e3, B:75:0x00eb), top: B:82:0x00e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() throws com.byazt.io.hp {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.jx.e():void");
    }

    private void ec() {
        xs();
        vv();
    }

    private void gu() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(10);
        try {
            DownloadInfo downloadInfo = this.f19579u;
            if (downloadInfo != null && this.f19577r > 0) {
                downloadInfo.increaseDownloadPrepareTime(System.currentTimeMillis() - this.f19577r);
            }
        } catch (Throwable unused) {
        }
        try {
            IDownloadInterceptor interceptor = this.jx.getInterceptor();
            if (interceptor != null) {
                if (interceptor.intercepte()) {
                    this.ns.w();
                    return;
                }
            }
        } catch (Throwable unused2) {
        }
        if (!q()) {
            b monitorDepend = this.jx.getMonitorDepend();
            DownloadInfo downloadInfo2 = this.f19579u;
            BaseException baseException = new BaseException(1003, "task status is invalid");
            DownloadInfo downloadInfo3 = this.f19579u;
            com.byazt.no.hp.hp(monitorDepend, downloadInfo2, baseException, downloadInfo3 != null ? downloadInfo3.getStatus() : 0);
            return;
        }
        while (true) {
            jl();
            if (!this.hq) {
                return;
            }
            if (this.wv > 0) {
                this.wv--;
            } else {
                if (this.f19579u.getCurBytes() != this.f19579u.getTotalBytes()) {
                    com.byazt.nu.hp.l(hp, this.f19579u.getErrorBytesLog());
                    this.ns.hp(new com.byazt.io.a(1027, "current bytes is not equals to total bytes, bytes invalid retry status is : " + this.f19579u.getByteInvalidRetryStatus()));
                    return;
                }
                if (this.f19579u.getCurBytes() <= 0) {
                    com.byazt.nu.hp.l(hp, this.f19579u.getErrorBytesLog());
                    this.ns.hp(new com.byazt.io.a(1026, "curBytes is 0, bytes invalid retry status is : " + this.f19579u.getByteInvalidRetryStatus()));
                    return;
                }
                if (this.f19579u.getTotalBytes() <= 0) {
                    com.byazt.nu.hp.l(hp, this.f19579u.getErrorBytesLog());
                    this.ns.hp(new com.byazt.io.a(1044, "TotalBytes is 0, bytes invalid retry status is : " + this.f19579u.getByteInvalidRetryStatus()));
                    return;
                }
            }
        }
    }

    private boolean hq() {
        DownloadInfo downloadInfo = this.f19579u;
        return (downloadInfo == null || downloadInfo.isExpiredRedownload() || (this.f19576q && this.f19579u.getChunkCount() <= 1) || this.f19579u.isChunkDowngradeRetryUsed() || !this.f19570e || this.jl) ? false : true;
    }

    private void jl() {
        boolean z2;
        List<com.byazt.fu.l> listJx;
        try {
            this.f19572k = com.byazt.oy.s.RUN_STATUS_NONE;
            this.f19579u.updateStartDownloadTime();
            this.f19579u.resetRealStartDownloadTime();
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f19579u.setFirstSpeedTime(-1L);
            int i2 = 0;
            try {
                e();
                z2 = false;
            } catch (com.byazt.io.hp e2) {
                com.byazt.nu.hp.l(hp, "file exist " + e2.hp());
                this.nu = e2.hp();
                z2 = true;
            }
            if (!this.hq) {
                this.ns.l();
            }
            this.hq = false;
            if (ns()) {
                u();
                return;
            }
            if (!TextUtils.isEmpty(this.nu) && z2) {
                if (this.f19579u.isExpiredRedownload()) {
                    this.dy = com.byazt.xq.a.j(this.f19579u);
                }
                if (!this.dy) {
                    zy();
                    u();
                    return;
                }
            }
            while (!ns()) {
                try {
                    try {
                        try {
                            dy();
                            wv();
                            nu();
                            listJx = this.f19580v.jx(this.f19579u.getId());
                            lv();
                        } catch (com.byazt.io.hp unused) {
                            zy();
                        }
                    } catch (com.byazt.io.q e3) {
                        try {
                            com.byazt.nu.hp.j(hp, "downloadInner: retry throwable for " + e3.hp());
                            if (this.f19572k != com.byazt.oy.s.RUN_STATUS_PAUSE) {
                                AtomicInteger atomicInteger = this.f19581w;
                                if (atomicInteger != null && atomicInteger.get() > 0) {
                                    this.f19579u.updateCurRetryTime(this.f19581w.decrementAndGet());
                                    this.f19579u.setStatus(5);
                                } else if (this.f19581w == null) {
                                    l(new BaseException(1043, "retry for Throwable, but retain retry time is NULL, last error is" + e3.hp()));
                                } else if (this.f19579u.trySwitchToNextBackupUrl()) {
                                    this.f19579u.setStatus(5);
                                    this.f19581w.set(this.f19579u.getRetryCount());
                                    this.f19579u.updateCurRetryTime(this.f19581w.get());
                                } else {
                                    l(new BaseException(PointerIconCompat.TYPE_ZOOM_IN, String.format("retry for Throwable, but retry Time %s all used, last error is %s", String.valueOf(this.f19579u.getRetryCount()), e3.hp())));
                                }
                                ec();
                                i2 = 0;
                            }
                        } catch (Throwable th) {
                            ec();
                            throw th;
                        }
                    }
                } catch (BaseException e4) {
                    com.byazt.nu.hp.j(hp, "downloadInner: baseException = " + e4);
                    if (this.f19572k != com.byazt.oy.s.RUN_STATUS_PAUSE) {
                        if (e4.getErrorCode() != 1025 && e4.getErrorCode() != 1009) {
                            if (hp(e4)) {
                                if (com.byazt.xq.a.hp(e4)) {
                                    r();
                                }
                                if (hp(e4, 0L) == com.byazt.io.s.RETURN) {
                                    ec();
                                    u();
                                    return;
                                }
                                ec();
                                i2 = 0;
                            } else {
                                l(e4);
                            }
                        }
                        this.f19572k = com.byazt.oy.s.RUN_STATUS_END_RIGHT_NOW;
                        ec();
                        u();
                        return;
                    }
                } catch (Throwable th2) {
                    com.byazt.nu.hp.j(hp, "downloadInner: throwable =  " + th2);
                    if (this.f19572k != com.byazt.oy.s.RUN_STATUS_PAUSE) {
                        l(new BaseException(1045, th2));
                    }
                }
                if (k()) {
                    com.byazt.nu.hp.jx(hp, "downloadSegments return");
                    ec();
                    u();
                    return;
                }
                String connectionUrl = this.f19579u.getConnectionUrl();
                if (ns()) {
                    ec();
                    u();
                    return;
                }
                long jW = this.f19576q ? com.byazt.xq.a.w(this.f19579u) : 0L;
                com.byazt.fu.l lVarHp = hp(this.f19579u, jW);
                List<com.byazt.fu.jx> listHp = hp(lVarHp);
                com.byazt.xq.a.hp(listHp, this.f19579u);
                com.byazt.xq.a.l(listHp, this.f19579u);
                this.f19579u.setPreconnectLevel(i2);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                try {
                    hp(connectionUrl, listHp, jW);
                    this.f19579u.increaseAllConnectTime(System.currentTimeMillis() - jCurrentTimeMillis2);
                    if (ns()) {
                        ec();
                        u();
                        return;
                    }
                    long totalBytes = this.f19579u.getTotalBytes();
                    hp(totalBytes);
                    int iHp = hp(totalBytes, listJx);
                    if (ns()) {
                        ec();
                        u();
                        return;
                    }
                    if (iHp <= 0) {
                        throw new BaseException(1032, "chunkCount is 0");
                    }
                    boolean z3 = iHp == 1;
                    this.f19578s = z3;
                    if (z3) {
                        if (this.f19568b == null) {
                            try {
                                jCurrentTimeMillis2 = System.currentTimeMillis();
                                hp(connectionUrl, listHp);
                                this.f19579u.increaseAllConnectTime(System.currentTimeMillis() - jCurrentTimeMillis2);
                            } finally {
                            }
                        }
                        if (ns()) {
                            ec();
                            u();
                            return;
                        } else {
                            this.f19579u.setFirstSpeedTime(System.currentTimeMillis() - jCurrentTimeMillis);
                            v();
                            hp(lVarHp, connectionUrl, this.f19568b);
                        }
                    } else {
                        if (!this.f19579u.isNeedReuseFirstConnection()) {
                            vv();
                        }
                        if (ns()) {
                            ec();
                            u();
                            return;
                        } else {
                            v();
                            this.f19579u.setFirstSpeedTime(System.currentTimeMillis() - jCurrentTimeMillis);
                            if (this.f19576q) {
                                hp(iHp, listJx);
                            } else {
                                hp(totalBytes, iHp);
                            }
                        }
                    }
                    ec();
                    u();
                    return;
                } finally {
                }
            }
            u();
        } catch (Throwable th3) {
            u();
            throw th3;
        }
    }

    private boolean k() throws InterruptedException, BaseException {
        if (this.f19579u.isExpiredRedownload() || this.f19579u.getChunkCount() != 1 || this.f19579u.getThrottleNetSpeed() > 0) {
            return false;
        }
        JSONObject jSONObjectJ = com.byazt.jb.hp.hp(this.f19579u.getId()).j("segment_config");
        List<com.byazt.rc.q> listK = this.f19580v.k(this.f19579u.getId());
        if (this.f19579u.getCurBytes() > 0) {
            if (listK == null || listK.isEmpty()) {
                return false;
            }
            if (jSONObjectJ == null) {
                jSONObjectJ = new JSONObject();
            }
        }
        if (jSONObjectJ == null) {
            return false;
        }
        this.xh = new gu(this.f19579u, k.hp(jSONObjectJ), this);
        if (!ns()) {
            return this.xh.hp(listK);
        }
        com.byazt.nu.hp.jx(hp, "downloadSegments: is stopped by user");
        if (this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED) {
            this.xh.hp();
        } else {
            this.xh.l();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ky() {
        com.byazt.au.hp hpVarUd;
        if (ns() || (hpVarUd = com.byazt.yk.jx.ud()) == null) {
            return;
        }
        hpVarUd.jl(this.f19579u.getId());
    }

    private void lv() {
        long jA = com.byazt.xq.a.a(this.f19579u);
        long curBytes = this.f19579u.getCurBytes();
        if (jA != curBytes) {
            com.byazt.nu.hp.j(hp, "checkTaskCanResume: offset = " + jA + ", curBytes = " + curBytes);
        }
        this.f19579u.setCurBytes(jA);
        boolean z2 = jA > 0;
        this.f19576q = z2;
        if (z2 || this.dy) {
            return;
        }
        com.byazt.nu.hp.jx(hp, "checkTaskCanResume: deleteAllDownloadFiles");
        this.f19580v.j(this.f19579u.getId());
        this.f19580v.zy(this.f19579u.getId());
        com.byazt.xq.a.hp(this.f19579u);
    }

    private boolean n() {
        return this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED || this.f19572k == com.byazt.oy.s.RUN_STATUS_PAUSE;
    }

    private boolean ns() {
        if (!n() && this.f19579u.getStatus() != -2) {
            return false;
        }
        if (n()) {
            return true;
        }
        if (this.f19579u.getStatus() == -2) {
            this.f19572k = com.byazt.oy.s.RUN_STATUS_PAUSE;
            return true;
        }
        if (this.f19579u.getStatus() != -4) {
            return true;
        }
        this.f19572k = com.byazt.oy.s.RUN_STATUS_CANCELED;
        return true;
    }

    private void nu() throws com.byazt.io.a {
        if (this.f19579u.isOnlyWifi() && !com.byazt.xq.a.hp(com.byazt.yk.jx.mp(), g.f31160b)) {
            throw new com.byazt.io.a(PointerIconCompat.TYPE_ZOOM_OUT, String.format("download task need permission:%s", g.f31160b));
        }
        if (!this.f19579u.isDownloadWithWifiValid()) {
            throw new com.byazt.io.jx();
        }
        if (!this.f19579u.isPauseReserveWithWifiValid()) {
            throw new com.byazt.io.w();
        }
    }

    private void o() {
        this.f19572k = com.byazt.oy.s.RUN_STATUS_NONE;
    }

    private void pu() {
        try {
            ArrayList arrayList = (ArrayList) this.f19567a.clone();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                l lVar = (l) obj;
                if (lVar != null) {
                    lVar.l();
                }
            }
        } catch (Throwable th) {
            com.byazt.nu.hp.jx(hp, "cancelAllChunkRunnable: " + th.toString());
        }
    }

    private boolean q() {
        int status = this.f19579u.getStatus();
        if (status == 1 || this.f19579u.canSkipStatusHandler()) {
            return true;
        }
        if (status == -2 || status == -4) {
            return false;
        }
        l(new BaseException(1000, "The download Task can't start, because its status is not prepare:" + status));
        return false;
    }

    private void r() {
        com.byazt.nu.hp.j(hp, "clearCurrentDownloadData::" + Log.getStackTraceString(new Throwable()));
        try {
            this.f19580v.j(this.f19579u.getId());
            this.f19580v.zy(this.f19579u.getId());
            com.byazt.xq.a.hp(this.f19579u);
            this.f19576q = false;
            this.f19579u.resetDataForEtagEndure("");
            this.f19580v.hp(this.f19579u);
        } catch (Throwable unused) {
        }
    }

    private void s() {
        DownloadInfo downloadInfo = this.f19579u;
        if (downloadInfo == null) {
            return;
        }
        int retryCount = downloadInfo.getRetryCount() - this.f19579u.getCurRetryTime();
        if (retryCount < 0) {
            retryCount = 0;
        }
        AtomicInteger atomicInteger = this.f19581w;
        if (atomicInteger == null) {
            this.f19581w = new AtomicInteger(retryCount);
        } else {
            atomicInteger.set(retryCount);
        }
    }

    private void sz() throws BaseException {
        if (this.eb != null) {
            if (this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED) {
                this.f19579u.setStatus(-4);
                this.eb.jx();
            } else if (this.f19572k != com.byazt.oy.s.RUN_STATUS_PAUSE) {
                this.eb.j();
            } else {
                this.f19579u.setStatus(-2);
                this.eb.l();
            }
        }
    }

    private void u() {
        boolean zCx;
        boolean z2;
        com.byazt.nu.hp.l(hp, "endDownloadRunnable::runStatus=" + this.f19572k);
        boolean z3 = (this.f19572k == com.byazt.oy.s.RUN_STATUS_PAUSE || this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED) ? false : true;
        try {
            zCx = cx();
            z2 = false;
        } catch (Exception e2) {
            if (e2 instanceof BaseException) {
                this.ns.hp((BaseException) e2);
            } else {
                this.ns.hp(new BaseException(1046, e2));
            }
            zCx = true;
            z2 = true;
        }
        if (!zCx && !z2) {
            this.hq = true;
            com.byazt.nu.hp.l(hp, "jump to restart");
            return;
        }
        this.zy.set(false);
        if (z3) {
            try {
                com.byazt.au.hp hpVarUd = com.byazt.yk.jx.ud();
                if (hpVarUd != null) {
                    hpVarUd.hp(this);
                }
            } catch (Throwable th) {
                b monitorDepend = this.jx.getMonitorDepend();
                DownloadInfo downloadInfo = this.f19579u;
                BaseException baseException = new BaseException(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, com.byazt.xq.a.l(th, "removeDownloadRunnable"));
                DownloadInfo downloadInfo2 = this.f19579u;
                com.byazt.no.hp.hp(monitorDepend, downloadInfo, baseException, downloadInfo2 != null ? downloadInfo2.getStatus() : 0);
            }
        }
    }

    private void ud() throws BaseException {
        long j2;
        int iHp;
        try {
            j2 = com.byazt.xq.a.j(this.f19579u.getTempPath());
        } catch (BaseException unused) {
            j2 = 0;
        }
        String str = hp;
        com.byazt.nu.hp.jx(str, "checkSpaceOverflowInProgress: available = " + com.byazt.xq.a.hp(j2) + "MB");
        if (j2 > 0) {
            long totalBytes = this.f19579u.getTotalBytes() - this.f19579u.getCurBytes();
            if (j2 < totalBytes && (iHp = com.byazt.jb.hp.hp(this.f19579u.getId()).hp("space_fill_min_keep_mb", 100)) > 0) {
                long j3 = j2 - (iHp * 1048576);
                com.byazt.nu.hp.jx(str, "checkSpaceOverflowInProgress: minKeep  = " + iHp + "MB, canDownload = " + com.byazt.xq.a.hp(j3) + "MB");
                if (j3 > 0) {
                    this.lv = this.f19579u.getCurBytes() + j3 + 1048576;
                    return;
                } else {
                    this.lv = 0L;
                    throw new com.byazt.io.j(j2, totalBytes);
                }
            }
        }
        this.lv = 0L;
    }

    private void v() {
        if (com.byazt.jb.hp.hp(this.f19579u.getId()).hp("reset_retain_retry_times", 0) != 1 || this.ky >= 3) {
            return;
        }
        this.f19581w.set(this.f19579u.isBackUpUrlUsed() ? this.f19579u.getBackUpUrlRetryCount() : this.f19579u.getRetryCount());
        this.ky++;
    }

    private void vv() {
        q qVar = this.f19568b;
        if (qVar != null) {
            qVar.j();
            this.f19568b = null;
        }
    }

    private void wv() throws com.byazt.io.q, BaseException {
        com.byazt.au.hp hpVarUd;
        int id = this.f19579u.getId();
        int iHp = com.byazt.yk.jx.hp(this.f19579u);
        if (this.f19579u.isDownloaded() && !this.f19579u.isExpiredRedownload() && !this.dy) {
            throw new BaseException(PointerIconCompat.TYPE_VERTICAL_TEXT, "file has downloaded");
        }
        DownloadInfo downloadInfoL = this.f19580v.l(iHp);
        if (downloadInfoL == null || (hpVarUd = com.byazt.yk.jx.ud()) == null || downloadInfoL.getId() == id || !downloadInfoL.equalsTask(this.f19579u)) {
            return;
        }
        if (hpVarUd.hp(downloadInfoL.getId())) {
            this.f19580v.a(id);
            throw new BaseException(InputDeviceCompat.SOURCE_GAMEPAD, "another same task is downloading");
        }
        List<com.byazt.fu.l> listJx = this.f19580v.jx(iHp);
        com.byazt.xq.a.hp(this.f19579u);
        this.f19580v.a(iHp);
        if (downloadInfoL.isBreakpointAvailable()) {
            this.f19579u.copyFromCacheData(downloadInfoL, false);
            this.f19580v.hp(this.f19579u);
            if (listJx != null) {
                for (com.byazt.fu.l lVar : listJx) {
                    lVar.l(id);
                    this.f19580v.hp(lVar);
                }
            }
            throw new com.byazt.io.q("retry task because id generator changed");
        }
    }

    private boolean xh() {
        return false;
    }

    private void xs() {
        com.byazt.ip.eb ebVar = this.di;
        if (ebVar != null) {
            ebVar.jx();
            this.di = null;
        }
    }

    private void zy() {
        com.byazt.nu.hp.l(hp, "finishWithFileExist");
        if (com.byazt.jb.hp.jx().l("fix_end_for_file_exist_error", true)) {
            if (this.nu.equals(this.f19579u.getName())) {
                this.f19572k = com.byazt.oy.s.RUN_STATUS_END_RIGHT_NOW;
                return;
            } else {
                this.f19572k = com.byazt.oy.s.RUN_STATUS_END_FOR_FILE_EXIST;
                return;
            }
        }
        if (this.nu.equals(this.f19579u.getTargetFilePath())) {
            this.f19572k = com.byazt.oy.s.RUN_STATUS_END_RIGHT_NOW;
        } else {
            this.f19572k = com.byazt.oy.s.RUN_STATUS_END_FOR_FILE_EXIST;
        }
    }

    public void a() {
        this.f19577r = System.currentTimeMillis();
        this.ns.hp();
    }

    public Future eb() {
        return this.f19573l;
    }

    public boolean j() {
        return this.zy.get();
    }

    public DownloadTask jx() {
        return this.jx;
    }

    public void l() {
        com.byazt.oy.s sVar = com.byazt.oy.s.RUN_STATUS_CANCELED;
        this.f19572k = sVar;
        if (this.xh != null) {
            this.xh.hp();
        }
        if (this.eb != null) {
            this.eb.jx();
        }
        if (this.xh == null && this.eb == null) {
            ec();
            this.f19572k = sVar;
            u();
        }
        pu();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.byazt.yk.jx.hp(this.jx, 3);
        try {
            com.byazt.ip.l.hp().l();
            gu();
            com.byazt.ip.l.hp().jx();
            com.byazt.yk.jx.l(this.jx, 3);
        } catch (Throwable th) {
            com.byazt.ip.l.hp().jx();
            throw th;
        }
    }

    public int w() {
        DownloadInfo downloadInfo = this.f19579u;
        if (downloadInfo != null) {
            return downloadInfo.getId();
        }
        return 0;
    }

    private boolean j(BaseException baseException) {
        AtomicInteger atomicInteger = this.f19581w;
        boolean z2 = true;
        if (atomicInteger == null) {
            l(new BaseException(1043, "retry for exception, but retain retry time is null, last error is :" + baseException.getErrorMessage()));
            return true;
        }
        if (atomicInteger.get() <= 0 || (baseException != null && baseException.getErrorCode() == 1070)) {
            if (this.f19579u.trySwitchToNextBackupUrl()) {
                this.f19581w.set(this.f19579u.getBackUpUrlRetryCount());
                this.f19579u.updateCurRetryTime(this.f19581w.get());
            } else {
                if (baseException == null || ((baseException.getErrorCode() != 1011 && (baseException.getCause() == null || !(baseException.getCause() instanceof SSLHandshakeException))) || !this.f19579u.canReplaceHttpForRetry())) {
                    l(new BaseException(baseException.getErrorCode(), String.format("retry for exception, but current retry time : %s , retry Time %s all used, last error is %s", String.valueOf(this.f19581w), String.valueOf(this.f19579u.getRetryCount()), baseException.getErrorMessage())));
                    return true;
                }
                this.f19581w.set(this.f19579u.getRetryCount());
                this.f19579u.updateCurRetryTime(this.f19581w.get());
                this.f19579u.setHttpsToHttpRetryUsed(true);
            }
            z2 = false;
        }
        if (this.f19572k != com.byazt.oy.s.RUN_STATUS_RETRY_DELAY && z2) {
            this.f19579u.updateCurRetryTime(this.f19581w.decrementAndGet());
        }
        return false;
    }

    @Override // com.byazt.ez.a
    public void jx(BaseException baseException) {
        DownloadInfo downloadInfo = this.f19579u;
        if (downloadInfo != null) {
            downloadInfo.setChunkDowngradeRetryUsed(true);
        }
        hp(baseException, false);
    }

    public void hp() {
        com.byazt.oy.s sVar = com.byazt.oy.s.RUN_STATUS_PAUSE;
        this.f19572k = sVar;
        if (this.xh != null) {
            this.xh.l();
        }
        if (this.eb != null) {
            this.eb.l();
        }
        if (this.xh == null && this.eb == null) {
            ec();
            this.f19572k = sVar;
            u();
        }
        try {
            ArrayList arrayList = (ArrayList) this.f19567a.clone();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                l lVar = (l) obj;
                if (lVar != null) {
                    lVar.hp();
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void l(String str, List<com.byazt.fu.jx> list, long j2) throws com.byazt.io.q, BaseException {
        com.byazt.qv.jx jxVarHp;
        boolean z2 = true;
        if (this.f19579u.getChunkCount() == 1 && (jxVarHp = com.byazt.qv.hp.hp().hp(str, list)) != null) {
            this.di = jxVarHp;
            this.f19579u.setPreconnectLevel(1);
        }
        if (this.di == null && !this.ud && this.f19579u.isHeadConnectionAvailable()) {
            try {
                int iL = this.pu.l("net_lib_strategy");
                if (this.pu.hp("monitor_download_connect", 0) <= 0) {
                    z2 = false;
                }
                this.di = com.byazt.yk.jx.hp(str, list, iL, z2, this.f19579u);
            } catch (Throwable th) {
                this.f19579u.setHeadConnectionException(com.byazt.xq.a.e(th));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int hp(long r5, java.util.List<com.byazt.fu.l> r7) {
        /*
            r4 = this;
            boolean r0 = r4.hq()
            if (r0 == 0) goto L5c
            boolean r0 = r4.f19576q
            if (r0 == 0) goto L18
            if (r7 == 0) goto L11
            int r7 = r7.size()
            goto L5a
        L11:
            com.byazt.fu.DownloadInfo r7 = r4.f19579u
            int r7 = r7.getChunkCount()
            goto L5a
        L18:
            com.byazt.yk.s r7 = r4.xs
            if (r7 == 0) goto L21
            int r7 = r7.hp(r5)
            goto L27
        L21:
            com.byazt.yk.s r7 = r4.vv
            int r7 = r7.hp(r5)
        L27:
            com.byazt.ip.gu r0 = com.byazt.ip.gu.hp()
            com.byazt.ip.jl r0 = r0.l()
            java.lang.String r1 = com.byazt.ez.jx.hp
            java.lang.String r2 = r0.name()
            java.lang.Object[] r2 = new java.lang.Object[]{r2}
            java.lang.String r3 = "NetworkQuality is : %s"
            java.lang.String r2 = java.lang.String.format(r3, r2)
            com.byazt.nu.hp.l(r1, r2)
            com.byazt.fu.DownloadInfo r1 = r4.f19579u
            java.lang.String r2 = r0.name()
            r1.setNetworkQuality(r2)
            com.byazt.yk.eb r1 = r4.ec
            if (r1 == 0) goto L54
            int r7 = r1.hp(r7, r0)
            goto L5a
        L54:
            com.byazt.yk.eb r1 = r4.sz
            int r7 = r1.hp(r7, r0)
        L5a:
            if (r7 > 0) goto L5d
        L5c:
            r7 = 1
        L5d:
            boolean r0 = com.byazt.nu.hp.hp()
            if (r0 == 0) goto L80
            java.lang.String r0 = com.byazt.ez.jx.hp
            java.lang.String r1 = java.lang.String.valueOf(r7)
            com.byazt.fu.DownloadInfo r2 = r4.f19579u
            java.lang.String r2 = r2.getName()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.Object[] r5 = new java.lang.Object[]{r1, r2, r5}
            java.lang.String r6 = "chunk count : %s for %s contentLen:%s"
            java.lang.String r5 = java.lang.String.format(r6, r5)
            com.byazt.nu.hp.l(r0, r5)
        L80:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.jx.hp(long, java.util.List):int");
    }

    @Override // com.byazt.ez.a
    public boolean l(long j2) throws BaseException {
        if (this.lv > 0 && this.f19579u.getCurBytes() > this.lv) {
            ud();
        }
        return this.ns.hp(j2);
    }

    @Override // com.byazt.ez.a
    public void l(BaseException baseException) {
        com.byazt.nu.hp.l(hp, "onError:" + baseException.getMessage());
        this.f19572k = com.byazt.oy.s.RUN_STATUS_ERROR;
        this.cx = baseException;
        pu();
    }

    private void hp(String str, List<com.byazt.fu.jx> list, long j2) throws com.byazt.io.q, BaseException {
        l(str, list, j2);
        com.byazt.ip.eb ebVar = this.di;
        if (ebVar != null) {
            try {
                hp(str, ebVar, j2);
            } catch (Throwable unused) {
                this.ud = true;
            }
        }
        if (this.di == null || this.ud) {
            hp(str, list);
            hp(str, this.f19568b, j2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(java.lang.String r11, java.util.List<com.byazt.fu.jx> r12) throws com.byazt.io.q, com.byazt.io.BaseException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.jx.hp(java.lang.String, java.util.List):void");
    }

    public static com.byazt.fu.l hp(DownloadInfo downloadInfo, long j2) {
        return new l.hp(downloadInfo.getId()).hp(-1).hp(0L).w(j2).l(j2).jx(0L).j(downloadInfo.getTotalBytes() - j2).hp();
    }

    private List<com.byazt.fu.jx> hp(com.byazt.fu.l lVar) {
        List<com.byazt.fu.jx> listHp = com.byazt.xq.a.hp(this.f19579u.getExtraHeaders(), this.f19579u.geteTag(), lVar);
        if (this.f19579u.isExpiredRedownload() && this.dy && this.f19579u.getLastModified() != null) {
            listHp.add(new com.byazt.fu.jx("if-modified-since", this.f19579u.getLastModified()));
            listHp.add(new com.byazt.fu.jx("download-tc21-1-15", "download-tc21-1-15"));
            com.byazt.nu.hp.l(hp, "dcache::add head IF_MODIFIED_SINCE=" + this.f19579u.getLastModified());
        }
        return listHp;
    }

    private void hp(int i2, List<com.byazt.fu.l> list) throws BaseException {
        if (list.size() == i2) {
            hp(list, this.f19579u.getTotalBytes());
            return;
        }
        throw new BaseException(1033, new IllegalArgumentException());
    }

    private void hp(long j2, int i2) throws BaseException {
        long j3 = j2 / i2;
        int id = this.f19579u.getId();
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        long j4 = 0;
        while (i3 < i2) {
            com.byazt.fu.l lVarHp = new l.hp(id).hp(i3).hp(j4).w(j4).l(j4).jx(i3 == i2 + (-1) ? 0L : (j4 + j3) - 1).hp();
            arrayList.add(lVarHp);
            this.f19580v.hp(lVarHp);
            j4 += j3;
            i3++;
        }
        this.f19579u.setChunkCount(i2);
        this.f19580v.hp(id, i2);
        hp(arrayList, j2);
    }

    private void hp(List<com.byazt.fu.l> list, long j2) throws BaseException {
        long jU;
        for (com.byazt.fu.l lVar : list) {
            if (lVar != null) {
                if (lVar.u() == 0) {
                    jU = j2 - lVar.k();
                } else {
                    jU = (lVar.u() - lVar.k()) + 1;
                }
                if (jU > 0) {
                    lVar.hp(jU);
                    if (this.f19579u.isNeedReuseFirstConnection() && this.f19568b != null && (!this.f19579u.isHeadConnectionAvailable() || this.ud)) {
                        if (lVar.ec() == 0) {
                            this.f19567a.add(new l(lVar, this.jx, this.f19568b, this));
                        } else if (lVar.ec() > 0) {
                            this.f19567a.add(new l(lVar, this.jx, this));
                        }
                    } else {
                        this.f19567a.add(new l(lVar, this.jx, this));
                    }
                }
            }
        }
        int i2 = 0;
        if (com.byazt.xq.hp.hp(64)) {
            ArrayList arrayList = new ArrayList(this.f19567a.size());
            ArrayList<l> arrayList2 = this.f19567a;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                l lVar2 = arrayList2.get(i3);
                i3++;
                l lVar3 = lVar2;
                if (this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED) {
                    lVar3.l();
                } else if (this.f19572k == com.byazt.oy.s.RUN_STATUS_PAUSE) {
                    lVar3.hp();
                } else {
                    arrayList.add(lVar3);
                }
            }
            try {
                List<Future> listJ = com.byazt.au.w.j(arrayList);
                for (Runnable runnableW = (Runnable) arrayList.remove(0); runnableW != null; runnableW = com.byazt.au.w.w(listJ)) {
                    if (ns()) {
                        return;
                    }
                    try {
                        runnableW.run();
                    } catch (Throwable unused) {
                    }
                }
                if (listJ == null || listJ.isEmpty()) {
                    return;
                }
                for (Future future : listJ) {
                    if (future != null && !future.isDone()) {
                        try {
                            future.get();
                        } catch (Throwable unused2) {
                        }
                    }
                }
                return;
            } catch (Throwable unused3) {
                return;
            }
        }
        ArrayList arrayList3 = new ArrayList(this.f19567a.size());
        ArrayList<l> arrayList4 = this.f19567a;
        int size2 = arrayList4.size();
        while (i2 < size2) {
            l lVar4 = arrayList4.get(i2);
            i2++;
            l lVar5 = lVar4;
            if (this.f19572k == com.byazt.oy.s.RUN_STATUS_CANCELED) {
                lVar5.l();
            } else if (this.f19572k == com.byazt.oy.s.RUN_STATUS_PAUSE) {
                lVar5.hp();
            } else {
                arrayList3.add(Executors.callable(lVar5));
            }
        }
        if (ns()) {
            return;
        }
        try {
            com.byazt.au.w.jx(arrayList3);
        } catch (InterruptedException e2) {
            throw new BaseException(PointerIconCompat.TYPE_GRAB, e2);
        }
    }

    private void hp(com.byazt.fu.l lVar, String str, q qVar) throws BaseException {
        lVar.hp(this.f19579u.getTotalBytes() - lVar.k());
        this.f19579u.setChunkCount(1);
        this.f19580v.hp(this.f19579u.getId(), 1);
        this.eb = new com.byazt.yk.w(this.f19579u, str, qVar, lVar, this);
        sz();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:82|6|7|(4:9|(1:11)(1:14)|15|(2:17|(9:19|(2:21|(1:23)(2:24|25))|26|(4:28|(1:30)|31|32)(0)|85|54|55|74|75)(2:33|(6:35|85|54|55|74|75)(4:36|(1:38)(1:39)|40|41)))(1:42))(2:43|(4:45|(1:47)(1:48)|49|50)(2:51|(2:78|79)))|53|32|85|54|55|74|75) */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x016b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x016c, code lost:
    
        com.byazt.nu.hp.w(com.byazt.ez.jx.hp, "checkSpaceOverflow: setLength1 e = " + r0 + ", mustSetLength = " + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0189, code lost:
    
        if (r10 >= r5) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0193, code lost:
    
        r7.l(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0197, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0198, code lost:
    
        com.byazt.nu.hp.w(com.byazt.ez.jx.hp, "checkSpaceOverflow: setLength2 ex = " + r0 + ", mustSetLength = " + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01b1, code lost:
    
        if (r2 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b9, code lost:
    
        throw new com.byazt.io.BaseException(com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader.KeyIsPreloadWaitListType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01ba, code lost:
    
        if (r2 != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01cc, code lost:
    
        throw new com.byazt.io.BaseException(com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader.KeyIsPreloadWaitListType, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0104  */
    @Override // com.byazt.ez.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(long r26) throws java.lang.InterruptedException, java.io.IOException, com.byazt.io.BaseException {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.jx.hp(long):void");
    }

    private boolean hp(int i2, String str, String str2) {
        if (i2 == 412) {
            return true;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2) || !(this.gu || this.f19570e)) {
            return (i2 == 201 || i2 == 416) && this.f19579u.getCurBytes() > 0;
        }
        return true;
    }

    private void hp(String str, String str2) throws com.byazt.io.q {
        this.f19580v.j(this.f19579u.getId());
        this.f19580v.zy(this.f19579u.getId());
        com.byazt.xq.a.hp(this.f19579u);
        this.f19576q = false;
        this.f19579u.resetDataForEtagEndure(str);
        this.f19580v.hp(this.f19579u);
        throw new com.byazt.io.q(str2);
    }

    @Override // com.byazt.ez.a
    public void hp(String str, com.byazt.ip.eb ebVar, long j2) throws com.byazt.io.q, BaseException {
        String strHp;
        long j3;
        long jL;
        if (ebVar == null) {
            return;
        }
        try {
            com.byazt.fu.j jVar = new com.byazt.fu.j(str, ebVar);
            int i2 = jVar.jx;
            String strJ = jVar.j();
            if (TextUtils.isEmpty(this.f19579u.getMimeType()) && !TextUtils.isEmpty(strJ)) {
                this.f19579u.setMimeType(strJ);
            }
            boolean zL = jVar.l();
            this.f19570e = zL;
            this.f19579u.setSupportPartial(zL);
            this.gu = jVar.hp();
            String str2 = this.f19579u.geteTag();
            String strJx = jVar.jx();
            String strA = jVar.a();
            String strEb = jVar.eb();
            String str3 = hp;
            StringBuilder sb = new StringBuilder("dcache=responseCode=");
            sb.append(i2);
            sb.append(" last_modified=");
            sb.append(strA);
            sb.append(" CACHE_CONTROL=");
            sb.append(strEb);
            sb.append(" max-age=");
            String str4 = strJx;
            sb.append(jVar.gu());
            sb.append(" isDeleteCacheIfCheckFailed=");
            sb.append(this.f19579u.isDeleteCacheIfCheckFailed());
            com.byazt.nu.hp.l(str3, sb.toString());
            com.byazt.nu.hp.l(str3, "dcache=firstOffset=" + j2 + " cur=" + strA + " before=" + this.f19579u.getLastModified() + " cur=" + jVar.e() + " before=" + this.f19579u.getTotalBytes());
            if (!TextUtils.isEmpty(strEb)) {
                this.f19579u.setCacheControl(strEb);
                if (jVar.gu() > 0) {
                    this.f19579u.setCacheExpiredTime(System.currentTimeMillis() + (jVar.gu() * 1000));
                }
            }
            if (this.f19579u.isExpiredRedownload() && this.dy && !TextUtils.isEmpty(this.nu)) {
                if (i2 == 304 || ((!TextUtils.isEmpty(this.f19579u.getLastModified()) || !this.f19579u.isDeleteCacheIfCheckFailed()) && TextUtils.equals(strA, this.f19579u.getLastModified()))) {
                    com.byazt.nu.hp.l(str3, "dcache=responseCode=" + i2 + " lastModified not changed, use local file  " + strA);
                    throw new com.byazt.io.hp(this.nu);
                }
                com.byazt.xq.a.hp(this.f19579u);
            }
            if (j2 > 0 && this.f19579u.isExpiredRedownload() && !TextUtils.equals(strA, this.f19579u.getLastModified())) {
                com.byazt.nu.hp.l(str3, "dcache cdn file change, so retry");
                hp("", "cdn file changed");
            }
            if (!TextUtils.isEmpty(strA)) {
                this.f19579u.setLastModified(strA);
            }
            if (hp(i2, str2, str4)) {
                if (ebVar instanceof q) {
                    if (!TextUtils.isEmpty(str2) && str2.equals(str4)) {
                        str4 = "";
                    }
                    hp(str4, "eTag of server file changed");
                } else {
                    throw new com.byazt.io.l(1002, i2, "");
                }
            }
            if (!this.f19570e && !this.gu) {
                if (i2 == 403) {
                    throw new BaseException(1047, "response code error : 403");
                }
                throw new com.byazt.io.l(1004, i2, "response code error : " + i2);
            }
            if (this.gu && j2 > 0) {
                if (ebVar instanceof q) {
                    hp("", "http head request not support");
                } else {
                    throw new BaseException(1004, "isResponseFromBegin but firstOffset > 0");
                }
            }
            long jS = jVar.s();
            if (!(ebVar instanceof q) && jS < 0 && com.byazt.xq.j.hp(this.f19579u)) {
                throw new BaseException(1004, "");
            }
            if (!TextUtils.isEmpty(this.f19579u.getName())) {
                strHp = "";
            } else {
                strHp = com.byazt.xq.a.hp(ebVar, this.f19579u.getUrl());
            }
            boolean zQ = jVar.q();
            this.jl = zQ;
            if (!zQ && jS == 0 && !(ebVar instanceof q)) {
                throw new BaseException(1004, "");
            }
            if (zQ) {
                j3 = 0;
                jL = -1;
            } else {
                String strL = com.byazt.xq.a.l(ebVar, c.f37367f);
                com.byazt.nu.hp.jx(str3, "firstConnection: contentRange = " + strL);
                if (!TextUtils.isEmpty(strL) && this.pu.l("fix_get_total_bytes", true)) {
                    jL = com.byazt.xq.a.l(strL);
                    com.byazt.nu.hp.jx(str3, "firstConnection: 1 totalLength = " + jL);
                    j3 = 0L;
                } else {
                    j3 = 0;
                    long j4 = j2 + jS;
                    com.byazt.nu.hp.w(str3, "firstConnection: 2 totalLength = " + j4 + ", contentLength = " + jS);
                    jL = j4;
                }
            }
            if (!TextUtils.isEmpty(this.f19579u.getTaskKey()) && this.f19579u.getTotalBytes() > j3 && jL != this.f19579u.getTotalBytes()) {
                if (ebVar instanceof q) {
                    hp("", "file totalLength changed");
                } else {
                    throw new com.byazt.io.l(1002, i2, "");
                }
            }
            if (ns()) {
                return;
            }
            if (this.f19579u.getExpectFileLength() > j3 && com.byazt.jb.hp.hp(this.f19579u.getId()).l("force_check_file_length") == 1 && this.f19579u.getExpectFileLength() != jL) {
                throw new BaseException(1070, "expectFileLength = " + this.f19579u.getExpectFileLength() + " , totalLength = " + jL);
            }
            this.ns.hp(jL, str4, strHp);
        } catch (BaseException e2) {
            throw e2;
        } catch (com.byazt.io.q e3) {
            throw e3;
        } catch (Throwable th) {
            com.byazt.xq.a.hp(th, "HandleFirstConnection");
        }
    }

    @Override // com.byazt.ez.a
    public void hp(l lVar) {
        if (this.f19578s) {
            return;
        }
        synchronized (this) {
            this.f19567a.remove(lVar);
        }
    }

    @Override // com.byazt.ez.a
    public boolean hp(BaseException baseException) {
        if (this.xh != null && com.byazt.xq.a.q(baseException) && this.f19581w.get() < this.f19579u.getRetryCount()) {
            return false;
        }
        if (com.byazt.xq.a.l(baseException)) {
            if (this.f19578s && !this.f19571j) {
                com.byazt.xq.a.hp(this.f19579u);
                this.f19571j = true;
            }
            return true;
        }
        AtomicInteger atomicInteger = this.f19581w;
        return ((atomicInteger != null && atomicInteger.get() > 0) || this.f19579u.hasNextBackupUrl() || (baseException != null && ((baseException.getErrorCode() == 1011 || (baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException))) && this.f19579u.canReplaceHttpForRetry()))) && !(baseException instanceof com.byazt.io.a);
    }

    @Override // com.byazt.ez.a
    public void hp(BaseException baseException, boolean z2) {
        com.byazt.nu.hp.l(hp, "onAllChunkRetryWithReset");
        this.f19572k = com.byazt.oy.s.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET;
        this.cx = baseException;
        pu();
        if (z2 ? j(baseException) : false) {
            return;
        }
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f19579u.setForbiddenBackupUrls(list, this.f19572k == com.byazt.oy.s.RUN_STATUS_WAITING_ASYNC_HANDLER);
        com.byazt.au.hp hpVarUd = com.byazt.yk.jx.ud();
        if (hpVarUd != null) {
            hpVarUd.jl(this.f19579u.getId());
        }
    }

    @Override // com.byazt.ez.a
    public com.byazt.io.s hp(com.byazt.fu.l lVar, BaseException baseException, long j2) {
        if (n()) {
            return com.byazt.io.s.RETURN;
        }
        if (baseException != null && (baseException.getErrorCode() == 1047 || com.byazt.xq.a.s(baseException))) {
            return hp(baseException, j2);
        }
        this.cx = baseException;
        this.f19579u.increaseCurBytes(-j2);
        this.f19580v.hp(this.f19579u);
        if (j(baseException)) {
            return com.byazt.io.s.RETURN;
        }
        com.byazt.yk.a aVar = this.ns;
        com.byazt.oy.s sVar = this.f19572k;
        com.byazt.oy.s sVar2 = com.byazt.oy.s.RUN_STATUS_RETRY_DELAY;
        aVar.hp(lVar, baseException, sVar == sVar2);
        if (this.f19572k != sVar2 && this.f19579u.isNeedRetryDelay()) {
            long jD = d();
            if (jD > 0) {
                com.byazt.nu.hp.jx(hp, "onSingleChunkRetry with delay time " + jD);
                try {
                    Thread.sleep(jD);
                } catch (Throwable th) {
                    com.byazt.nu.hp.j(hp, "onSingleChunkRetry:" + th.getMessage());
                }
            }
        }
        return com.byazt.io.s.CONTINUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x00fa  */
    @Override // com.byazt.ez.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.io.s hp(com.byazt.io.BaseException r7, long r8) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ez.jx.hp(com.byazt.io.BaseException, long):com.byazt.io.s");
    }

    @Override // com.byazt.ez.a
    public synchronized com.byazt.fu.l hp(int i2) {
        com.byazt.fu.l lVarHp;
        if (this.f19579u.getChunkCount() < 2) {
            return null;
        }
        List<com.byazt.fu.l> listJx = this.f19580v.jx(this.f19579u.getId());
        if (listJx != null && !listJx.isEmpty()) {
            for (int i3 = 0; i3 < listJx.size(); i3++) {
                com.byazt.fu.l lVar = listJx.get(i3);
                if (lVar != null && (lVarHp = hp(lVar, i2)) != null) {
                    return lVarHp;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.byazt.ez.a
    public void hp(com.byazt.ip.eb ebVar) {
        if (ebVar != null) {
            try {
                int iL = ebVar.l();
                this.f19579u.setHttpStatusCode(iL);
                this.f19579u.setHttpStatusMessage(com.byazt.xq.l.hp(iL));
                return;
            } catch (Throwable unused) {
            }
        }
        this.f19579u.setHttpStatusCode(-1);
        this.f19579u.setHttpStatusMessage("");
    }

    private com.byazt.fu.l hp(com.byazt.fu.l lVar, int i2) {
        com.byazt.fu.l lVar2 = null;
        if (!lVar.j()) {
            return null;
        }
        long jJx = lVar.jx(true);
        com.byazt.nu.hp.l(hp, "reuseChunk retainLen:" + jJx + " chunkIndex:" + i2);
        if (!lVar.a() && jJx > com.byazt.oy.w.f24275a && this.f19579u.isNeedReuseChunkRunnable()) {
            List<com.byazt.fu.l> listHp = lVar.hp(this.f19579u.getChunkCount(), this.f19579u.getTotalBytes());
            if (listHp != null) {
                Iterator<com.byazt.fu.l> it = listHp.iterator();
                while (it.hasNext()) {
                    this.f19580v.l(it.next());
                }
            }
        } else {
            if (lVar.a()) {
            }
            return lVar2;
        }
        if (lVar.a()) {
            for (int i3 = 1; i3 < lVar.eb().size(); i3++) {
                com.byazt.fu.l lVar3 = lVar.eb().get(i3);
                if (lVar3 != null) {
                    com.byazt.nu.hp.l(hp, "check can checkUnCompletedChunk -- chunkIndex:" + lVar3.ec() + " currentOffset:" + lVar3.k() + "  startOffset:" + lVar3.jl() + " contentLen:" + lVar3.xs());
                    if (lVar3.ec() < 0 || (!lVar3.q() && !lVar3.jx())) {
                        lVar2 = lVar3;
                        break;
                    }
                }
            }
            if (lVar2 != null) {
                long jK = lVar.k();
                com.byazt.nu.hp.l(hp, "unComplete chunk " + lVar.ec() + " curOffset:" + jK + " reuseChunk chunkIndex:" + i2 + " for subChunk:" + lVar2.ec());
                this.f19580v.hp(lVar2.gu(), lVar2.ec(), lVar2.l(), i2);
                lVar2.jx(i2);
                lVar2.hp(true);
            }
        }
        return lVar2;
    }

    private ec hp(DownloadTask downloadTask) {
        ec retryDelayTimeCalculator = downloadTask.getRetryDelayTimeCalculator();
        if (retryDelayTimeCalculator != null) {
            return retryDelayTimeCalculator;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            String retryDelayTimeArray = downloadInfo.getRetryDelayTimeArray();
            if (!TextUtils.isEmpty(retryDelayTimeArray)) {
                return new xs(retryDelayTimeArray);
            }
        }
        return com.byazt.yk.jx.as();
    }

    public void hp(Future future) {
        this.f19573l = future;
    }
}
