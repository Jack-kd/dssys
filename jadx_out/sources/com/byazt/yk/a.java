package com.byazt.yk;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.b;
import com.byazt.fn.r;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import com.byazt.oy.DownloadStatus;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;

@com.byazt.kj.hp(hp = {0, 1, 90, 54})
/* loaded from: classes3.dex */
public class a {
    public static final String hp = "a";

    /* renamed from: a, reason: collision with root package name */
    public DownloadTask f27976a;
    public SparseArray<IDownloadListener> eb;

    /* renamed from: j, reason: collision with root package name */
    public final e f27978j;
    public DownloadInfo jx;

    /* renamed from: k, reason: collision with root package name */
    public int f27979k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f27980l;

    /* renamed from: q, reason: collision with root package name */
    public SparseArray<IDownloadListener> f27981q;

    /* renamed from: s, reason: collision with root package name */
    public SparseArray<IDownloadListener> f27982s;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.fn.k f27983u;

    /* renamed from: v, reason: collision with root package name */
    public long f27984v;

    /* renamed from: w, reason: collision with root package name */
    public final Handler f27985w;
    public b xs;

    /* renamed from: e, reason: collision with root package name */
    public boolean f27977e = false;
    public volatile long gu = 0;
    public final AtomicLong jl = new AtomicLong();
    public boolean zy = false;

    public a(DownloadTask downloadTask, Handler handler) {
        this.f27976a = downloadTask;
        e();
        this.f27985w = handler;
        this.f27978j = jx.di();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            this.f27980l = com.byazt.jb.hp.hp(downloadInfo.getId()).hp("fix_start_with_file_exist_update_error");
        } else {
            this.f27980l = false;
        }
    }

    private void e() {
        DownloadTask downloadTask = this.f27976a;
        if (downloadTask != null) {
            this.jx = downloadTask.getDownloadInfo();
            this.eb = this.f27976a.getDownloadListeners(com.byazt.oy.a.MAIN);
            this.f27981q = this.f27976a.getDownloadListeners(com.byazt.oy.a.NOTIFICATION);
            this.f27982s = this.f27976a.getDownloadListeners(com.byazt.oy.a.SUB);
            this.f27983u = this.f27976a.getDepend();
            this.xs = this.f27976a.getMonitorDepend();
        }
    }

    private void gu() {
        ExecutorService executorServiceJl = jx.jl();
        if (executorServiceJl != null) {
            executorServiceJl.execute(new Runnable() { // from class: com.byazt.yk.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f27978j.q(a.this.jx.getId());
                    a.this.hp(1, (BaseException) null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jl() {
        try {
            com.byazt.nu.hp.l(hp, "saveFileAsTargetName onSuccess");
            try {
                zy();
                this.jx.setFirstSuccess(false);
                this.jx.setSuccessByCache(false);
                hp(-3, (BaseException) null);
                this.f27978j.jx(this.jx.getId(), this.jx.getTotalBytes());
                this.f27978j.j(this.jx.getId());
                this.f27978j.zy(this.jx.getId());
            } catch (BaseException e2) {
                hp(e2);
            }
        } catch (Throwable th) {
            hp(new BaseException(PointerIconCompat.TYPE_TEXT, com.byazt.xq.a.l(th, "onCompleted")));
        }
    }

    private void zy() throws BaseException {
        List<com.byazt.fn.zy> downloadCompleteHandlers = this.f27976a.getDownloadCompleteHandlers();
        if (downloadCompleteHandlers.isEmpty()) {
            return;
        }
        DownloadInfo downloadInfo = this.jx;
        hp(11, (BaseException) null);
        this.f27978j.hp(downloadInfo);
        for (com.byazt.fn.zy zyVar : downloadCompleteHandlers) {
            try {
                if (zyVar.l(downloadInfo)) {
                    zyVar.hp(downloadInfo);
                    this.f27978j.hp(downloadInfo);
                }
            } catch (BaseException e2) {
                throw e2;
            } catch (Throwable th) {
                throw new BaseException(1071, th);
            }
        }
    }

    public void a() {
        this.jx.setFirstDownload(false);
        if (!this.jx.isIgnoreDataVerify() && this.jx.getCurBytes() != this.jx.getTotalBytes()) {
            com.byazt.nu.hp.l(hp, this.jx.getErrorBytesLog());
            hp(new com.byazt.io.a(1027, "current bytes is not equals to total bytes, bytes changed with process : " + this.jx.getByteInvalidRetryStatus()));
            return;
        }
        if (this.jx.getCurBytes() <= 0) {
            com.byazt.nu.hp.l(hp, this.jx.getErrorBytesLog());
            hp(new com.byazt.io.a(1026, "curBytes is 0, bytes changed with process : " + this.jx.getByteInvalidRetryStatus()));
            return;
        }
        if (!this.jx.isIgnoreDataVerify() && this.jx.getTotalBytes() <= 0) {
            com.byazt.nu.hp.l(hp, this.jx.getErrorBytesLog());
            hp(new com.byazt.io.a(1044, "TotalBytes is 0, bytes changed with process : " + this.jx.getByteInvalidRetryStatus()));
            return;
        }
        com.byazt.nu.hp.l(hp, this.jx.getName() + " onCompleted start save file as target name");
        b monitorDepend = this.xs;
        DownloadTask downloadTask = this.f27976a;
        if (downloadTask != null) {
            monitorDepend = downloadTask.getMonitorDepend();
        }
        com.byazt.xq.a.hp(this.jx, monitorDepend, new r() { // from class: com.byazt.yk.a.2
            @Override // com.byazt.fn.r
            public void hp() {
                a.this.jl();
            }

            @Override // com.byazt.fn.r
            public void hp(BaseException baseException) {
                String str = a.hp;
                StringBuilder sb = new StringBuilder("saveFileAsTargetName onFailed : ");
                sb.append(baseException != null ? baseException.getErrorMessage() : "");
                com.byazt.nu.hp.l(str, sb.toString());
                a.this.hp(baseException);
            }
        });
    }

    public void eb() throws BaseException {
        if (!this.f27980l) {
            zy();
            com.byazt.nu.hp.l(hp, "onCompleteForFileExist");
            this.jx.setSuccessByCache(true);
            hp(-3, (BaseException) null);
            this.f27978j.jx(this.jx.getId(), this.jx.getTotalBytes());
            this.f27978j.j(this.jx.getId());
            this.f27978j.zy(this.jx.getId());
            return;
        }
        zy();
        com.byazt.nu.hp.l(hp, "onCompleteForFileExist");
        this.jx.setSuccessByCache(true);
        hp(-3, (BaseException) null);
        this.f27978j.jx(this.jx.getId(), this.jx.getTotalBytes());
        this.f27978j.j(this.jx.getId());
        this.f27978j.hp(this.jx);
        this.f27978j.zy(this.jx.getId());
    }

    public void j() {
        this.jx.setStatus(-2);
        try {
            this.f27978j.j(this.jx.getId(), this.jx.getCurBytes());
        } catch (SQLiteException unused) {
        }
        hp(-2, (BaseException) null);
    }

    public void s() {
        this.jx.setStatus(8);
        this.jx.setAsyncHandleStatus(com.byazt.oy.hp.ASYNC_HANDLE_WAITING);
        com.byazt.au.hp hpVarUd = jx.ud();
        if (hpVarUd != null) {
            hpVarUd.hp(this.jx.getId(), this.f27976a.getHashCodeForSameTask(), 8);
        }
    }

    public void w() {
        this.jx.setStatus(-7);
        try {
            this.f27978j.e(this.jx.getId());
        } catch (SQLiteException unused) {
        }
        hp(-7, (BaseException) null);
    }

    public void jx() {
        hp(-4, (BaseException) null);
    }

    public void l() {
        if (this.jx.canSkipStatusHandler()) {
            this.jx.changeSkipStatus();
            return;
        }
        this.f27978j.eb(this.jx.getId());
        if (this.jx.isFirstDownload()) {
            hp(6, (BaseException) null);
        }
        hp(2, (BaseException) null);
    }

    private BaseException jx(BaseException baseException) {
        Context contextMp;
        if (com.byazt.jb.hp.hp(this.jx.getId()).hp("download_failed_check_net", 1) != 1 || !com.byazt.xq.a.q(baseException) || (contextMp = jx.mp()) == null || com.byazt.xq.a.jx(contextMp)) {
            return baseException;
        }
        return new BaseException(this.jx.isOnlyWifi() ? PointerIconCompat.TYPE_ALL_SCROLL : 1049, baseException.getErrorMessage());
    }

    public void hp() {
        if (this.jx.canSkipStatusHandler()) {
            return;
        }
        this.jx.setStatus(1);
        gu();
    }

    public void hp(long j2, String str, String str2) {
        long j3;
        this.jx.setTotalBytes(j2);
        this.jx.seteTag(str);
        if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(this.jx.getName())) {
            this.jx.setName(str2);
        }
        try {
            j3 = j2;
            try {
                this.f27978j.hp(this.jx.getId(), j3, str, str2);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            j3 = j2;
        }
        hp(3, (BaseException) null);
        this.f27984v = this.jx.getMinByteIntervalForPostToMainThread(j3);
        this.f27979k = this.jx.getMinProgressTimeMsInterval();
        this.f27977e = true;
        com.byazt.au.vv.hp().w();
    }

    private void l(BaseException baseException) {
        Log.getStackTraceString(new Throwable());
        try {
            if (baseException != null && baseException.getCause() != null && (baseException.getCause() instanceof SQLiteFullException)) {
                this.f27978j.a(this.jx.getId());
            } else {
                try {
                    this.f27978j.l(this.jx.getId(), this.jx.getCurBytes());
                } catch (SQLiteException unused) {
                    this.f27978j.a(this.jx.getId());
                }
            }
        } catch (SQLiteException unused2) {
        }
        BaseException baseExceptionJx = jx(baseException);
        this.jx.setFailedException(baseExceptionJx);
        hp(baseExceptionJx instanceof com.byazt.io.w ? -2 : -1, baseExceptionJx);
        if (com.byazt.jb.hp.hp(this.jx.getId()).hp("retry_schedule", 0) > 0) {
            com.byazt.au.vv.hp().hp(this.jx);
        }
    }

    public boolean hp(long j2) {
        this.jl.addAndGet(j2);
        this.jx.increaseCurBytes(j2);
        long jUptimeMillis = SystemClock.uptimeMillis();
        return hp(jUptimeMillis, l(jUptimeMillis));
    }

    private boolean l(long j2) {
        boolean z2 = true;
        if (!this.zy) {
            this.zy = true;
            return true;
        }
        long j3 = j2 - this.gu;
        if (this.jl.get() < this.f27984v && j3 < this.f27979k) {
            z2 = false;
        }
        if (z2) {
            this.gu = j2;
            this.jl.set(0L);
        }
        return z2;
    }

    public void hp(BaseException baseException, boolean z2) {
        this.jx.setFirstDownload(false);
        this.jl.set(0L);
        l(baseException, z2);
    }

    public void hp(com.byazt.fu.l lVar, BaseException baseException, boolean z2) {
        this.jx.setFirstDownload(false);
        this.jl.set(0L);
        this.f27978j.s(this.jx.getId());
        hp(z2 ? 10 : 9, baseException, true);
    }

    private void l(BaseException baseException, boolean z2) {
        this.f27978j.s(this.jx.getId());
        hp(z2 ? 7 : 5, baseException);
    }

    public void hp(BaseException baseException) {
        this.jx.setFirstDownload(false);
        l(baseException);
    }

    public void hp(String str) throws BaseException {
        com.byazt.nu.hp.l(hp, "onCompleteForFileExist existTargetFileName is " + str + " but curName is " + this.jx.getName());
        if (this.f27980l) {
            com.byazt.xq.a.hp(this.jx, str);
            zy();
            this.jx.setSuccessByCache(true);
            hp(-3, (BaseException) null);
            this.f27978j.hp(this.jx);
            return;
        }
        this.f27978j.hp(this.jx);
        com.byazt.xq.a.hp(this.jx, str);
        this.jx.setSuccessByCache(true);
        zy();
        hp(-3, (BaseException) null);
    }

    private boolean hp(long j2, boolean z2) {
        boolean z3 = false;
        if (this.jx.getCurBytes() == this.jx.getTotalBytes()) {
            try {
                this.f27978j.hp(this.jx.getId(), this.jx.getCurBytes());
            } catch (Exception unused) {
            }
            return false;
        }
        if (this.f27977e) {
            this.f27977e = false;
            this.jx.setStatus(4);
        }
        if (this.jx.isNeedPostProgress() && z2) {
            z3 = true;
        }
        hp(4, (BaseException) null, z3);
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, BaseException baseException) {
        hp(i2, baseException, true);
    }

    private void hp(int i2, BaseException baseException, boolean z2) {
        SparseArray<IDownloadListener> sparseArray;
        SparseArray<IDownloadListener> sparseArray2;
        int status = this.jx.getStatus();
        if (status == -3 && i2 == 4) {
            return;
        }
        e();
        if (i2 != 4 && DownloadStatus.isRealTimeUploadStatus(i2)) {
            this.jx.updateRealDownloadTime(false);
            if (DownloadStatus.isTimeUploadStatus(i2)) {
                this.jx.updateDownloadTime();
            }
        }
        if (!this.jx.isAddListenerToSameTask()) {
            com.byazt.no.hp.hp(this.f27976a, baseException, i2);
        }
        if (i2 == 6) {
            this.jx.setStatus(2);
        } else if (i2 == -6) {
            this.jx.setStatus(-3);
        } else {
            this.jx.setStatus(i2);
        }
        if (status == -3 || status == -1) {
            if (this.jx.getRetryDelayStatus() == com.byazt.oy.eb.DELAY_RETRY_DOWNLOADING) {
                this.jx.setRetryDelayStatus(com.byazt.oy.eb.DELAY_RETRY_DOWNLOADED);
            }
            if (this.jx.getAsyncHandleStatus() == com.byazt.oy.hp.ASYNC_HANDLE_DOWNLOADING) {
                this.jx.setAsyncHandleStatus(com.byazt.oy.hp.ASYNC_HANDLE_DOWNLOADED);
            }
            if (this.jx.getByteInvalidRetryStatus() == com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_DOWNLOADING) {
                this.jx.setByteInvalidRetryStatus(com.byazt.oy.l.BYTE_INVALID_RETRY_STATUS_DOWNLOADED);
            }
        }
        com.byazt.xq.jx.hp(i2, this.f27982s, true, this.jx, baseException);
        if (i2 == -4) {
            return;
        }
        if (z2 && this.f27985w != null && (((sparseArray = this.eb) != null && sparseArray.size() > 0) || ((sparseArray2 = this.f27981q) != null && sparseArray2.size() > 0 && (this.jx.canShowNotification() || this.jx.isAutoInstallWithoutNotification())))) {
            this.f27985w.obtainMessage(i2, this.jx.getId(), this.f27976a.getHashCodeForSameTask(), baseException).sendToTarget();
            return;
        }
        com.byazt.au.hp hpVarUd = jx.ud();
        if (hpVarUd != null) {
            hpVarUd.hp(this.jx.getId(), this.f27976a.getHashCodeForSameTask(), i2);
        }
    }
}
