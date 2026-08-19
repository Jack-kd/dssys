package com.byazt.yk;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.SparseArray;
import com.byazt.fu.DownloadTask;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 90, 28})
/* loaded from: classes3.dex */
public abstract class hp implements v {

    /* renamed from: w, reason: collision with root package name */
    public static final String f27986w = "hp";

    /* renamed from: a, reason: collision with root package name */
    public WeakReference<Service> f27987a;
    public volatile boolean jx;
    public final SparseArray<List<DownloadTask>> hp = new SparseArray<>();

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f27989l = false;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f27988j = false;
    public Handler eb = new Handler(Looper.getMainLooper());

    /* renamed from: s, reason: collision with root package name */
    public Runnable f27990s = new Runnable() { // from class: com.byazt.yk.hp.1
        @Override // java.lang.Runnable
        public void run() {
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.l(hp.f27986w, "tryDownload: 2 try");
            }
            if (hp.this.f27989l) {
                return;
            }
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.l(hp.f27986w, "tryDownload: 2 error");
            }
            hp.this.startService(jx.mp(), null);
        }
    };

    @Override // com.byazt.yk.v
    public void hp(Intent intent, int i2, int i3) {
    }

    @Override // com.byazt.yk.v
    public void j() {
        this.f27989l = false;
    }

    @Override // com.byazt.yk.v
    public void jx() {
    }

    @Override // com.byazt.yk.v
    public boolean l() {
        com.byazt.nu.hp.jx(f27986w, "isServiceForeground = " + this.jx);
        return this.jx;
    }

    public void startService(Context context, ServiceConnection serviceConnection) {
    }

    public void stopService(Context context, ServiceConnection serviceConnection) {
    }

    public void w() {
        SparseArray<List<DownloadTask>> sparseArrayClone;
        synchronized (this.hp) {
            com.byazt.nu.hp.l(f27986w, "resumePendingTask pendingTasks.size:" + this.hp.size());
            sparseArrayClone = this.hp.clone();
            this.hp.clear();
        }
        com.byazt.au.hp hpVarUd = jx.ud();
        if (hpVarUd != null) {
            for (int i2 = 0; i2 < sparseArrayClone.size(); i2++) {
                List<DownloadTask> list = sparseArrayClone.get(sparseArrayClone.keyAt(i2));
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        com.byazt.nu.hp.l(f27986w, "resumePendingTask key:" + downloadTask.getDownloadId());
                        hpVarUd.hp(downloadTask);
                    }
                }
            }
        }
    }

    @Override // com.byazt.yk.v
    public void hp(k kVar) {
    }

    @Override // com.byazt.yk.v
    public void jx(DownloadTask downloadTask) {
    }

    @Override // com.byazt.yk.v
    public void startService() {
        if (this.f27989l) {
            return;
        }
        if (com.byazt.nu.hp.hp()) {
            com.byazt.nu.hp.l(f27986w, "startService");
        }
        startService(jx.mp(), null);
    }

    @Override // com.byazt.yk.v
    public void hp(WeakReference weakReference) {
        this.f27987a = weakReference;
    }

    @Override // com.byazt.yk.v
    public void l(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if (!this.f27989l) {
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.l(f27986w, "tryDownload but service is not alive");
            }
            if (com.byazt.xq.hp.hp(262144)) {
                hp(downloadTask);
                if (!this.f27988j) {
                    if (com.byazt.nu.hp.hp()) {
                        com.byazt.nu.hp.l(f27986w, "tryDownload: 1");
                    }
                    startService(jx.mp(), null);
                    this.f27988j = true;
                    return;
                }
                this.eb.removeCallbacks(this.f27990s);
                this.eb.postDelayed(this.f27990s, 10L);
                return;
            }
            hp(downloadTask);
            startService(jx.mp(), null);
            return;
        }
        String str = f27986w;
        com.byazt.nu.hp.l(str, "tryDownload when isServiceAlive");
        w();
        com.byazt.au.hp hpVarUd = jx.ud();
        if (hpVarUd != null) {
            com.byazt.nu.hp.l(str, "tryDownload current task: " + downloadTask.getDownloadId());
            hpVarUd.hp(downloadTask);
        }
    }

    @Override // com.byazt.yk.v
    public boolean hp() {
        return this.f27989l;
    }

    @Override // com.byazt.yk.v
    public IBinder hp(Intent intent) {
        com.byazt.nu.hp.l(f27986w, "onBind Abs");
        return new Binder();
    }

    @Override // com.byazt.yk.v
    public void hp(int i2, Notification notification) {
        WeakReference<Service> weakReference = this.f27987a;
        if (weakReference != null && weakReference.get() != null) {
            com.byazt.nu.hp.jx(f27986w, "startForeground  id = " + i2 + ", service = " + this.f27987a.get() + ",  isServiceAlive = " + this.f27989l);
            try {
                this.f27987a.get().startForeground(i2, notification);
                this.jx = true;
                return;
            } catch (Exception unused) {
                return;
            }
        }
        com.byazt.nu.hp.j(f27986w, "startForeground: downloadService is null, do nothing!");
    }

    @Override // com.byazt.yk.v
    public void hp(boolean z2) {
        WeakReference<Service> weakReference = this.f27987a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        com.byazt.nu.hp.jx(f27986w, "stopForeground  service = " + this.f27987a.get() + ",  isServiceAlive = " + this.f27989l);
        try {
            this.jx = false;
            this.f27987a.get().stopForeground(z2);
        } catch (Exception unused) {
        }
    }

    public void hp(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        int downloadId = downloadTask.getDownloadId();
        synchronized (this.hp) {
            try {
                String str = f27986w;
                com.byazt.nu.hp.l(str, "pendDownloadTask pendingTasks.size:" + this.hp.size() + " downloadId:" + downloadId);
                List<DownloadTask> arrayList = this.hp.get(downloadId);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.hp.put(downloadId, arrayList);
                }
                com.byazt.nu.hp.l(str, "before pendDownloadTask taskArray.size:" + arrayList.size());
                arrayList.add(downloadTask);
                com.byazt.nu.hp.l(str, "after pendDownloadTask pendingTasks.size:" + this.hp.size());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.yk.v
    public void hp(int i2) {
        com.byazt.nu.hp.hp(i2);
    }
}
