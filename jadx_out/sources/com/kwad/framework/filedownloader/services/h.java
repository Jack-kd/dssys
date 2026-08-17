package com.kwad.framework.filedownloader.services;

import android.util.SparseArray;
import com.kwad.framework.filedownloader.download.DownloadLaunchRunnable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes4.dex */
final class h {
    private ThreadPoolExecutor aDi;
    private int aDk;
    private SparseArray<DownloadLaunchRunnable> aDh = new SparseArray<>();
    private final String aDj = "Network";
    private int aDl = 0;

    public h(int i2) {
        this.aDi = com.kwad.framework.filedownloader.f.b.w(i2, "Network");
        this.aDk = i2;
    }

    private synchronized void Dr() {
        try {
            SparseArray<DownloadLaunchRunnable> sparseArray = new SparseArray<>();
            int size = this.aDh.size();
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.aDh.keyAt(i2);
                DownloadLaunchRunnable downloadLaunchRunnable = this.aDh.get(iKeyAt);
                if (downloadLaunchRunnable.isAlive()) {
                    sparseArray.put(iKeyAt, downloadLaunchRunnable);
                }
            }
            this.aDh = sparseArray;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized int Ds() {
        Dr();
        return this.aDh.size();
    }

    public final synchronized List<Integer> Dt() {
        ArrayList arrayList;
        Dr();
        arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.aDh.size(); i2++) {
            SparseArray<DownloadLaunchRunnable> sparseArray = this.aDh;
            arrayList.add(Integer.valueOf(sparseArray.get(sparseArray.keyAt(i2)).getId()));
        }
        return arrayList;
    }

    public final void a(DownloadLaunchRunnable downloadLaunchRunnable) {
        downloadLaunchRunnable.Ck();
        synchronized (this) {
            this.aDh.put(downloadLaunchRunnable.getId(), downloadLaunchRunnable);
        }
        this.aDi.execute(downloadLaunchRunnable);
        int i2 = this.aDl;
        if (i2 < 600) {
            this.aDl = i2 + 1;
        } else {
            Dr();
            this.aDl = 0;
        }
    }

    public final synchronized boolean cP(int i2) {
        if (Ds() > 0) {
            com.kwad.framework.filedownloader.f.d.d(this, "Can't change the max network thread count, because the  network thread pool isn't in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly.", new Object[0]);
            return false;
        }
        int iDd = com.kwad.framework.filedownloader.f.e.dd(i2);
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "change the max network thread count, from %d to %d", Integer.valueOf(this.aDk), Integer.valueOf(iDd));
        }
        List<Runnable> listShutdownNow = this.aDi.shutdownNow();
        this.aDi = com.kwad.framework.filedownloader.f.b.w(iDd, "Network");
        if (listShutdownNow.size() > 0) {
            com.kwad.framework.filedownloader.f.d.d(this, "recreate the network thread pool and discard %d tasks", Integer.valueOf(listShutdownNow.size()));
        }
        this.aDk = iDd;
        return true;
    }

    public final void cancel(int i2) {
        Dr();
        synchronized (this) {
            try {
                DownloadLaunchRunnable downloadLaunchRunnable = this.aDh.get(i2);
                if (downloadLaunchRunnable != null) {
                    downloadLaunchRunnable.pause();
                    boolean zRemove = this.aDi.remove(downloadLaunchRunnable);
                    if (com.kwad.framework.filedownloader.f.d.aDr) {
                        com.kwad.framework.filedownloader.f.d.c(this, "successful cancel %d %B", Integer.valueOf(i2), Boolean.valueOf(zRemove));
                    }
                }
                this.aDh.remove(i2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean dc(int i2) {
        DownloadLaunchRunnable downloadLaunchRunnable = this.aDh.get(i2);
        return downloadLaunchRunnable != null && downloadLaunchRunnable.isAlive();
    }

    public final int p(String str, int i2) {
        if (str == null) {
            return 0;
        }
        int size = this.aDh.size();
        for (int i3 = 0; i3 < size; i3++) {
            DownloadLaunchRunnable downloadLaunchRunnableValueAt = this.aDh.valueAt(i3);
            if (downloadLaunchRunnableValueAt != null && downloadLaunchRunnableValueAt.isAlive() && downloadLaunchRunnableValueAt.getId() != i2 && str.equals(downloadLaunchRunnableValueAt.Cp())) {
                return downloadLaunchRunnableValueAt.getId();
            }
        }
        return 0;
    }
}
