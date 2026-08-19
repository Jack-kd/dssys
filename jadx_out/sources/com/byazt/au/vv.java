package com.byazt.au;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ei.hp;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.yk.Downloader;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 273, 65})
/* loaded from: classes2.dex */
public class vv implements Handler.Callback, hp.InterfaceC0218hp {
    public static volatile vv hp;

    /* renamed from: q, reason: collision with root package name */
    public static l f18300q;

    /* renamed from: a, reason: collision with root package name */
    public long f18301a;

    /* renamed from: s, reason: collision with root package name */
    public ConnectivityManager f18304s;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f18305w;
    public final Handler jx = new Handler(Looper.getMainLooper(), this);

    /* renamed from: j, reason: collision with root package name */
    public final SparseArray<hp> f18302j = new SparseArray<>();
    public int eb = 0;

    /* renamed from: l, reason: collision with root package name */
    public final Context f18303l = com.byazt.yk.jx.mp();

    @com.byazt.kj.hp(hp = {0, 1, 273, 1544})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f18308a;

        /* renamed from: e, reason: collision with root package name */
        public boolean f18309e;
        public final int[] eb;
        public long gu;
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f18310j;
        public boolean jl;
        public final int jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f18311l;

        /* renamed from: q, reason: collision with root package name */
        public int f18312q;

        /* renamed from: s, reason: collision with root package name */
        public int f18313s;

        /* renamed from: w, reason: collision with root package name */
        public final int f18314w;

        public hp(int i2, int i3, int i4, int i5, int i6, boolean z2, int[] iArr) {
            i5 = i5 < 3000 ? 3000 : i5;
            i6 = i6 < 5000 ? 5000 : i6;
            this.hp = i2;
            this.f18311l = i3;
            this.jx = i4;
            this.f18310j = i5;
            this.f18314w = i6;
            this.f18308a = z2;
            this.eb = iArr;
            this.f18313s = i5;
        }

        public int j() {
            return this.f18313s;
        }

        public void jx() {
            this.f18313s = this.f18310j;
        }

        public boolean hp(long j2, int i2, int i3, boolean z2) {
            if (!this.jl) {
                com.byazt.nu.hp.jx("RetryScheduler", "canRetry: mIsWaitingRetry is false, return false!!!");
                return false;
            }
            if (this.f18311l < i2 || this.f18312q >= this.jx) {
                return false;
            }
            if (!this.f18309e || i3 == 2) {
                return z2 || j2 - this.gu >= ((long) this.f18310j);
            }
            return false;
        }

        public synchronized void l() {
            this.f18312q++;
        }

        public synchronized void hp() {
            this.f18313s += this.f18314w;
        }

        public synchronized void hp(long j2) {
            this.gu = j2;
        }
    }

    public interface l {
        void hp(DownloadInfo downloadInfo, long j2, boolean z2, int i2);
    }

    private vv() {
        a();
        this.f18305w = com.byazt.xq.a.jx();
        com.byazt.ei.hp.hp().hp(this);
    }

    private void a() {
        if (com.byazt.jb.hp.jx().hp("use_network_callback", 0) != 1) {
            return;
        }
        com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.au.vv.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (vv.this.f18303l != null) {
                        vv vvVar = vv.this;
                        vvVar.f18304s = (ConnectivityManager) vvVar.f18303l.getApplicationContext().getSystemService("connectivity");
                        vv.this.f18304s.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.byazt.au.vv.1.1
                            @Override // android.net.ConnectivityManager.NetworkCallback
                            public void onAvailable(Network network) {
                                com.byazt.nu.hp.l("RetryScheduler", "network onAvailable: ");
                                vv.this.hp(1, true);
                            }
                        });
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int eb() {
        try {
            if (this.f18304s == null) {
                this.f18304s = (ConnectivityManager) this.f18303l.getApplicationContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.f18304s.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getType() == 1 ? 2 : 1;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            l(message.arg1, message.arg2 == 1);
        } else {
            com.byazt.nu.hp.jx("RetryScheduler", "handleMessage, doSchedulerRetry, id = " + message.what);
            hp(message.what);
        }
        return true;
    }

    private hp j(int i2) {
        int[] iArrHp;
        int i3;
        int i4;
        com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(i2);
        boolean z2 = false;
        int iHp = hpVarHp.hp("retry_schedule", 0);
        JSONObject jSONObjectJ = hpVarHp.j("retry_schedule_config");
        int i5 = 60;
        if (jSONObjectJ != null) {
            int iOptInt = jSONObjectJ.optInt("max_count", 60);
            int iOptInt2 = jSONObjectJ.optInt("interval_sec", 60);
            int iOptInt3 = jSONObjectJ.optInt("interval_sec_acceleration", 60);
            if (f18300q != null && jSONObjectJ.optInt("use_job_scheduler", 0) == 1) {
                z2 = true;
            }
            iArrHp = hp(jSONObjectJ.optString("allow_error_code"));
            i3 = iOptInt3;
            i4 = iOptInt;
            i5 = iOptInt2;
        } else {
            iArrHp = null;
            i3 = 60;
            i4 = 60;
        }
        return new hp(i2, iHp, i4, i5 * 1000, i3 * 1000, z2, iArrHp);
    }

    private void jx(int i2) {
        synchronized (this.f18302j) {
            this.f18302j.remove(i2);
        }
    }

    private void l(final int i2, final boolean z2) {
        com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.au.vv.2
            @Override // java.lang.Runnable
            public void run() {
                int iEb;
                try {
                    if (vv.this.eb > 0 && (iEb = vv.this.eb()) != 0) {
                        com.byazt.nu.hp.jx("RetryScheduler", "doScheduleAllTaskRetry: mWaitingRetryTasksCount = " + vv.this.eb);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        ArrayList arrayList = new ArrayList();
                        synchronized (vv.this.f18302j) {
                            for (int i3 = 0; i3 < vv.this.f18302j.size(); i3++) {
                                try {
                                    hp hpVar = (hp) vv.this.f18302j.valueAt(i3);
                                    if (hpVar != null && hpVar.hp(jCurrentTimeMillis, i2, iEb, z2)) {
                                        if (z2) {
                                            hpVar.jx();
                                        }
                                        arrayList.add(hpVar);
                                    }
                                } finally {
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            int size = arrayList.size();
                            int i4 = 0;
                            while (i4 < size) {
                                Object obj = arrayList.get(i4);
                                i4++;
                                vv.this.hp(((hp) obj).hp, iEb, false);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public void w() {
        hp(5, false);
    }

    private hp l(int i2) {
        hp hpVarJ;
        hp hpVar = this.f18302j.get(i2);
        if (hpVar != null) {
            return hpVar;
        }
        synchronized (this.f18302j) {
            try {
                hpVarJ = this.f18302j.get(i2);
                if (hpVarJ == null) {
                    hpVarJ = j(i2);
                }
                this.f18302j.put(i2, hpVarJ);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hpVarJ;
    }

    public static vv hp() {
        if (hp == null) {
            synchronized (vv.class) {
                try {
                    if (hp == null) {
                        hp = new vv();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.ei.hp.InterfaceC0218hp
    public void jx() {
        hp(3, false);
    }

    @Override // com.byazt.ei.hp.InterfaceC0218hp
    public void l() {
        hp(4, false);
    }

    public static void hp(l lVar) {
        f18300q = lVar;
    }

    public void hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        hp(downloadInfo, downloadInfo.isOnlyWifi() || downloadInfo.isPauseReserveOnWifi(), eb());
    }

    public void j() {
        hp(2, true);
    }

    private void hp(DownloadInfo downloadInfo, boolean z2, int i2) {
        BaseException failedException = downloadInfo.getFailedException();
        if (failedException == null) {
            return;
        }
        hp hpVarL = l(downloadInfo.getId());
        if (hpVarL.f18312q > hpVarL.jx) {
            com.byazt.nu.hp.j("RetryScheduler", "tryStartScheduleRetry, id = " + hpVarL.hp + ", mRetryCount = " + hpVarL.f18312q + ", maxCount = " + hpVarL.jx);
            return;
        }
        int errorCode = failedException.getErrorCode();
        if (!com.byazt.xq.a.s(failedException) && !com.byazt.xq.a.q(failedException) && (!downloadInfo.statusInPause() || !downloadInfo.isPauseReserveOnWifi())) {
            if (!hp(hpVarL, errorCode)) {
                return;
            }
            com.byazt.nu.hp.jx("RetryScheduler", "allow error code, id = " + hpVarL.hp + ", error code = " + errorCode);
        }
        hpVarL.f18309e = z2;
        synchronized (this.f18302j) {
            try {
                if (!hpVarL.jl) {
                    hpVarL.jl = true;
                    this.eb++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int iJ = hpVarL.j();
        com.byazt.nu.hp.jx("RetryScheduler", "tryStartScheduleRetry: id = " + hpVarL.hp + ", delayTimeMills = " + iJ + ", mWaitingRetryTasks = " + this.eb);
        if (!hpVarL.f18308a) {
            if (z2) {
                return;
            }
            this.jx.removeMessages(downloadInfo.getId());
            this.jx.sendEmptyMessageDelayed(downloadInfo.getId(), iJ);
            return;
        }
        if (i2 == 0) {
            hpVarL.jx();
        }
        l lVar = f18300q;
        if (lVar != null) {
            lVar.hp(downloadInfo, iJ, z2, i2);
        }
        if (this.f18305w) {
            hpVarL.hp(System.currentTimeMillis());
            hpVarL.l();
            hpVarL.hp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, boolean z2) {
        if (this.eb <= 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            if (!z2) {
                try {
                    if (jCurrentTimeMillis - this.f18301a < 10000) {
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f18301a = jCurrentTimeMillis;
            com.byazt.nu.hp.jx("RetryScheduler", "scheduleAllTaskRetry, level = [" + i2 + "], force = [" + z2 + "]");
            if (z2) {
                this.jx.removeMessages(0);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 0;
            messageObtain.arg1 = i2;
            messageObtain.arg2 = z2 ? 1 : 0;
            this.jx.sendMessageDelayed(messageObtain, 2000L);
        }
    }

    public void hp(final int i2) {
        com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.au.vv.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    vv vvVar = vv.this;
                    vvVar.hp(i2, vvVar.eb(), true);
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, boolean z2) {
        com.byazt.yk.vv reserveWifiStatusListener;
        boolean zHp;
        Context context = this.f18303l;
        if (context == null) {
            return;
        }
        synchronized (this.f18302j) {
            try {
                hp hpVar = this.f18302j.get(i2);
                if (hpVar == null) {
                    return;
                }
                boolean z3 = true;
                if (hpVar.jl) {
                    hpVar.jl = false;
                    int i4 = this.eb - 1;
                    this.eb = i4;
                    if (i4 < 0) {
                        this.eb = 0;
                    }
                }
                com.byazt.nu.hp.jx("RetryScheduler", "doSchedulerRetryInSubThread: downloadId = " + i2 + ", retryCount = " + hpVar.f18312q + ", mWaitingRetryTasksCount = " + this.eb);
                DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
                if (downloadInfo == null) {
                    jx(i2);
                    return;
                }
                com.byazt.nu.hp.w("RetryScheduler", "doSchedulerRetryInSubThread，id:".concat(String.valueOf(i2)));
                int realStatus = downloadInfo.getRealStatus();
                if (realStatus != -3 && realStatus != -4) {
                    if (realStatus == -5 || (realStatus == -2 && downloadInfo.isPauseReserveOnWifi())) {
                        if (realStatus == -2 && (reserveWifiStatusListener = Downloader.getInstance(com.byazt.yk.jx.mp()).getReserveWifiStatusListener()) != null) {
                            reserveWifiStatusListener.hp(downloadInfo, 4, 3);
                        }
                        com.byazt.yk.jl jlVarB = com.byazt.yk.jx.b();
                        if (jlVarB != null) {
                            jlVarB.hp(Collections.singletonList(downloadInfo), 3);
                        }
                        jx(i2);
                        return;
                    }
                    if (realStatus != -1) {
                        return;
                    }
                    if (i3 != 0) {
                        zHp = true;
                    } else if (!hpVar.f18308a) {
                        return;
                    } else {
                        zHp = false;
                    }
                    BaseException failedException = downloadInfo.getFailedException();
                    if (zHp && com.byazt.xq.a.s(failedException)) {
                        zHp = hp(downloadInfo, failedException);
                    }
                    hpVar.l();
                    if (zHp) {
                        com.byazt.nu.hp.jx("RetryScheduler", "doSchedulerRetry: restart task, ****** id = " + hpVar.hp);
                        hpVar.hp(System.currentTimeMillis());
                        if (z2) {
                            hpVar.hp();
                        }
                        downloadInfo.setRetryScheduleCount(hpVar.f18312q);
                        if (downloadInfo.getStatus() == -1) {
                            Downloader.getInstance(context).restart(downloadInfo.getId());
                            return;
                        }
                        return;
                    }
                    if (z2) {
                        hpVar.hp();
                    }
                    if (!downloadInfo.isOnlyWifi() && !downloadInfo.isPauseReserveOnWifi()) {
                        z3 = false;
                    }
                    hp(downloadInfo, z3, i3);
                    return;
                }
                jx(i2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean hp(hp hpVar, int i2) {
        int[] iArr = hpVar.eb;
        if (iArr != null && iArr.length != 0) {
            for (int i3 : iArr) {
                if (i3 == i2) {
                    return true;
                }
            }
        }
        return false;
    }

    private int[] hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length <= 0) {
                return null;
            }
            int[] iArr = new int[strArrSplit.length];
            for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                iArr[i2] = Integer.parseInt(strArrSplit[i2]);
            }
            return iArr;
        } catch (Throwable unused) {
            return null;
        }
    }

    private boolean hp(DownloadInfo downloadInfo, BaseException baseException) {
        long j2;
        long totalBytes;
        try {
            j2 = com.byazt.xq.a.j(downloadInfo.getTempPath());
        } catch (BaseException unused) {
            j2 = 0;
        }
        if (baseException instanceof com.byazt.io.j) {
            totalBytes = ((com.byazt.io.j) baseException).l();
        } else {
            totalBytes = downloadInfo.getTotalBytes() - downloadInfo.getCurBytes();
        }
        if (j2 < totalBytes) {
            com.byazt.jb.hp hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId());
            if (hpVarHp.hp("space_fill_part_download", 0) == 1) {
                if (j2 > 0) {
                    int iHp = hpVarHp.hp("space_fill_min_keep_mb", 100);
                    if (iHp > 0) {
                        long j3 = j2 - (iHp * 1048576);
                        com.byazt.nu.hp.jx("RetryScheduler", "retry schedule: available = " + com.byazt.xq.a.hp(j2) + "MB, minKeep = " + iHp + "MB, canDownload = " + com.byazt.xq.a.hp(j3) + "MB");
                        if (j3 <= 0) {
                            com.byazt.nu.hp.j("RetryScheduler", "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!");
                            return false;
                        }
                    }
                } else if (hpVarHp.hp("download_when_space_negative", 0) != 1) {
                }
            }
            return false;
        }
        return true;
    }
}
