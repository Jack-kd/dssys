package com.byazt.li;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.byazt.fu.DownloadInfo;
import com.byazt.yk.Downloader;
import com.byazt.yk.e;
import com.byazt.yk.jx;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_URL_CODE, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l jx;

    /* renamed from: w, reason: collision with root package name */
    public static final Object f22616w = new Object();
    public final long hp = 1000;

    /* renamed from: l, reason: collision with root package name */
    public final Map<Integer, Long> f22619l = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final Set<String> f22618j = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray<hp> f22617a = new SparseArray<>();

    private l() {
    }

    public static l hp() {
        if (jx == null) {
            synchronized (l.class) {
                try {
                    if (jx == null) {
                        jx = new l();
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public static boolean jx(DownloadInfo downloadInfo) {
        return downloadInfo.isDownloadOverStatus() && l(downloadInfo.getNotificationVisibility());
    }

    public static boolean l(int i2) {
        return i2 == 1 || i2 == 3;
    }

    public void a(int i2) {
        j(i2);
        if (i2 != 0) {
            hp().jx(i2);
        }
    }

    public hp j(int i2) {
        hp hpVar;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.f22617a) {
            try {
                hpVar = this.f22617a.get(i2);
                if (hpVar != null) {
                    this.f22617a.remove(i2);
                    com.byazt.nu.hp.hp("removeNotificationId ".concat(String.valueOf(i2)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hpVar;
    }

    public hp w(int i2) {
        hp hpVar;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.f22617a) {
            hpVar = this.f22617a.get(i2);
        }
        return hpVar;
    }

    public void jx(int i2) {
        Context contextMp = jx.mp();
        if (contextMp == null || i2 == 0) {
            return;
        }
        Intent intent = new Intent(contextMp, (Class<?>) DownloadNotificationService.class);
        try {
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL");
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i2);
            if (com.byazt.jb.hp.jx().l("enable_target_34") > 0) {
                com.byazt.nb.hp.hp().hp(intent);
            } else {
                contextMp.startService(intent);
            }
        } catch (Throwable unused) {
            if (com.byazt.jb.hp.jx().l("enable_target_34") > 0) {
                com.byazt.nb.hp.hp().hp(intent);
            }
        }
    }

    public void l(DownloadInfo downloadInfo) {
        if (jx(downloadInfo)) {
            a(downloadInfo.getId());
        }
    }

    public SparseArray<hp> l() {
        SparseArray<hp> sparseArray;
        synchronized (this.f22617a) {
            sparseArray = this.f22617a;
        }
        return sparseArray;
    }

    public void hp(int i2) {
        DownloadInfo downloadInfo = Downloader.getInstance(jx.mp()).getDownloadInfo(i2);
        if (downloadInfo == null) {
            return;
        }
        hp(downloadInfo);
        l(downloadInfo);
    }

    public void hp(DownloadInfo downloadInfo) {
        e eVarDi = jx.di();
        if (eVarDi != null && downloadInfo.isDownloadOverStatus()) {
            downloadInfo.setNotificationVisibility(3);
            try {
                eVarDi.hp(downloadInfo);
            } catch (SQLiteException unused) {
            }
        }
    }

    public void hp(int i2, int i3, Notification notification) {
        Context contextMp = jx.mp();
        if (contextMp == null || i2 == 0 || notification == null) {
            return;
        }
        if (i3 == 4) {
            synchronized (this.f22619l) {
                try {
                    Long l2 = this.f22619l.get(Integer.valueOf(i2));
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (l2 != null && Math.abs(jCurrentTimeMillis - l2.longValue()) < 1000) {
                        return;
                    } else {
                        this.f22619l.put(Integer.valueOf(i2), Long.valueOf(jCurrentTimeMillis));
                    }
                } finally {
                }
            }
        }
        Intent intent = new Intent(contextMp, (Class<?>) DownloadNotificationService.class);
        try {
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY");
            intent.putExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", i3);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i2);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA", notification);
            if (com.byazt.jb.hp.jx().l("enable_target_34") > 0) {
                com.byazt.nb.hp.hp().hp(intent);
            } else {
                contextMp.startService(intent);
            }
        } catch (Throwable unused) {
            if (com.byazt.jb.hp.jx().l("enable_target_34") > 0) {
                com.byazt.nb.hp.hp().hp(intent);
            }
        }
    }

    public void hp(hp hpVar) {
        if (hpVar == null) {
            return;
        }
        synchronized (this.f22617a) {
            this.f22617a.put(hpVar.hp(), hpVar);
        }
    }
}
