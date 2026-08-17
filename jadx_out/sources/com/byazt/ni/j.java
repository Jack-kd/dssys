package com.byazt.ni;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.au.vv;
import com.byazt.f.gu;
import com.byazt.f.q;
import com.byazt.f.s;
import com.byazt.f.v;
import com.byazt.fn.dy;
import com.byazt.fn.hq;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.kc.AbsServerManager;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f23590a = false;
    public static boolean eb = false;
    public static final String hp = "j";

    /* renamed from: l, reason: collision with root package name */
    public static volatile j f23591l = null;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f23592s = false;

    /* renamed from: e, reason: collision with root package name */
    public int f23593e;
    public hq ec;

    /* renamed from: j, reason: collision with root package name */
    public String f23594j;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.f.w f23595k;

    /* renamed from: n, reason: collision with root package name */
    public v f23596n;
    public com.byazt.f.jx ns;

    /* renamed from: q, reason: collision with root package name */
    public Future f23597q;
    public dy sz;

    /* renamed from: u, reason: collision with root package name */
    public s f23598u;

    /* renamed from: v, reason: collision with root package name */
    public q f23599v;
    public gu vv;
    public com.byazt.f.eb xs;
    public com.byazt.f.j zy;

    /* renamed from: w, reason: collision with root package name */
    public DownloadReceiver f23600w = new DownloadReceiver();
    public boolean gu = false;
    public boolean jl = false;

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ec() {
        synchronized (this.f23600w) {
            if (eb) {
                return;
            }
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
                intentFilter2.addDataScheme(n.f36463z);
                com.byazt.yk.jx.mp().registerReceiver(this.f23600w, intentFilter);
                com.byazt.yk.jx.mp().registerReceiver(this.f23600w, intentFilter2);
                eb = true;
            } catch (Exception unused) {
            }
            com.byazt.nu.hp.l(hp, "registerDownloadReceiver mIsRegistered:" + eb);
        }
    }

    public static j gu() {
        if (f23591l == null) {
            synchronized (j.class) {
                try {
                    if (f23591l == null) {
                        f23591l = new j();
                    }
                } finally {
                }
            }
        }
        return f23591l;
    }

    private void sz() {
        vv.hp(new vv.l() { // from class: com.byazt.ni.j.3
            @Override // com.byazt.au.vv.l
            public void hp(DownloadInfo downloadInfo, long j2, boolean z2, int i2) {
                RetryJobSchedulerService.hp(downloadInfo, j2, z2, i2);
            }
        });
    }

    public com.byazt.f.eb a() {
        return this.xs;
    }

    public String e() {
        return this.jx;
    }

    public boolean eb() {
        return com.byazt.jb.hp.l().optInt("package_flag_config", 1) == 1;
    }

    public q j() {
        return this.f23599v;
    }

    public void jl() {
        if (com.byazt.jb.hp.jx().hp("enable_app_install_receiver", 1) <= 0) {
            com.byazt.nu.hp.l(hp, "disable app install receiver");
            return;
        }
        synchronized (this.f23600w) {
            try {
                if (f23592s) {
                    return;
                }
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                    intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
                    intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
                    com.byazt.yk.jx.mp().registerReceiver(this.f23600w, intentFilter);
                    f23592s = true;
                    v vVar = this.f23596n;
                    if (vVar != null) {
                        vVar.hp();
                    }
                } catch (Throwable unused) {
                }
                com.byazt.nu.hp.l(hp, "tryRegisterTempAppInstallDownloadReceiver mIsAppInstallRegistered:" + eb);
            } finally {
                l(0);
            }
        }
    }

    public com.byazt.f.w jx() {
        return this.f23595k;
    }

    public s k() {
        return this.f23598u;
    }

    public File q() {
        return Downloader.getInstance(com.byazt.yk.jx.mp()).getGlobalSaveDir();
    }

    public gu s() {
        return this.vv;
    }

    public hq u() {
        return this.ec;
    }

    public com.byazt.yk.vv v() {
        return Downloader.getInstance(com.byazt.yk.jx.mp()).getReserveWifiStatusListener();
    }

    public String w() {
        return this.f23594j;
    }

    public dy xs() {
        return this.sz;
    }

    public void zy() {
        v vVar;
        synchronized (this.f23600w) {
            try {
                if (eb) {
                    com.byazt.yk.jx.mp().unregisterReceiver(this.f23600w);
                    if (f23592s && (vVar = this.f23596n) != null) {
                        vVar.l();
                    }
                }
            } catch (Exception unused) {
            }
            eb = false;
            f23592s = false;
        }
        com.byazt.nu.hp.l(hp, "registerDownloadReceiver unRegisterDownloadReceiver");
    }

    private void jx(Context context) {
        if (context == null || f23590a) {
            return;
        }
        com.byazt.oy.w.hp(AdBaseConstants.MIME_APK);
        com.byazt.yk.jx.hp(context);
        com.byazt.yk.jx.hp(new com.byazt.dx.l());
        if (this.jl) {
            com.byazt.yk.jx.hp(new Runnable() { // from class: com.byazt.ni.j.1
                @Override // java.lang.Runnable
                public void run() {
                    j.this.ec();
                }
            }, 5L, TimeUnit.SECONDS);
        } else {
            ec();
        }
        sz();
        f23590a = true;
    }

    public com.byazt.f.j l() {
        return this.zy;
    }

    public com.byazt.f.jx hp() {
        return this.ns;
    }

    public void l(String str) {
        Downloader.getInstance(com.byazt.yk.jx.mp()).setDefaultSavePath(str);
    }

    private void l(int i2) {
        this.f23593e = com.byazt.jb.hp.jx().hp("app_install_keep_receiver_time_s", 60);
        com.byazt.nu.hp.l(hp, "tryUnRegisterTempAppInstallDownloadReceiver mAppInstallReceiverKeepTime:" + this.f23593e);
        if (this.f23593e <= 0) {
            return;
        }
        if (i2 > 0) {
            this.f23593e = i2;
        }
        Future future = this.f23597q;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable unused) {
            }
        }
        this.f23597q = com.byazt.yk.jx.hp(new Runnable() { // from class: com.byazt.ni.j.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nu.hp.l(j.hp, "registerDownloadReceiver tryUnRegisterTempAppInstallDownloadReceiver run inner");
                j.this.zy();
                j.this.ec();
            }
        }, this.f23593e, TimeUnit.SECONDS);
    }

    public void hp(com.byazt.f.jx jxVar) {
        this.ns = jxVar;
    }

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f23594j = str;
    }

    public void hp(com.byazt.f.eb ebVar) {
        this.xs = ebVar;
    }

    public void hp(gu guVar) {
        this.vv = guVar;
    }

    @Deprecated
    public void hp(Context context, String str, com.byazt.f.j jVar, com.byazt.f.w wVar, q qVar) {
        if (jVar != null) {
            this.zy = jVar;
        }
        if (wVar != null) {
            this.f23595k = wVar;
        }
        if (qVar != null) {
            this.f23599v = qVar;
        }
        jx(context);
    }

    private DownloadInfo l(Context context, String str) {
        List<DownloadInfo> downloadInfoList = Downloader.getInstance(context).getDownloadInfoList(str);
        if (downloadInfoList == null) {
            return null;
        }
        for (DownloadInfo downloadInfo : downloadInfoList) {
            if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                return downloadInfo;
            }
        }
        return null;
    }

    public static boolean hp(Context context, int i2) {
        return jx.hp(context, i2, true) == 1;
    }

    public void hp(Context context, int i2, int i3) {
        try {
            switch (i3) {
                case -4:
                case -1:
                    Downloader.getInstance(context).restart(i2);
                    break;
                case -3:
                    jx.hp(context, i2, true);
                    break;
                case -2:
                    Downloader.getInstance(context).resume(i2);
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 7:
                case 8:
                    Downloader.getInstance(context).pause(i2);
                    break;
            }
        } catch (Exception unused) {
        }
    }

    public List<DownloadInfo> l(Context context) {
        return Downloader.getInstance(context).getDownloadingDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x034b A[Catch: all -> 0x016d, TryCatch #4 {all -> 0x016d, blocks: (B:76:0x0163, B:79:0x0170, B:91:0x01a7, B:93:0x01ad, B:99:0x01ba, B:101:0x01c6, B:102:0x01d1, B:104:0x034b, B:106:0x0355, B:109:0x0360, B:111:0x0366, B:113:0x036c, B:115:0x0376, B:117:0x037c, B:118:0x038e), top: B:133:0x0163 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0144 A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:7:0x0010, B:10:0x0023, B:14:0x002d, B:16:0x003b, B:19:0x0049, B:21:0x0051, B:22:0x005a, B:26:0x0064, B:28:0x0070, B:31:0x007c, B:33:0x008b, B:34:0x008f, B:36:0x0096, B:39:0x00a0, B:42:0x00ab, B:44:0x00bf, B:47:0x00d9, B:50:0x00f2, B:52:0x00f8, B:55:0x0107, B:57:0x010d, B:59:0x0113, B:61:0x0119, B:63:0x011f, B:65:0x012a, B:66:0x013e, B:68:0x0144, B:69:0x0149, B:71:0x0153, B:72:0x0157, B:74:0x015d), top: B:127:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0153 A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:7:0x0010, B:10:0x0023, B:14:0x002d, B:16:0x003b, B:19:0x0049, B:21:0x0051, B:22:0x005a, B:26:0x0064, B:28:0x0070, B:31:0x007c, B:33:0x008b, B:34:0x008f, B:36:0x0096, B:39:0x00a0, B:42:0x00ab, B:44:0x00bf, B:47:0x00d9, B:50:0x00f2, B:52:0x00f8, B:55:0x0107, B:57:0x010d, B:59:0x0113, B:61:0x0119, B:63:0x011f, B:65:0x012a, B:66:0x013e, B:68:0x0144, B:69:0x0149, B:71:0x0153, B:72:0x0157, B:74:0x015d), top: B:127:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x017c A[Catch: all -> 0x0184, TryCatch #0 {all -> 0x0184, blocks: (B:80:0x0176, B:82:0x017c, B:86:0x0189), top: B:126:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0189 A[Catch: all -> 0x0184, TRY_LEAVE, TryCatch #0 {all -> 0x0184, blocks: (B:80:0x0176, B:82:0x017c, B:86:0x0189), top: B:126:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ad A[Catch: all -> 0x016d, TryCatch #4 {all -> 0x016d, blocks: (B:76:0x0163, B:79:0x0170, B:91:0x01a7, B:93:0x01ad, B:99:0x01ba, B:101:0x01c6, B:102:0x01d1, B:104:0x034b, B:106:0x0355, B:109:0x0360, B:111:0x0366, B:113:0x036c, B:115:0x0376, B:117:0x037c, B:118:0x038e), top: B:133:0x0163 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ba A[Catch: all -> 0x016d, TryCatch #4 {all -> 0x016d, blocks: (B:76:0x0163, B:79:0x0170, B:91:0x01a7, B:93:0x01ad, B:99:0x01ba, B:101:0x01c6, B:102:0x01d1, B:104:0x034b, B:106:0x0355, B:109:0x0360, B:111:0x0366, B:113:0x036c, B:115:0x0376, B:117:0x037c, B:118:0x038e), top: B:133:0x0163 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hp(com.byazt.ni.w r20) {
        /*
            Method dump skipped, instructions count: 979
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ni.j.hp(com.byazt.ni.w):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(DownloadTask downloadTask, int i2, boolean z2) {
        if (downloadTask == null) {
            return;
        }
        downloadTask.download();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            downloadInfo.setAntiHijackErrorCode(i2);
        }
        if (downloadInfo == null || !z2) {
            return;
        }
        downloadInfo.setSavePathRedirected(z2);
    }

    private List<com.byazt.fu.jx> hp(List<com.byazt.fu.jx> list) {
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        if (list != null && list.size() > 0) {
            for (com.byazt.fu.jx jxVar : list) {
                if (jxVar != null && !TextUtils.isEmpty(jxVar.hp()) && !TextUtils.isEmpty(jxVar.l())) {
                    if (jxVar.hp().equals("User-Agent")) {
                        z2 = true;
                    }
                    arrayList.add(new com.byazt.fu.jx(jxVar.hp(), jxVar.l()));
                }
            }
        }
        if (!z2) {
            arrayList.add(new com.byazt.fu.jx("User-Agent", com.byazt.md.hp.hp));
        }
        return arrayList;
    }

    public String hp(String str, String str2) {
        return (TextUtils.isEmpty(str) || !str.endsWith(".apk") || jx.jx(str2)) ? str2 : AdBaseConstants.MIME_APK;
    }

    private o hp(final com.byazt.f.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new o() { // from class: com.byazt.ni.j.6
            @Override // com.byazt.fn.o
            public void hp(int i2, DownloadInfo downloadInfo, String str, String str2) {
                if (i2 != 1 && i2 != 3) {
                    switch (i2) {
                        case 8:
                            downloadInfo.getPackageName();
                            break;
                        case 9:
                            com.byazt.yk.jx.mp();
                            break;
                    }
                    return;
                }
                downloadInfo.getStatus();
                downloadInfo.getDownloadTime();
            }

            @Override // com.byazt.fn.o
            public boolean hp(boolean z2) {
                return aVar.hp(z2);
            }

            @Override // com.byazt.fn.o
            public String hp() {
                return aVar.hp();
            }
        };
    }

    public DownloadInfo hp(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                DownloadInfo downloadInfoHp = hp(context, str, q());
                if (downloadInfoHp == null) {
                    downloadInfoHp = hp(context, str, com.byazt.rz.l.hp(context, Environment.DIRECTORY_DOWNLOADS));
                }
                if (downloadInfoHp == null) {
                    downloadInfoHp = hp(context, str, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS));
                }
                if (downloadInfoHp == null) {
                    downloadInfoHp = hp(context, str, com.byazt.rz.l.hp(context));
                }
                return (downloadInfoHp == null && com.byazt.jb.hp.jx().hp("get_download_info_by_list")) ? l(context, str) : downloadInfoHp;
            } catch (Throwable th) {
                com.byazt.nu.hp.l(hp, String.format("getAppDownloadInfo error:%s", th.getMessage()));
            }
        }
        return null;
    }

    private DownloadInfo hp(Context context, String str, File file) {
        if (context == null || TextUtils.isEmpty(str) || file == null) {
            return null;
        }
        return Downloader.getInstance(context).getDownloadInfo(str, file.getAbsolutePath());
    }

    public List<DownloadInfo> hp(Context context) {
        return Downloader.getInstance(context).getUnCompletedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
    }

    public void hp(s sVar) {
        this.f23598u = sVar;
    }

    public void hp(com.byazt.yk.vv vvVar) {
        Downloader.getInstance(com.byazt.yk.jx.mp()).setReserveWifiStatusListener(vvVar);
    }

    public void hp(hq hqVar) {
        this.ec = hqVar;
    }

    public void hp(dy dyVar) {
        this.sz = dyVar;
    }

    public void hp(int i2) {
        if (com.byazt.jb.hp.jx().hp("enable_app_install_receiver", 1) <= 0) {
            return;
        }
        jl();
        l(i2);
    }

    public void hp(v vVar) {
        this.f23596n = vVar;
    }
}
