package com.byazt.li;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ez.eb;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.oy.w;
import com.byazt.xq.a;
import com.byazt.yk.Downloader;
import com.byazt.yk.j;
import com.byazt.yk.jx;
import com.byazt.yk.zy;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_URL_CODE, 1103})
/* loaded from: classes3.dex */
public class DownloadNotificationService extends Service {

    /* renamed from: a, reason: collision with root package name */
    public static volatile long f22599a = 0;
    public static volatile long eb = 0;
    public static final String hp = "DownloadNotificationService";

    /* renamed from: j, reason: collision with root package name */
    public static boolean f22600j = true;
    public static int jx = -1;

    /* renamed from: l, reason: collision with root package name */
    public static int f22601l = -1;

    /* renamed from: q, reason: collision with root package name */
    public static long f22602q = 900;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f22603s = false;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22604w = false;

    /* renamed from: e, reason: collision with root package name */
    public eb f22605e;
    public final SparseArray<Notification> gu = new SparseArray<>(2);

    private void j() {
        if (this.f22605e == null) {
            eb ebVar = new eb("DownloaderNotifyThread");
            this.f22605e = ebVar;
            ebVar.hp();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        j();
        jx.hp(this);
        com.byazt.jb.hp hpVarJx = com.byazt.jb.hp.jx();
        int iHp = hpVarJx.hp("download_service_foreground", 0);
        if ((iHp == 1 || iHp == 3) && f22601l == -1) {
            f22601l = 0;
        }
        if ((iHp == 2 || iHp == 3) && jx == -1) {
            jx = 0;
        }
        f22604w = hpVarJx.l("non_going_notification_foreground", false);
        f22603s = hpVarJx.l("notify_too_fast", false);
        long jHp = hpVarJx.hp("notification_time_window", 900L);
        f22602q = jHp;
        if (jHp < 0 || jHp > 1200) {
            f22602q = 900L;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        eb ebVar = this.f22605e;
        if (ebVar != null) {
            try {
                ebVar.l();
            } catch (Throwable unused) {
            }
            this.f22605e = null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        hp(intent);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(NotificationManager notificationManager, int i2, Notification notification) {
        if (hp(i2, notification)) {
            try {
                boolean z2 = true;
                if (j.hp().hp(i2) != 1 || a.jx()) {
                    z2 = false;
                }
                if ((!z2 && f22601l == 0) || (z2 && jx == 0)) {
                    zy zyVarJx = j.hp().jx(i2);
                    if (zyVarJx.eb() && !zyVarJx.l()) {
                        com.byazt.nu.hp.jx(hp, "doNotify, startForeground, ======== id = " + i2 + ", isIndependentProcess = " + z2);
                        if (z2) {
                            jx = i2;
                        } else {
                            f22601l = i2;
                        }
                        zyVarJx.hp(i2, notification);
                    } else {
                        com.byazt.nu.hp.jx(hp, "doNotify: canStartForeground = true, but proxy can not startForeground, isIndependentProcess = ".concat(String.valueOf(z2)));
                    }
                }
            } catch (Throwable unused) {
            }
        } else if ((f22601l == i2 || jx == i2) && f22604w && (notification.flags & 2) == 0) {
            l(notificationManager, i2);
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (f22599a < jCurrentTimeMillis) {
                f22599a = jCurrentTimeMillis;
            }
            notificationManager.notify(i2, notification);
        } catch (Throwable unused2) {
        }
    }

    private void hp(final Intent intent) {
        eb ebVar;
        if (intent == null) {
            return;
        }
        final String action = intent.getAction();
        if (TextUtils.isEmpty(action) || (ebVar = this.f22605e) == null) {
            return;
        }
        ebVar.hp(new Runnable() { // from class: com.byazt.li.DownloadNotificationService.1
            @Override // java.lang.Runnable
            public void run() {
                ConnectivityManager connectivityManager;
                NetworkInfo activeNetworkInfo;
                final NotificationManager notificationManager = (NotificationManager) DownloadNotificationService.this.getSystemService("notification");
                final int intExtra = intent.getIntExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", 0);
                if (!action.equals("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY")) {
                    if (action.equals("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL")) {
                        if (intExtra != 0) {
                            DownloadNotificationService.this.l(notificationManager, intExtra);
                            return;
                        }
                        return;
                    }
                    try {
                        if (!action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                            if (action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL") || action.equals("android.intent.action.MEDIA_EJECT")) {
                                Downloader.getInstance(DownloadNotificationService.this).pauseAll();
                                return;
                            }
                            return;
                        }
                        if (a.hp((Context) DownloadNotificationService.this, g.f31160b) && (connectivityManager = (ConnectivityManager) DownloadNotificationService.this.getApplicationContext().getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                            ArrayList arrayList = new ArrayList();
                            if (!TextUtils.isEmpty(w.hp)) {
                                arrayList.add(w.hp);
                            }
                            arrayList.add("mime_type_plg");
                            Context applicationContext = DownloadNotificationService.this.getApplicationContext();
                            if (applicationContext != null) {
                                Downloader.getInstance(applicationContext).restartAllFailedDownloadTasks(arrayList);
                                Downloader.getInstance(applicationContext).restartAllPauseReserveOnWifiDownloadTasks(arrayList);
                                return;
                            }
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                final Notification notification = (Notification) intent.getParcelableExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA");
                int intExtra2 = intent.getIntExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", 0);
                if (intExtra == 0 || notification == null || notificationManager == null) {
                    return;
                }
                if (intExtra2 != 4) {
                    if (intExtra2 != -2 && intExtra2 != -3) {
                        if (DownloadNotificationService.f22603s) {
                            DownloadNotificationService.this.hp(notificationManager, intExtra, notification);
                            return;
                        } else {
                            DownloadNotificationService.this.l(notificationManager, intExtra, notification);
                            return;
                        }
                    }
                    if (DownloadNotificationService.f22603s) {
                        DownloadNotificationService.this.hp(notificationManager, intExtra, notification);
                        return;
                    } else {
                        if (DownloadNotificationService.this.f22605e != null) {
                            DownloadNotificationService.this.f22605e.hp(new Runnable() { // from class: com.byazt.li.DownloadNotificationService.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    DownloadNotificationService.this.l(notificationManager, intExtra, notification);
                                }
                            }, intExtra2 == -2 ? 50L : 200L);
                            return;
                        }
                        return;
                    }
                }
                if (Downloader.getInstance(jx.mp()).isDownloading(intExtra)) {
                    DownloadInfo downloadInfo = Downloader.getInstance(jx.mp()).getDownloadInfo(intExtra);
                    if (!DownloadNotificationService.f22603s) {
                        if (downloadInfo == null || !downloadInfo.canNotifyProgress()) {
                            return;
                        }
                        DownloadNotificationService.this.l(notificationManager, intExtra, notification);
                        downloadInfo.setLastNotifyProgressTime();
                        return;
                    }
                    if (downloadInfo == null || !downloadInfo.canNotifyProgress() || System.currentTimeMillis() - DownloadNotificationService.eb <= DownloadNotificationService.f22602q) {
                        return;
                    }
                    DownloadNotificationService.this.l(notificationManager, intExtra, notification);
                    downloadInfo.setLastNotifyProgressTime();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final NotificationManager notificationManager, final int i2, Notification notification) {
        synchronized (this.gu) {
            try {
                int iIndexOfKey = this.gu.indexOfKey(i2);
                if (iIndexOfKey >= 0 && iIndexOfKey < this.gu.size()) {
                    this.gu.setValueAt(iIndexOfKey, notification);
                    return;
                }
                long jCurrentTimeMillis = f22602q - (System.currentTimeMillis() - f22599a);
                if (jCurrentTimeMillis <= 0) {
                    jCurrentTimeMillis = 0;
                }
                if (jCurrentTimeMillis > 20000) {
                    jCurrentTimeMillis = 20000;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() + jCurrentTimeMillis;
                eb = jCurrentTimeMillis2;
                f22599a = jCurrentTimeMillis2;
                if (jCurrentTimeMillis <= 0) {
                    l(notificationManager, i2, notification);
                } else if (this.f22605e != null) {
                    synchronized (this.gu) {
                        this.gu.put(i2, notification);
                    }
                    this.f22605e.hp(new Runnable() { // from class: com.byazt.li.DownloadNotificationService.2
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloadNotificationService.this.hp(notificationManager, i2);
                        }
                    }, jCurrentTimeMillis);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(NotificationManager notificationManager, int i2) {
        boolean z2;
        hp hpVarValueAt;
        int iHp;
        int i3 = f22601l;
        if (i3 != i2 && jx != i2) {
            try {
                notificationManager.cancel(i2);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        boolean z3 = true;
        if (i3 == i2) {
            f22601l = 0;
            z2 = false;
        } else {
            jx = 0;
            z2 = true;
        }
        try {
            zy zyVarJx = j.hp().jx(i2);
            if (!zyVarJx.l()) {
                f22600j = false;
                com.byazt.nu.hp.j(hp, "try to stopForeground when is not Foreground, id = " + i2 + ", isIndependentProcess = " + z2);
            }
            com.byazt.nu.hp.jx(hp, "doCancel, ========== stopForeground id = " + i2 + ", isIndependentProcess = " + z2);
            zyVarJx.hp(false, true);
        } catch (Throwable unused2) {
        }
        try {
            notificationManager.cancel(i2);
        } catch (Throwable unused3) {
        }
        if (f22600j) {
            try {
                SparseArray<hp> sparseArrayL = l.hp().l();
                if (sparseArrayL != null) {
                    for (int size = sparseArrayL.size() - 1; size >= 0; size--) {
                        hpVarValueAt = sparseArrayL.valueAt(size);
                        if (hpVarValueAt != null && (iHp = hpVarValueAt.hp()) != i2 && iHp != f22601l && iHp != jx && hpVarValueAt.s()) {
                            if ((j.hp().hp(hpVarValueAt.hp()) == 1 && !a.jx()) == z2) {
                                break;
                            }
                        }
                    }
                    hpVarValueAt = null;
                } else {
                    hpVarValueAt = null;
                }
                if (hpVarValueAt != null) {
                    int iHp2 = hpVarValueAt.hp();
                    try {
                        notificationManager.cancel(iHp2);
                    } catch (Throwable unused4) {
                    }
                    if (Downloader.getInstance(this).getStatus(iHp2) != 1) {
                        z3 = false;
                    }
                    com.byazt.nu.hp.jx(hp, "doCancel, updateNotification id = ".concat(String.valueOf(iHp2)));
                    hpVarValueAt.hp((BaseException) null, z3);
                }
            } catch (Throwable unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(NotificationManager notificationManager, int i2) {
        Notification notification;
        synchronized (this.gu) {
            notification = this.gu.get(i2);
            this.gu.remove(i2);
        }
        if (notification != null) {
            l(notificationManager, i2, notification);
        }
    }

    private boolean hp(int i2, Notification notification) {
        int i3;
        int i4;
        if (!f22600j || (i3 = f22601l) == i2 || (i4 = jx) == i2) {
            return false;
        }
        if (i3 != 0 && i4 != 0) {
            return false;
        }
        if (f22604w && (notification.flags & 2) == 0) {
            return false;
        }
        return Build.VERSION.SDK_INT < 26 || !TextUtils.isEmpty(notification.getChannelId());
    }
}
