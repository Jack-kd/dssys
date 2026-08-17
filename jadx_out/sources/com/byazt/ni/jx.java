package com.byazt.ni;

import T.d;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.browser.trusted.f;
import com.byazt.f.e;
import com.byazt.f.gu;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.oy.DownloadStatus;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.varbto.utils.api.UtilConst;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 30})
/* loaded from: classes3.dex */
public class jx {
    public static int hp;

    /* renamed from: l, reason: collision with root package name */
    public static NotificationChannel f23605l;

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(Context context, int i2, boolean z2) {
        if (com.byazt.jb.hp.hp(i2).l("notification_opt_2") == 1) {
            com.byazt.li.l.hp().a(i2);
        }
        hp((Activity) eb.hp().l());
        return com.byazt.jb.hp.hp(i2).hp("install_queue_enable", 0) == 1 ? eb.hp().hp(context, i2, z2) : l(context, i2, z2);
    }

    private static String hp(long j2, long j3, String str, boolean z2) {
        double d2 = j2;
        if (j3 > 1) {
            d2 /= j3;
        }
        if (z2 || "GB".equals(str) || "TB".equals(str)) {
            return new DecimalFormat("#.##").format(d2) + " " + str;
        }
        return new DecimalFormat("#").format(d2) + " " + str;
    }

    public static boolean jx(Context context, DownloadInfo downloadInfo) {
        if (context == null || downloadInfo == null || TextUtils.isEmpty(downloadInfo.getSavePath()) || TextUtils.isEmpty(downloadInfo.getName())) {
            return false;
        }
        return l(context, downloadInfo, hp(context, downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName()));
    }

    public static int l(final Context context, final int i2, final boolean z2) throws JSONException {
        final DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
        if (downloadInfo != null && AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType()) && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            final File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
            if (file.exists()) {
                com.byazt.yk.jx.l(new Runnable() { // from class: com.byazt.ni.jx.2
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        j.gu().jl();
                        int iHp = jx.hp(context, i2, z2, downloadInfo, file);
                        if (iHp == 1 && j.gu().xs() != null) {
                            j.gu().xs().hp(downloadInfo, null);
                        }
                        jx.l(downloadInfo, z2, iHp);
                    }
                });
                return 1;
            }
        }
        l(downloadInfo, z2, 2);
        return 2;
    }

    public static String hp(long j2) {
        return hp(j2, true);
    }

    public static boolean jx(String str) {
        return !TextUtils.isEmpty(str) && str.equals(AdBaseConstants.MIME_APK);
    }

    public static String hp(long j2, boolean z2) {
        long[] jArr = {1099511627776L, 1073741824, 1048576, 1024, 1};
        String[] strArr = {"TB", "GB", "MB", "KB", UtilConst.CRASH_CAT_B};
        if (j2 < 1) {
            return "0 " + strArr[4];
        }
        for (int i2 = 0; i2 < 5; i2++) {
            long j3 = jArr[i2];
            if (j2 >= j3) {
                return hp(j2, j3, strArr[i2], z2);
            }
        }
        return null;
    }

    public static List<String> jx() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(AdBaseConstants.MIME_APK);
        arrayList.add("application/ttpatch");
        return arrayList;
    }

    private static JSONObject j(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(DownloadInfo downloadInfo, boolean z2, int i2) throws JSONException {
        if (downloadInfo == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("by_user", z2 ? 1 : 2);
            jSONObject.put("view_result", i2);
            jSONObject.put("real_package_name", downloadInfo.getFilePackageName());
        } catch (Exception unused) {
        }
        com.byazt.yk.jx.f().hp(downloadInfo.getId(), "install_view_result", jSONObject);
    }

    public static int hp(final Context context, final int i2, final boolean z2) {
        gu guVarS = j.gu().s();
        if (guVarS == null) {
            return j(context, i2, z2);
        }
        DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
        hp = 1;
        guVarS.hp(downloadInfo, new e() { // from class: com.byazt.ni.jx.1
            @Override // com.byazt.f.e
            public void hp() {
                int unused = jx.hp = jx.j(context, i2, z2);
            }
        });
        return hp;
    }

    public static boolean l(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo) {
        return hp(context, downloadInfo, packageInfo, false);
    }

    public static int l(Context context, DownloadInfo downloadInfo) {
        if (context != null && downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            int appVersionCode = downloadInfo.getAppVersionCode();
            if (appVersionCode > 0) {
                return appVersionCode;
            }
            try {
                PackageInfo packageInfoHp = hp(context, downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
                if (packageInfoHp != null) {
                    int i2 = packageInfoHp.versionCode;
                    downloadInfo.setAppVersionCode(i2);
                    return i2;
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0081 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int hp(android.content.Context r5, int r6, boolean r7, com.byazt.fu.DownloadInfo r8, java.io.File r9) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ni.jx.hp(android.content.Context, int, boolean, com.byazt.fu.DownloadInfo, java.io.File):int");
    }

    public static String l() {
        return com.byazt.xq.a.w();
    }

    public static boolean l(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
        }
        if (!jSONObject.optBoolean("bind_app", false)) {
            if (jSONObject.optBoolean("auto_install_with_notification", true)) {
                return false;
            }
        }
        return true;
    }

    public static int hp(Context context, Intent intent) {
        try {
            if (j.gu().u() != null) {
                if (j.gu().u().hp(intent)) {
                    return 1;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            context.startActivity(intent);
            return 1;
        } catch (Throwable unused2) {
            return 0;
        }
    }

    public static boolean hp(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo) {
        if (packageInfo == null || packageInfo.packageName.equals(downloadInfo.getPackageName())) {
            return false;
        }
        com.byazt.f.w wVarJx = j.gu().jx();
        if (wVarJx != null) {
            wVarJx.hp(downloadInfo.getId(), 8, downloadInfo.getPackageName(), packageInfo.packageName, "");
            if (wVarJx.hp()) {
                return true;
            }
        }
        o downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        if (downloadNotificationEventListener == null) {
            return false;
        }
        downloadNotificationEventListener.hp(8, downloadInfo, packageInfo.packageName, "");
        com.byazt.f.j jVarL = j.gu().l();
        return (jVarL instanceof com.byazt.f.hp) && ((com.byazt.f.hp) jVarL).l();
    }

    public static boolean hp(Context context, int i2, File file) {
        if (com.byazt.jb.hp.hp(i2).hp("back_miui_silent_install", 1) == 1) {
            return false;
        }
        if ((com.byazt.wm.w.zy() || com.byazt.wm.w.k()) && com.byazt.xq.e.hp(context, "com.miui.securitycore", "com.miui.enterprise.service.EntInstallService")) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.miui.securitycore", "com.miui.enterprise.service.EntInstallService"));
            Bundle bundle = new Bundle();
            bundle.putInt("userId", 0);
            bundle.putInt("flag", 256);
            bundle.putString("apkPath", file.getPath());
            bundle.putString("installerPkg", "com.miui.securitycore");
            intent.putExtras(bundle);
            try {
                context.startService(intent);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static int hp() {
        return j.gu().eb() ? 16384 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.Uri hp(int r1, com.byazt.fn.IDownloadFileUriProvider r2, android.content.Context r3, java.lang.String r4, java.io.File r5) {
        /*
            if (r2 == 0) goto Lb
            java.lang.String r1 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> L1e
            android.net.Uri r1 = r2.getUriForFile(r4, r1)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        Lb:
            com.byazt.ni.j r2 = com.byazt.ni.j.gu()
            com.byazt.f.eb r2 = r2.a()
            if (r2 == 0) goto L1e
            java.lang.String r0 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> L1e
            android.net.Uri r1 = r2.hp(r1, r4, r0)     // Catch: java.lang.Throwable -> L1e
            goto L1f
        L1e:
            r1 = 0
        L1f:
            if (r1 != 0) goto L30
            boolean r2 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L30
            if (r2 != 0) goto L2c
            android.net.Uri r1 = androidx.core.content.FileProvider.getUriForFile(r3, r4, r5)     // Catch: java.lang.Throwable -> L30
            goto L30
        L2c:
            android.net.Uri r1 = android.net.Uri.fromFile(r5)     // Catch: java.lang.Throwable -> L30
        L30:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ni.jx.hp(int, com.byazt.fn.IDownloadFileUriProvider, android.content.Context, java.lang.String, java.io.File):android.net.Uri");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Intent hp(Context context, DownloadInfo downloadInfo, @NonNull File file, boolean z2, int[] iArr) {
        Uri uriHp = hp(downloadInfo.getId(), Downloader.getInstance(context).getDownloadFileUriProvider(downloadInfo.getId()), context, j.gu().w(), file);
        if (uriHp == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(1);
        intent.setDataAndType(uriHp, AdBaseConstants.MIME_APK);
        com.byazt.f.w wVarJx = j.gu().jx();
        int iHp = wVarJx != null ? wVarJx.hp(downloadInfo.getId(), z2) : 0;
        o downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        int iHp2 = iHp;
        if (downloadNotificationEventListener != null) {
            iHp2 = downloadNotificationEventListener.hp(z2);
        }
        iArr[0] = iHp2;
        if (iHp2 != 0) {
            return null;
        }
        return intent;
    }

    public static boolean hp(DownloadInfo downloadInfo, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.isEmpty(downloadInfo.getPackageName()) || !str.equals(downloadInfo.getPackageName())) {
            return !TextUtils.isEmpty(downloadInfo.getName()) && hp(com.byazt.yk.jx.mp(), downloadInfo, str);
        }
        return true;
    }

    public static boolean hp(Context context, DownloadInfo downloadInfo, String str) throws PackageManager.NameNotFoundException {
        if (context == null) {
            return false;
        }
        try {
            File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
            PackageInfo packageInfo = null;
            if (file.exists()) {
                u.l("AppDownloadUtils", "isPackageNameEqualsWithApk fileName:" + downloadInfo.getName() + " apkFileSize：" + file.length() + " fileUrl：" + downloadInfo.getUrl());
                PackageInfo packageInfoHp = hp(downloadInfo, file);
                if (packageInfoHp == null || !packageInfoHp.packageName.equals(str)) {
                    return false;
                }
                int i2 = packageInfoHp.versionCode;
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, hp());
                } catch (PackageManager.NameNotFoundException unused) {
                }
                if (packageInfo == null || i2 != packageInfo.versionCode) {
                    return false;
                }
            } else {
                if (!com.byazt.jb.hp.hp(downloadInfo.getId()).hp("install_callback_error")) {
                    return false;
                }
                String strHp = com.byazt.xq.a.hp(downloadInfo.getTempCacheData().get("extra_apk_package_name"), (String) null);
                int iHp = com.byazt.xq.a.hp(downloadInfo.getTempCacheData().get("extra_apk_version_code"), 0);
                if (strHp == null || TextUtils.isEmpty(strHp) || !strHp.equals(str)) {
                    return false;
                }
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, hp());
                } catch (PackageManager.NameNotFoundException unused2) {
                }
                if (packageInfo == null || iHp != packageInfo.versionCode) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused3) {
            return false;
        }
    }

    public static boolean hp(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo, boolean z2) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo2;
        if (packageInfo == null) {
            return false;
        }
        String str = packageInfo.packageName;
        int i2 = packageInfo.versionCode;
        if (downloadInfo != null) {
            downloadInfo.setAppVersionCode(i2);
        }
        try {
            packageInfo2 = context.getPackageManager().getPackageInfo(str, hp());
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo2 = null;
        }
        if (packageInfo2 == null) {
            return false;
        }
        int i3 = packageInfo2.versionCode;
        return z2 ? i2 < i3 : (downloadInfo == null || com.byazt.jb.hp.hp(downloadInfo.getId()).hp("install_with_same_version_code", 0) != 1) ? i2 <= i3 : i2 < i3;
    }

    public static boolean hp(Context context, DownloadInfo downloadInfo) {
        return hp(context, downloadInfo, true);
    }

    public static boolean hp(Context context, DownloadInfo downloadInfo, boolean z2) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        if (downloadInfo == null) {
            return false;
        }
        String packageName = downloadInfo.getPackageName();
        int appVersionCode = downloadInfo.getAppVersionCode();
        if (appVersionCode <= 0 && z2) {
            return jx(context, downloadInfo);
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, hp());
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        if (packageInfo == null) {
            return false;
        }
        return com.byazt.jb.hp.hp(downloadInfo.getId()).hp("install_with_same_version_code", 0) == 1 ? appVersionCode < packageInfo.versionCode : appVersionCode <= packageInfo.versionCode;
    }

    public static PackageInfo hp(Context context, DownloadInfo downloadInfo, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        File file = new File(str, str2);
        if (!file.exists()) {
            return null;
        }
        u.l("AppDownloadUtils", "isApkInstalled apkFileSize：fileName:" + file.getPath() + " apkFileSize" + file.length());
        return hp(downloadInfo, file);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String hp(java.lang.String r3, java.lang.String r4, java.lang.String r5, boolean r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            java.lang.String r1 = ""
            if (r0 == 0) goto L9
            return r1
        L9:
            android.net.Uri r3 = android.net.Uri.parse(r3)
            java.lang.String r0 = "default.apk"
            java.lang.String r2 = ".."
            if (r6 == 0) goto L34
            boolean r6 = android.text.TextUtils.isEmpty(r4)
            if (r6 == 0) goto L5a
            java.lang.String r4 = r3.getLastPathSegment()
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L32
            java.lang.String r4 = r3.getLastPathSegment()
            boolean r4 = r4.contains(r2)
            if (r4 != 0) goto L32
            java.lang.String r4 = r3.getLastPathSegment()
            goto L5a
        L32:
            r4 = r0
            goto L5a
        L34:
            java.lang.String r6 = r3.getLastPathSegment()
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 != 0) goto L4c
            java.lang.String r6 = r3.getLastPathSegment()
            boolean r6 = r6.contains(r2)
            if (r6 != 0) goto L4c
            java.lang.String r1 = r3.getLastPathSegment()
        L4c:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L59
            boolean r3 = android.text.TextUtils.isEmpty(r4)
            if (r3 != 0) goto L32
            goto L5a
        L59:
            r4 = r1
        L5a:
            boolean r3 = jx(r5)
            if (r3 == 0) goto L78
            java.lang.String r3 = ".apk"
            boolean r5 = r4.endsWith(r3)
            if (r5 != 0) goto L78
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            return r3
        L78:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ni.jx.hp(java.lang.String, java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    public static String hp(String str, com.byazt.jb.hp hpVar) {
        JSONObject jSONObjectJ;
        if (hpVar != null && (jSONObjectJ = hpVar.j("download_dir")) != null) {
            String strOptString = jSONObjectJ.optString("dir_name");
            if (!TextUtils.isEmpty(strOptString) && strOptString.startsWith(ServiceReference.DELIMITER)) {
                strOptString = strOptString.substring(1);
            }
            if (TextUtils.isEmpty(strOptString)) {
                return strOptString;
            }
            if (!strOptString.contains("%s")) {
                strOptString = strOptString + str;
            } else {
                try {
                    strOptString = String.format(strOptString, str);
                } catch (Throwable unused) {
                }
            }
            return strOptString.length() > 255 ? strOptString.substring(strOptString.length() - 255) : strOptString;
        }
        return "";
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new JSONObject(str).optBoolean("bind_app", false);
    }

    public static int hp(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == -2) {
            return 2;
        }
        if (i2 == 1) {
            return 4;
        }
        if (DownloadStatus.isDownloading(i2) || i2 == 11) {
            return 1;
        }
        return DownloadStatus.isDownloadOver(i2) ? 3 : 0;
    }

    @TargetApi(26)
    public static String hp(@NonNull Context context) {
        try {
            if (f23605l == null) {
                d.a();
                NotificationChannel notificationChannelA = f.a("111111", "channel_appdownloader", 3);
                f23605l = notificationChannelA;
                notificationChannelA.setSound(null, null);
                f23605l.setShowBadge(false);
                ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(f23605l);
            }
        } catch (Throwable unused) {
        }
        return "111111";
    }

    public static void hp(DownloadInfo downloadInfo, boolean z2, boolean z3) {
        j.gu().hp(new w(com.byazt.yk.jx.mp(), downloadInfo.getUrl()).hp(downloadInfo.getTitle()).l(downloadInfo.getName()).jx(downloadInfo.getSavePath()).hp(downloadInfo.isShowNotification()).l(downloadInfo.isAutoInstallWithoutNotification()).jx(downloadInfo.isOnlyWifi() || z3).w(downloadInfo.getExtra()).a(downloadInfo.getMimeType()).hp(downloadInfo.getExtraHeaders()).w(true).l(downloadInfo.getRetryCount()).jx(downloadInfo.getBackUpUrlRetryCount()).l(downloadInfo.getBackUpUrls()).j(downloadInfo.getMinProgressTimeMsInterval()).w(downloadInfo.getMaxProgressCount()).a(z2).j(downloadInfo.isNeedHttpsToHttpRetry()).eb(downloadInfo.getPackageName()).s(downloadInfo.getMd5()).hp(downloadInfo.getExpectFileLength()).q(downloadInfo.isNeedDefaultHttpServiceBackUp()).e(downloadInfo.isNeedReuseFirstConnection()).jl(downloadInfo.isNeedIndependentProcess()).hp(downloadInfo.getEnqueueType()).k(downloadInfo.isForce()).zy(downloadInfo.isHeadConnectionAvailable()).eb(downloadInfo.isNeedRetryDelay()).q(downloadInfo.getRetryDelayTimeArray()).hp(j(downloadInfo.getDownloadSettingString())).gu(downloadInfo.getIconUrl()).a(downloadInfo.getExecutorGroup()).u(downloadInfo.isAutoInstall()));
    }

    public static void hp(Activity activity) {
        if (activity != null) {
            try {
                if (activity.isFinishing()) {
                    return;
                }
                activity.finish();
            } catch (Exception unused) {
            }
        }
    }

    public static PackageInfo hp(DownloadInfo downloadInfo, File file) {
        if (downloadInfo == null) {
            return com.byazt.gb.w.hp(com.byazt.yk.jx.mp(), file, hp());
        }
        PackageInfo packageInfo = downloadInfo.getPackageInfo();
        if (packageInfo != null) {
            return packageInfo;
        }
        PackageInfo packageInfoHp = com.byazt.gb.w.hp(com.byazt.yk.jx.mp(), file, hp());
        downloadInfo.setPackageInfo(packageInfoHp);
        return packageInfoHp;
    }

    public static int hp(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
