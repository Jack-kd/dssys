package com.byazt.au;

import android.database.sqlite.SQLiteException;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ez.s;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import com.byazt.oy.DownloadStatus;
import com.byazt.oy.EnqueueType;
import com.byazt.yk.Downloader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;

@com.byazt.kj.hp(hp = {0, 1, 273, 28})
/* loaded from: classes2.dex */
public abstract class hp implements s.hp {

    /* renamed from: l, reason: collision with root package name */
    public final SparseArray<DownloadTask> f18275l = new SparseArray<>();
    public final SparseArray<DownloadTask> jx = new SparseArray<>();

    /* renamed from: j, reason: collision with root package name */
    public final SparseArray<DownloadTask> f18274j = new SparseArray<>();

    /* renamed from: w, reason: collision with root package name */
    public final SparseArray<DownloadTask> f18278w = new SparseArray<>();

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray<DownloadTask> f18272a = new SparseArray<>();
    public final SparseArray<SparseArray<DownloadTask>> eb = new SparseArray<>();

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.xq.s<Integer, DownloadTask> f18277s = new com.byazt.xq.s<>();

    /* renamed from: q, reason: collision with root package name */
    public final SparseArray<Long> f18276q = new SparseArray<>();

    /* renamed from: e, reason: collision with root package name */
    public final LinkedBlockingDeque<DownloadTask> f18273e = new LinkedBlockingDeque<>();
    public final com.byazt.ez.s hp = new com.byazt.ez.s(Looper.getMainLooper(), this);
    public final com.byazt.yk.e gu = com.byazt.yk.jx.di();

    private void jx(DownloadTask downloadTask) throws InterruptedException {
        DownloadInfo downloadInfo;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        try {
            if (this.f18273e.isEmpty()) {
                hp(downloadTask, true);
                this.f18273e.put(downloadTask);
                return;
            }
            if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_TAIL) {
                DownloadTask first = this.f18273e.getFirst();
                if (first.getDownloadId() == downloadTask.getDownloadId() && hp(downloadTask.getDownloadId())) {
                    return;
                }
                w(first.getDownloadId());
                hp(downloadTask, true);
                if (first.getDownloadId() != downloadTask.getDownloadId()) {
                    this.f18273e.putFirst(downloadTask);
                    return;
                }
                return;
            }
            if (this.f18273e.getFirst().getDownloadId() == downloadTask.getDownloadId() && hp(downloadTask.getDownloadId())) {
                return;
            }
            Iterator<DownloadTask> it = this.f18273e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DownloadTask next = it.next();
                if (next != null && next.getDownloadId() == downloadTask.getDownloadId()) {
                    it.remove();
                    break;
                }
            }
            this.f18273e.put(downloadTask);
            new com.byazt.yk.a(downloadTask, this.hp).hp();
        } catch (InterruptedException unused) {
        }
    }

    private void u(int i2) {
        DownloadTask first;
        if (this.f18273e.isEmpty()) {
            return;
        }
        DownloadTask first2 = this.f18273e.getFirst();
        if (first2 != null && first2.getDownloadId() == i2) {
            this.f18273e.poll();
        }
        if (this.f18273e.isEmpty() || (first = this.f18273e.getFirst()) == null) {
            return;
        }
        hp(first, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadTask v(int i2) {
        DownloadTask downloadTask = this.f18275l.get(i2);
        return (downloadTask == null && (downloadTask = this.f18274j.get(i2)) == null && (downloadTask = this.jx.get(i2)) == null && (downloadTask = this.f18278w.get(i2)) == null) ? this.f18272a.get(i2) : downloadTask;
    }

    public synchronized boolean a(int i2) {
        try {
            DownloadTask downloadTask = this.f18275l.get(i2);
            if (downloadTask != null) {
                DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
                if (downloadInfo != null) {
                    downloadInfo.setDownloadFromReserveWifi(false);
                }
                hp(downloadTask);
            } else {
                eb(i2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return true;
    }

    public synchronized IDownloadFileUriProvider e(int i2) {
        DownloadTask downloadTask = this.f18275l.get(i2);
        if (downloadTask != null) {
            return downloadTask.getFileUriProvider();
        }
        DownloadTask downloadTask2 = this.jx.get(i2);
        if (downloadTask2 != null) {
            return downloadTask2.getFileUriProvider();
        }
        DownloadTask downloadTask3 = this.f18274j.get(i2);
        if (downloadTask3 != null) {
            return downloadTask3.getFileUriProvider();
        }
        DownloadTask downloadTask4 = this.f18278w.get(i2);
        if (downloadTask4 != null) {
            return downloadTask4.getFileUriProvider();
        }
        DownloadTask downloadTask5 = this.f18272a.get(i2);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getFileUriProvider();
    }

    public synchronized boolean eb(int i2) {
        try {
            DownloadTask downloadTask = this.f18274j.get(i2);
            if (downloadTask == null) {
                downloadTask = this.f18278w.get(i2);
            }
            if (downloadTask == null) {
                return false;
            }
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo != null) {
                downloadInfo.setDownloadFromReserveWifi(false);
            }
            hp(downloadTask);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean gu(int i2) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f18278w.get(i2);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            if (downloadInfo.canStartRetryDelayTask()) {
                hp(downloadTask, false);
            }
            return true;
        }
        DownloadInfo downloadInfoL = this.gu.l(i2);
        if (downloadInfoL != null && downloadInfoL.canStartRetryDelayTask()) {
            hp(new DownloadTask(downloadInfoL), false);
        }
        return false;
    }

    public abstract List<Integer> hp();

    public abstract void hp(int i2, long j2);

    public abstract void hp(int i2, DownloadTask downloadTask);

    public abstract void hp(com.byazt.ez.jx jxVar);

    public abstract boolean hp(int i2);

    public synchronized DownloadInfo j(int i2) {
        DownloadInfo downloadInfoL;
        DownloadTask downloadTask;
        downloadInfoL = this.gu.l(i2);
        if (downloadInfoL == null && (downloadTask = this.f18275l.get(i2)) != null) {
            downloadInfoL = downloadTask.getDownloadInfo();
        }
        return downloadInfoL;
    }

    public synchronized boolean jl(int i2) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f18272a.get(i2);
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return false;
        }
        if (downloadInfo.canReStartAsyncTask()) {
            hp(downloadTask);
        }
        return true;
    }

    public abstract com.byazt.ez.jx jx(int i2);

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        if (r1.f18274j.get(r2) != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean k(int r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto L1b
            android.util.SparseArray<com.byazt.fu.DownloadTask> r0 = r1.f18275l     // Catch: java.lang.Throwable -> L14
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L14
            if (r0 != 0) goto L16
            android.util.SparseArray<com.byazt.fu.DownloadTask> r0 = r1.f18274j     // Catch: java.lang.Throwable -> L14
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L14
            if (r2 == 0) goto L1b
            goto L16
        L14:
            r2 = move-exception
            goto L19
        L16:
            monitor-exit(r1)
            r2 = 1
            return r2
        L19:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L14
            throw r2
        L1b:
            monitor-exit(r1)
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.au.hp.k(int):boolean");
    }

    public abstract void l(int i2);

    public synchronized o q(int i2) {
        DownloadTask downloadTask = this.f18275l.get(i2);
        if (downloadTask != null) {
            return downloadTask.getNotificationEventListener();
        }
        DownloadTask downloadTask2 = this.jx.get(i2);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationEventListener();
        }
        DownloadTask downloadTask3 = this.f18274j.get(i2);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationEventListener();
        }
        DownloadTask downloadTask4 = this.f18278w.get(i2);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationEventListener();
        }
        DownloadTask downloadTask5 = this.f18272a.get(i2);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getNotificationEventListener();
    }

    public synchronized nu s(int i2) {
        DownloadTask downloadTask = this.f18275l.get(i2);
        if (downloadTask != null) {
            return downloadTask.getNotificationClickCallback();
        }
        DownloadTask downloadTask2 = this.jx.get(i2);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationClickCallback();
        }
        DownloadTask downloadTask3 = this.f18274j.get(i2);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationClickCallback();
        }
        DownloadTask downloadTask4 = this.f18278w.get(i2);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationClickCallback();
        }
        DownloadTask downloadTask5 = this.f18272a.get(i2);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getNotificationClickCallback();
    }

    public synchronized boolean w(int i2) {
        com.byazt.nu.hp.l("AbsDownloadEngine", "pause id=".concat(String.valueOf(i2)));
        DownloadInfo downloadInfoL = this.gu.l(i2);
        if (downloadInfoL != null && downloadInfoL.getStatus() == 11) {
            return false;
        }
        synchronized (this.f18275l) {
            l(i2);
        }
        if (downloadInfoL == null) {
            DownloadTask downloadTask = this.f18275l.get(i2);
            if (downloadTask != null) {
                new com.byazt.yk.a(downloadTask, this.hp).j();
                return true;
            }
        } else {
            hp(downloadInfoL);
            if (downloadInfoL.getStatus() == 1) {
                DownloadTask downloadTask2 = this.f18275l.get(i2);
                if (downloadTask2 != null) {
                    new com.byazt.yk.a(downloadTask2, this.hp).j();
                    return true;
                }
            } else if (DownloadStatus.isDownloading(downloadInfoL.getStatus())) {
                downloadInfoL.setStatus(-2);
                return true;
            }
        }
        return false;
    }

    public synchronized void zy(int i2) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f18275l.get(i2);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            downloadInfo.setForceIgnoreRecommendSize(true);
            hp(downloadTask);
        }
    }

    private void l(DownloadTask downloadTask) {
        int hashCodeForSameTask = downloadTask.getHashCodeForSameTask();
        if (hashCodeForSameTask == 0 && downloadTask.isAutoSetHashCodeForSameTask()) {
            hashCodeForSameTask = downloadTask.autoCalAndGetHashCodeForSameTask();
        }
        if (hashCodeForSameTask == 0) {
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.eb.get(downloadTask.getDownloadId());
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.eb.put(downloadTask.getDownloadId(), sparseArray);
        }
        com.byazt.nu.hp.l("AbsDownloadEngine", "tryCacheSameTaskWithListenerHashCode id:" + downloadTask.getDownloadId() + " listener hasCode:" + hashCodeForSameTask);
        sparseArray.put(hashCodeForSameTask, downloadTask);
    }

    private void hp(DownloadTask downloadTask, boolean z2) {
        DownloadInfo downloadInfo;
        int status;
        DownloadInfo downloadInfo2;
        DownloadTask downloadTaskRemove;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        if (downloadInfo.isEntityInvalid()) {
            com.byazt.no.hp.hp(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is Invalid, url is " + downloadInfo.getUrl() + " name is " + downloadInfo.getName() + " savePath is " + downloadInfo.getSavePath()), downloadInfo.getStatus());
            return;
        }
        boolean z3 = false;
        if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("no_net_opt", 0) == 1 && !com.byazt.xq.a.jx(com.byazt.yk.jx.mp()) && !downloadInfo.isFirstDownload()) {
            new com.byazt.yk.a(downloadTask, this.hp).hp(new BaseException(1049, "network_not_available"));
            return;
        }
        int id = downloadInfo.getId();
        if (z2) {
            hp(downloadInfo);
        }
        if (this.f18274j.get(id) != null) {
            this.f18274j.remove(id);
        }
        if (this.jx.get(id) != null) {
            this.jx.remove(id);
        }
        if (this.f18278w.get(id) != null) {
            this.f18278w.remove(id);
        }
        if (this.f18272a.get(id) != null) {
            this.f18272a.remove(id);
        }
        if (hp(id) && !downloadInfo.canReStartAsyncTask()) {
            com.byazt.nu.hp.l("AbsDownloadEngine", "another task with same id is downloading when tryDownload");
            downloadTask.addListenerToDownloadingSameTask();
            com.byazt.no.hp.hp(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is isDownloading and addListenerToSameTask is false"), downloadInfo.getStatus());
            return;
        }
        com.byazt.nu.hp.l("AbsDownloadEngine", "no downloading task :".concat(String.valueOf(id)));
        if (downloadInfo.canReStartAsyncTask()) {
            downloadInfo.setAsyncHandleStatus(com.byazt.oy.hp.ASYNC_HANDLE_RESTART);
        }
        if (com.byazt.xq.hp.hp(32768) && (downloadTaskRemove = this.f18277s.remove(Integer.valueOf(id))) != null) {
            downloadTask.copyListenerFromPendingTask(downloadTaskRemove);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        DownloadTask downloadTask2 = this.f18275l.get(id);
        if (downloadTask2 == null || (downloadInfo2 = downloadTask2.getDownloadInfo()) == null) {
            status = 0;
        } else {
            status = downloadInfo2.getStatus();
            if (DownloadStatus.isDownloading(status)) {
                z3 = true;
            }
        }
        com.byazt.nu.hp.l("AbsDownloadEngine", "can add listener " + z3 + " , oldTaskStatus is :" + status);
        if (z3) {
            downloadTask.addListenerToDownloadingSameTask();
            return;
        }
        l(downloadTask);
        this.f18275l.put(id, downloadTask);
        this.f18276q.put(id, Long.valueOf(jUptimeMillis));
        hp(id, downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j(int i2, boolean z2) {
        com.byazt.nu.hp.l("AbsDownloadEngine", "clearDownloadDataInSubThread::id=" + i2 + " deleteTargetFile=" + z2);
        try {
            DownloadInfo downloadInfoL = this.gu.l(i2);
            if (downloadInfoL != null) {
                if (z2) {
                    com.byazt.xq.a.hp(downloadInfoL);
                } else {
                    com.byazt.xq.a.jx(downloadInfoL.getTempPath(), downloadInfoL.getTempName());
                }
                downloadInfoL.erase();
            }
            try {
                this.gu.a(i2);
            } catch (SQLiteException unused) {
            }
            hp(i2, 0, -4);
            if (this.f18274j.get(i2) != null) {
                this.f18274j.remove(i2);
            }
            if (this.jx.get(i2) != null) {
                this.jx.remove(i2);
            }
            this.f18277s.remove(Integer.valueOf(i2));
            com.byazt.jb.hp.l(i2);
        } catch (Throwable unused2) {
        }
    }

    public synchronized void l(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            if (com.byazt.xq.a.l(com.byazt.yk.jx.mp())) {
                for (int i2 = 0; i2 < this.f18275l.size(); i2++) {
                    DownloadTask downloadTask = this.f18275l.get(this.f18275l.keyAt(i2));
                    if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && l(downloadInfo)) {
                        downloadInfo.setAutoResumed(true);
                        downloadInfo.setShowNotificationForNetworkResumed(true);
                        hp(downloadTask);
                        downloadInfo.setDownloadFromReserveWifi(true);
                        com.byazt.yk.vv reserveWifiStatusListener = Downloader.getInstance(com.byazt.yk.jx.mp()).getReserveWifiStatusListener();
                        if (reserveWifiStatusListener != null) {
                            reserveWifiStatusListener.hp(downloadInfo, 5, 2);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public void jx(final int i2, final boolean z2) {
        DownloadInfo downloadInfoL = this.gu.l(i2);
        if (downloadInfoL != null) {
            hp(downloadInfoL);
        }
        this.hp.post(new Runnable() { // from class: com.byazt.au.hp.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.li.l.hp().a(i2);
            }
        });
        com.byazt.yk.jx.hp(new Runnable() { // from class: com.byazt.au.hp.5
            @Override // java.lang.Runnable
            public void run() {
                hp.this.jx(i2);
                hp.this.w(i2, z2);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(int i2, boolean z2) {
        try {
            DownloadInfo downloadInfoL = this.gu.l(i2);
            if (downloadInfoL != null) {
                com.byazt.xq.a.hp(downloadInfoL, z2);
                downloadInfoL.erase();
            }
            try {
                this.gu.j(i2);
                this.gu.hp(downloadInfoL);
            } catch (SQLiteException unused) {
            }
            if (this.f18274j.get(i2) != null) {
                this.f18274j.remove(i2);
            }
            if (this.jx.get(i2) != null) {
                this.jx.remove(i2);
            }
            this.f18277s.remove(Integer.valueOf(i2));
            com.byazt.jb.hp.l(i2);
        } catch (Throwable unused2) {
        }
    }

    private boolean l(DownloadInfo downloadInfo) {
        if (downloadInfo != null && downloadInfo.statusInPause()) {
            return downloadInfo.isPauseReserveOnWifi();
        }
        return false;
    }

    public void l() {
        List<Integer> listHp = hp();
        if (listHp == null) {
            return;
        }
        Iterator<Integer> it = listHp.iterator();
        while (it.hasNext()) {
            w(it.next().intValue());
        }
    }

    public void l(final int i2, final boolean z2) {
        DownloadInfo downloadInfoL = this.gu.l(i2);
        if (downloadInfoL != null) {
            hp(downloadInfoL);
        }
        this.hp.post(new Runnable() { // from class: com.byazt.au.hp.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.li.l.hp().a(i2);
            }
        });
        com.byazt.yk.jx.hp(new Runnable() { // from class: com.byazt.au.hp.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask downloadTaskV;
                if (hp.this.jx(i2) == null && (downloadTaskV = hp.this.v(i2)) != null) {
                    DownloadInfo downloadInfo = downloadTaskV.getDownloadInfo();
                    SparseArray<IDownloadListener> downloadListeners = downloadTaskV.getDownloadListeners(com.byazt.oy.a.SUB);
                    if (downloadListeners != null) {
                        synchronized (downloadListeners) {
                            for (int i3 = 0; i3 < downloadListeners.size(); i3++) {
                                try {
                                    IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i3));
                                    if (iDownloadListener != null) {
                                        iDownloadListener.onCanceled(downloadInfo);
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                }
                hp.this.j(i2, z2);
            }
        }, false);
    }

    public synchronized void l(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        hp(i2, i3, iDownloadListener, aVar, z2, true);
    }

    public List<DownloadInfo> l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Iterator<Integer> it = hp().iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            DownloadInfo downloadInfoJ = j(it.next().intValue());
            if (downloadInfoJ != null && str.equals(downloadInfoJ.getMimeType())) {
                arrayList.add(downloadInfoJ);
            }
        }
        return arrayList;
    }

    public synchronized void hp(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo == null) {
            return;
        }
        downloadInfo.setDownloadFromReserveWifi(false);
        if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_NONE) {
            jx(downloadTask);
        } else {
            hp(downloadTask, true);
        }
    }

    public void l(int i2, long j2) {
        DownloadInfo downloadInfoL = this.gu.l(i2);
        if (downloadInfoL != null) {
            downloadInfoL.setThrottleNetSpeed(j2);
        }
        hp(i2, j2);
    }

    public synchronized List<DownloadInfo> hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<DownloadInfo> listHp = this.gu.hp(str);
        if (listHp != null && !listHp.isEmpty()) {
            return listHp;
        }
        ArrayList arrayList = new ArrayList();
        int size = this.f18275l.size();
        for (int i2 = 0; i2 < size; i2++) {
            DownloadTask downloadTaskValueAt = this.f18275l.valueAt(i2);
            if (downloadTaskValueAt != null && downloadTaskValueAt.getDownloadInfo() != null && str.equals(downloadTaskValueAt.getDownloadInfo().getUrl())) {
                arrayList.add(downloadTaskValueAt.getDownloadInfo());
            }
        }
        return arrayList;
    }

    public synchronized boolean hp(int i2, boolean z2) {
        try {
            DownloadTask downloadTaskV = this.f18275l.get(i2);
            if (downloadTaskV == null && com.byazt.xq.hp.hp(65536)) {
                downloadTaskV = v(i2);
            }
            if (downloadTaskV != null) {
                if (!com.byazt.jb.hp.hp(i2).l("fix_on_cancel_call_twice", true)) {
                    new com.byazt.yk.a(downloadTaskV, this.hp).jx();
                }
                final DownloadInfo downloadInfo = downloadTaskV.getDownloadInfo();
                final SparseArray<IDownloadListener> downloadListeners = downloadTaskV.getDownloadListeners(com.byazt.oy.a.MAIN);
                final SparseArray<IDownloadListener> downloadListeners2 = downloadTaskV.getDownloadListeners(com.byazt.oy.a.NOTIFICATION);
                this.hp.post(new Runnable() { // from class: com.byazt.au.hp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SparseArray sparseArray;
                        SparseArray sparseArray2 = downloadListeners;
                        if (sparseArray2 != null) {
                            synchronized (sparseArray2) {
                                for (int i3 = 0; i3 < downloadListeners.size(); i3++) {
                                    try {
                                        IDownloadListener iDownloadListener = (IDownloadListener) downloadListeners.get(downloadListeners.keyAt(i3));
                                        if (iDownloadListener != null) {
                                            iDownloadListener.onCanceled(downloadInfo);
                                        }
                                    } finally {
                                    }
                                }
                            }
                        }
                        DownloadInfo downloadInfo2 = downloadInfo;
                        if (downloadInfo2 == null || !downloadInfo2.canShowNotification() || (sparseArray = downloadListeners2) == null) {
                            return;
                        }
                        synchronized (sparseArray) {
                            for (int i4 = 0; i4 < downloadListeners2.size(); i4++) {
                                try {
                                    IDownloadListener iDownloadListener2 = (IDownloadListener) downloadListeners2.get(downloadListeners2.keyAt(i4));
                                    if (iDownloadListener2 != null) {
                                        iDownloadListener2.onCanceled(downloadInfo);
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                });
            }
            DownloadInfo downloadInfoL = this.gu.l(i2);
            if (com.byazt.xq.hp.hp(65536)) {
                if (downloadInfoL != null) {
                    downloadInfoL.setStatus(-4);
                }
            } else if (downloadInfoL != null && DownloadStatus.isDownloading(downloadInfoL.getStatus())) {
                downloadInfoL.setStatus(-4);
            }
            l(i2, z2);
        } catch (Throwable th) {
            throw th;
        }
        return true;
    }

    private void hp(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            try {
                if (downloadInfo.getStatus() == 7 || downloadInfo.getRetryDelayStatus() != com.byazt.oy.eb.DELAY_RETRY_NONE) {
                    downloadInfo.setStatus(5);
                    downloadInfo.setRetryDelayStatus(com.byazt.oy.eb.DELAY_RETRY_NONE);
                    com.byazt.nu.hp.l("AbsDownloadEngine", "cancelAlarm");
                }
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized void hp(int i2, o oVar) {
        DownloadTask downloadTask = this.f18275l.get(i2);
        if (downloadTask != null) {
            downloadTask.setNotificationEventListener(oVar);
        }
    }

    public synchronized void hp(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            boolean zL = com.byazt.xq.hp.hp(1048576) ? com.byazt.xq.a.l(com.byazt.yk.jx.mp()) : true;
            for (int i2 = 0; i2 < this.f18274j.size(); i2++) {
                DownloadTask downloadTask = this.f18274j.get(this.f18274j.keyAt(i2));
                if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (!downloadInfo.isOnlyWifi() || zL)) {
                    downloadInfo.setAutoResumed(true);
                    downloadInfo.setShowNotificationForNetworkResumed(true);
                    hp(downloadTask);
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        try {
            DownloadTask downloadTaskV = v(i2);
            if (downloadTaskV == null) {
                downloadTaskV = this.f18277s.get(Integer.valueOf(i2));
            }
            if (downloadTaskV != null) {
                downloadTaskV.removeDownloadListener(i3, iDownloadListener, aVar, z2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void hp(int i2, int i3, final IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2, boolean z3) {
        DownloadInfo downloadInfoL;
        try {
            DownloadTask downloadTaskV = v(i2);
            if (downloadTaskV != null) {
                downloadTaskV.addDownloadListener(i3, iDownloadListener, aVar, z2);
                final DownloadInfo downloadInfo = downloadTaskV.getDownloadInfo();
                if (z3 && downloadInfo != null && !hp(i2) && (aVar == com.byazt.oy.a.MAIN || aVar == com.byazt.oy.a.NOTIFICATION)) {
                    if (aVar != com.byazt.oy.a.NOTIFICATION || downloadInfo.canShowNotification()) {
                        this.hp.post(new Runnable() { // from class: com.byazt.au.hp.6
                            @Override // java.lang.Runnable
                            public void run() {
                                if (iDownloadListener != null) {
                                    if (downloadInfo.getStatus() == -3) {
                                        iDownloadListener.onSuccessed(downloadInfo);
                                    } else if (downloadInfo.getStatus() == -1) {
                                        iDownloadListener.onFailed(downloadInfo, new BaseException(1000, "try add listener for failed task"));
                                    }
                                }
                            }
                        });
                    }
                }
                return;
            }
            if (com.byazt.xq.hp.hp(32768) && (downloadInfoL = this.gu.l(i2)) != null && downloadInfoL.getStatus() != -3) {
                DownloadTask downloadTask = this.f18277s.get(Integer.valueOf(i2));
                if (downloadTask == null) {
                    downloadTask = new DownloadTask(downloadInfoL);
                    this.f18277s.put(Integer.valueOf(i2), downloadTask);
                }
                downloadTask.addDownloadListener(i3, iDownloadListener, aVar, z2);
            }
        } finally {
        }
    }

    private void hp(int i2, BaseException baseException, DownloadTask downloadTask) {
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            SparseArray<IDownloadListener> downloadListeners = downloadTask.getDownloadListeners(com.byazt.oy.a.MAIN);
            SparseArray<IDownloadListener> downloadListeners2 = downloadTask.getDownloadListeners(com.byazt.oy.a.NOTIFICATION);
            boolean z2 = downloadTask.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification();
            com.byazt.xq.jx.hp(i2, downloadListeners, true, downloadInfo, baseException);
            com.byazt.xq.jx.hp(i2, downloadListeners2, z2, downloadInfo, baseException);
        }
    }

    private void hp(int i2, int i3) {
        com.byazt.nu.hp.l("AbsDownloadEngine", "removeTask id: " + i2 + " listener hasCode: " + i3);
        if (i3 == 0) {
            this.f18275l.remove(i2);
            this.eb.remove(i2);
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.eb.get(i2);
        if (sparseArray != null) {
            sparseArray.remove(i3);
            com.byazt.nu.hp.l("AbsDownloadEngine", "after downloadTaskWithListenerMap removeTask taskArray.size: " + sparseArray.size());
            if (sparseArray.size() == 0) {
                this.f18275l.remove(i2);
                this.eb.remove(i2);
                return;
            }
            return;
        }
        this.f18275l.remove(i2);
    }

    public synchronized void hp(int i2, int i3, int i4) {
        try {
            if (i4 != -7) {
                if (i4 != -6) {
                    if (i4 == -4) {
                        hp(i2, i3);
                    } else if (i4 == -3) {
                        this.jx.put(i2, this.f18275l.get(i2));
                        hp(i2, i3);
                    } else if (i4 != -1) {
                        if (i4 != 7) {
                            if (i4 == 8) {
                                DownloadTask downloadTask = this.f18275l.get(i2);
                                if (downloadTask != null && this.f18272a.get(i2) == null) {
                                    this.f18272a.put(i2, downloadTask);
                                }
                            }
                            return;
                        }
                        DownloadTask downloadTask2 = this.f18275l.get(i2);
                        if (downloadTask2 != null) {
                            if (this.f18278w.get(i2) == null) {
                                this.f18278w.put(i2, downloadTask2);
                            }
                            hp(i2, i3);
                        }
                        u(i2);
                        return;
                    }
                    u(i2);
                    return;
                }
                this.jx.put(i2, this.f18275l.get(i2));
                hp(i2, i3);
                return;
            }
            DownloadTask downloadTask3 = this.f18275l.get(i2);
            if (downloadTask3 != null) {
                if (this.f18274j.get(i2) == null) {
                    this.f18274j.put(i2, downloadTask3);
                }
                hp(i2, i3);
            }
            u(i2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.ez.s.hp
    public void hp(Message message) {
        int i2 = message.arg1;
        int i3 = message.arg2;
        com.byazt.nu.hp.l("AbsDownloadEngine", "handleMsg id: " + i2 + " listener hasCode: " + i3);
        Object obj = message.obj;
        DownloadTask downloadTask = null;
        BaseException baseException = obj instanceof Exception ? (BaseException) obj : null;
        synchronized (this) {
            try {
                if (i3 == 0) {
                    downloadTask = this.f18275l.get(i2);
                } else {
                    SparseArray<DownloadTask> sparseArray = this.eb.get(i2);
                    if (sparseArray != null) {
                        downloadTask = sparseArray.get(i3);
                    }
                }
                if (downloadTask == null) {
                    return;
                }
                hp(message.what, baseException, downloadTask);
                hp(i2, i3, message.what);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
