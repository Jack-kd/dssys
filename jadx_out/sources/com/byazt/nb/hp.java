package com.byazt.nb;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ez.eb;
import com.byazt.fu.DownloadInfo;
import com.byazt.oy.w;
import com.byazt.xq.a;
import com.byazt.yk.Downloader;
import com.byazt.yk.jx;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VALUE_CLICK_AREA_SAAS_NORMAL, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp eb;
    public volatile long hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile eb f23525j;

    /* renamed from: l, reason: collision with root package name */
    public volatile long f23526l;
    public long jx = 1000;

    /* renamed from: w, reason: collision with root package name */
    public final SparseArray<Notification> f23527w = new SparseArray<>(2);

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f23524a = new AtomicBoolean(false);

    public void l() {
        if (this.f23524a.compareAndSet(false, true)) {
            this.f23525j = new eb("DownloaderNotifyThread");
            this.f23525j.hp();
            long jHp = com.byazt.jb.hp.jx().hp("notification_time_window", 1000L);
            this.jx = jHp;
            if (jHp < 0 || jHp > 1200) {
                this.jx = 1000L;
            }
        }
    }

    public static hp hp() {
        if (eb == null) {
            synchronized (hp.class) {
                try {
                    if (eb == null) {
                        eb = new hp();
                    }
                } finally {
                }
            }
        }
        return eb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Intent intent) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        DownloadInfo downloadInfo;
        Context contextMp = jx.mp();
        if (contextMp == null) {
            return;
        }
        String action = intent.getAction();
        NotificationManager notificationManager = (NotificationManager) contextMp.getSystemService("notification");
        int intExtra = intent.getIntExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", 0);
        if ("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY".equals(action)) {
            Notification notification = (Notification) intent.getParcelableExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA");
            int intExtra2 = intent.getIntExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", 0);
            if (intExtra == 0 || notification == null || notificationManager == null) {
                return;
            }
            if (intExtra2 != 4) {
                if (intExtra2 != -2 && intExtra2 != -3) {
                    hp(notificationManager, intExtra, notification);
                    return;
                } else {
                    hp(notificationManager, intExtra, notification);
                    return;
                }
            }
            if (Downloader.getInstance(jx.mp()).isDownloading(intExtra) && (downloadInfo = Downloader.getInstance(jx.mp()).getDownloadInfo(intExtra)) != null && downloadInfo.canNotifyProgress() && System.currentTimeMillis() - this.f23526l > this.jx) {
                l(notificationManager, intExtra, notification);
                downloadInfo.setLastNotifyProgressTime();
                return;
            }
            return;
        }
        if ("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL".equals(action)) {
            if (intExtra != 0) {
                l(notificationManager, intExtra);
                return;
            }
            return;
        }
        try {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                if (a.hp(contextMp, g.f31160b) && (connectivityManager = (ConnectivityManager) contextMp.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                    ArrayList arrayList = new ArrayList();
                    if (!TextUtils.isEmpty(w.hp)) {
                        arrayList.add(w.hp);
                    }
                    arrayList.add("mime_type_plg");
                    Downloader.getInstance(contextMp).restartAllFailedDownloadTasks(arrayList);
                    Downloader.getInstance(contextMp).restartAllPauseReserveOnWifiDownloadTasks(arrayList);
                    return;
                }
                return;
            }
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(action) || "android.intent.action.MEDIA_REMOVED".equals(action) || "android.intent.action.MEDIA_BAD_REMOVAL".equals(action) || "android.intent.action.MEDIA_EJECT".equals(action)) {
                Downloader.getInstance(jx.mp()).pauseAll();
            }
        } catch (Exception unused) {
        }
    }

    public void hp(final Intent intent) {
        if (intent == null || TextUtils.isEmpty(intent.getAction())) {
            return;
        }
        l();
        if (this.f23525j == null) {
            return;
        }
        this.f23525j.hp(new Runnable() { // from class: com.byazt.nb.hp.1
            @Override // java.lang.Runnable
            public void run() {
                hp.this.l(intent);
            }
        });
    }

    private void hp(final NotificationManager notificationManager, final int i2, Notification notification) {
        synchronized (this.f23527w) {
            try {
                int iIndexOfKey = this.f23527w.indexOfKey(i2);
                if (iIndexOfKey >= 0 && iIndexOfKey < this.f23527w.size()) {
                    this.f23527w.setValueAt(iIndexOfKey, notification);
                    return;
                }
                long jCurrentTimeMillis = this.jx - (System.currentTimeMillis() - this.hp);
                if (jCurrentTimeMillis <= 0) {
                    jCurrentTimeMillis = 0;
                }
                if (jCurrentTimeMillis > 20000) {
                    jCurrentTimeMillis = 20000;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() + jCurrentTimeMillis;
                this.f23526l = jCurrentTimeMillis2;
                this.hp = jCurrentTimeMillis2;
                if (jCurrentTimeMillis <= 0) {
                    l(notificationManager, i2, notification);
                } else if (this.f23525j != null) {
                    synchronized (this.f23527w) {
                        this.f23527w.put(i2, notification);
                    }
                    this.f23525j.hp(new Runnable() { // from class: com.byazt.nb.hp.2
                        @Override // java.lang.Runnable
                        public void run() {
                            hp.this.hp(notificationManager, i2);
                        }
                    }, jCurrentTimeMillis);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(NotificationManager notificationManager, int i2) {
        Notification notification;
        synchronized (this.f23527w) {
            notification = this.f23527w.get(i2);
            this.f23527w.remove(i2);
        }
        if (notification != null) {
            l(notificationManager, i2, notification);
        }
    }

    private void l(NotificationManager notificationManager, int i2, Notification notification) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.hp < jCurrentTimeMillis) {
                this.hp = jCurrentTimeMillis;
            }
            notificationManager.notify(i2, notification);
        } catch (Throwable unused) {
        }
    }

    private void l(NotificationManager notificationManager, int i2) {
        try {
            notificationManager.cancel(i2);
        } catch (Throwable unused) {
        }
    }
}
