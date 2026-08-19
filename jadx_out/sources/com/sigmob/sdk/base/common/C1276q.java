package com.sigmob.sdk.base.common;

import android.app.DownloadManager;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.anythink.core.common.f.s;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.AsyncTaskC1279s;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.windad.WindAds;
import com.umeng.analytics.pro.bz;
import java.io.File;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: com.sigmob.sdk.base.common.q, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1276q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36014a = "q";

    /* renamed from: b, reason: collision with root package name */
    private static final Map<String, String> f36015b = new Hashtable();

    /* renamed from: c, reason: collision with root package name */
    private static final Set<r> f36016c = new CopyOnWriteArraySet();

    public static DownloadManager a() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return null;
        }
        return (DownloadManager) contextE.getSystemService("download");
    }

    private static long b(String str, String str2, String str3) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    String strTrim = str.trim();
                    if (com.sigmob.sdk.base.utils.s.a((CharSequence) Uri.parse(strTrim).getScheme())) {
                        strTrim = "http://" + strTrim;
                    }
                    if (!strTrim.startsWith("http")) {
                        return -2L;
                    }
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(strTrim));
                    File file = new File(str2);
                    request.setTitle(str3);
                    request.setAllowedNetworkTypes(3);
                    request.setAllowedOverRoaming(true);
                    request.setVisibleInDownloadsUi(true);
                    request.setNotificationVisibility(1);
                    File parentFile = file.getParentFile();
                    if (parentFile == null) {
                        return -1L;
                    }
                    if (parentFile.exists()) {
                        if (!parentFile.isDirectory()) {
                            parentFile.delete();
                            if (!parentFile.mkdirs()) {
                                return -3L;
                            }
                        }
                    } else if (!parentFile.mkdirs()) {
                        return -4L;
                    }
                    request.addRequestHeader("User-Agent", Networking.getUserAgent());
                    request.setDestinationUri(Uri.fromFile(file));
                    DownloadManager downloadManagerA = a();
                    if (downloadManagerA == null) {
                        return -1L;
                    }
                    return downloadManagerA.enqueue(request);
                }
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
        return -1L;
    }

    public static Long c(long j2, String str) {
        for (r rVar : f36016c) {
            if (rVar.f36025c == j2 || rVar.f36023a.equalsIgnoreCase(str)) {
                return Long.valueOf(rVar.f36025c);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).getOptions().put("url", str);
        }
    }

    public static String a(File file) {
        String name = file.getName();
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(name.lastIndexOf(com.anythink.core.common.d.i.f2495E) + 1).toLowerCase());
    }

    public static HashMap<String, Object> b() {
        Cursor cursorQuery;
        try {
            DownloadManager downloadManagerA = a();
            if (downloadManagerA == null) {
                return null;
            }
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterByStatus(3);
            cursorQuery = downloadManagerA.query(query);
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    cursorQuery.close();
                    return null;
                }
                HashMap<String, Object> map = new HashMap<>();
                do {
                    Long lValueOf = Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow(bz.f48985d)));
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("local_uri"));
                    if (!com.sigmob.sdk.base.utils.s.a((CharSequence) string)) {
                        map.put(string, lValueOf);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                th = th;
                try {
                    SigmobLog.e(th.getMessage());
                    return null;
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(String str, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setFinal_url(str);
        }
    }

    public static Map<String, Object> a(long j2) {
        Cursor cursorQuery;
        try {
            DownloadManager downloadManagerA = a();
            if (downloadManagerA == null) {
                return null;
            }
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(j2);
            Uri uriForDownloadedFile = downloadManagerA.getUriForDownloadedFile(j2);
            cursorQuery = downloadManagerA.query(query);
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    cursorQuery.close();
                    return null;
                }
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status"));
                int i3 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(MediationConstant.KEY_REASON));
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("local_uri"));
                HashMap map = new HashMap();
                map.put("fileName", string);
                map.put("status", Integer.valueOf(i2));
                map.put(ContentProviderManager.PROVIDER_URI, uriForDownloadedFile);
                map.put(MediationConstant.KEY_REASON, Integer.valueOf(i3));
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                th = th;
                try {
                    SigmobLog.e(th.getMessage());
                    return null;
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    public static void b(long j2, String str) {
        for (r rVar : f36016c) {
            if (rVar.f36025c == j2 || rVar.f36023a.equalsIgnoreCase(str)) {
                f36016c.remove(rVar);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, final String str2, String str3) {
        Long lValueOf;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            str = Md5Util.md5(str2) + ".apk";
        }
        File fileA = com.sigmob.sdk.base.utils.n.a(com.sigmob.sdk.base.utils.n.a(com.sigmob.sdk.b.e()), str);
        if (fileA != null) {
            String absolutePath = fileA.getAbsolutePath();
            Long lC = c(-1L, absolutePath);
            if (lC != null && lC.longValue() > 0) {
                try {
                    ak.a(com.sigmob.sdk.b.e(), "正在下载", 1).show();
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            long jB = b(str2, absolutePath, str3);
            lValueOf = Long.valueOf(jB);
            if (jB > 0) {
                ak.a(com.sigmob.sdk.b.e(), "开始下载", 1).show();
                File fileA2 = com.sigmob.sdk.base.utils.n.a(lValueOf);
                if (!fileA2.exists()) {
                    fileA2.delete();
                }
                FileUtil.writeToCache(str, fileA2.getAbsolutePath());
            }
        } else {
            lValueOf = null;
        }
        ad.a("download_start", (lValueOf == null || lValueOf.longValue() <= 0) ? "0" : "1", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.I0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                C1276q.f(str2, obj);
            }
        });
    }

    private static void a(Context context, BaseAdUnit baseAdUnit, final String str, final File file) {
        if (baseAdUnit.isRecord()) {
            ad.a("download_start", "1", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.J0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1276q.b(str, file, obj);
                }
            });
        }
        HashMap map = new HashMap();
        map.put("result", "1");
        map.put("downloadId", baseAdUnit.getDownloadId());
        BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str, File file, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setFinal_url(str);
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("apkfile", file.getAbsolutePath());
            options.put("apkurl", str);
            pointEntitySigmob.setOptions(options);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, File file, BaseAdUnit baseAdUnit) {
        a(context, file.getAbsolutePath(), baseAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFinal_url(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r8, final java.lang.String r9, com.sigmob.sdk.base.models.BaseAdUnit r10) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.common.C1276q.a(android.content.Context, java.lang.String, com.sigmob.sdk.base.models.BaseAdUnit):void");
    }

    public static boolean b(File file) {
        return (file == null || !file.exists() || ClientMetadata.getPackageInfoWithUri(com.sigmob.sdk.b.e(), file.getAbsolutePath()) == null) ? false : true;
    }

    public static void a(final String str, final BaseAdUnit baseAdUnit) {
        String str2;
        final Context contextE = com.sigmob.sdk.b.e();
        try {
            ad.a(PointCategory.APK_CLICK, "download", baseAdUnit, (ad.a) null);
            SigmobLog.i("download apk:" + str);
            C1258h.a(baseAdUnit);
            int apkDownloadType = baseAdUnit.getApkDownloadType();
            Long downloadId = baseAdUnit.getDownloadId();
            String apkMd5 = baseAdUnit.getApkMd5();
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) apkMd5)) {
                str2 = Md5Util.md5(str) + ".apk";
            } else {
                String str3 = apkMd5 + ".apk";
                File fileA = com.sigmob.sdk.base.utils.n.a(contextE);
                final File file = new File(fileA, str3);
                boolean zExists = file.exists();
                boolean zB = apkDownloadType == 0 ? true : com.sigmob.sdk.downloader.l.b(str, fileA.getAbsolutePath(), str3);
                if (zExists && zB && baseAdUnit.canUseDownloadApk() && b(file)) {
                    baseAdUnit.setApkName(str3);
                    if (downloadId == null) {
                        ad.a(PointCategory.EXIT_APK_INSTALL, "", baseAdUnit, (ad.a) null);
                    }
                    WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.F0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1276q.a(contextE, file, baseAdUnit);
                        }
                    });
                    return;
                }
                str2 = str3;
            }
            baseAdUnit.setApkName(str2);
            baseAdUnit.setDownloadUrl(str);
            if (apkDownloadType == 0) {
                a(str2, str, baseAdUnit);
                return;
            }
            if (apkDownloadType == 1) {
                C1272o.a(str, baseAdUnit, false);
                return;
            }
            if (apkDownloadType == 2) {
                C1272o.a(str, baseAdUnit, true);
                return;
            }
            SigmobLog.e("not support Download Type: " + apkDownloadType);
            throw new Exception("not support Download Type: " + apkDownloadType);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            if (baseAdUnit.isRecord()) {
                ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.G0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1276q.c(str, obj);
                    }
                });
                ad.a("download_start", 0, th.getMessage(), baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.H0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1276q.b(str, obj);
                    }
                });
            }
            try {
                ak.a(contextE, "下载失败", 1).show();
            } catch (Throwable th2) {
                SigmobLog.e(th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, File file, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setFinal_url(str);
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("apkfile", file.getAbsolutePath());
            options.put("apkurl", str);
            pointEntitySigmob.setOptions(options);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            ((PointEntitySigmobError) obj).setFile_name(str);
        }
    }

    private static void a(String str, final String str2, BaseAdUnit baseAdUnit) {
        String absolutePath;
        String str3;
        Context contextE = com.sigmob.sdk.b.e();
        try {
            try {
                String str4 = com.sigmob.sdk.base.utils.s.b(str) ? str : Md5Util.md5(baseAdUnit.getLanding_page()) + ".apk";
                final File file = new File(com.sigmob.sdk.base.utils.n.a(contextE), str4);
                Long lC = c(-1L, file.getAbsolutePath());
                if (lC != null && lC.longValue() > 0) {
                    ak.a(contextE, "正在下载", 1).show();
                    if (baseAdUnit.getDownloadId() == null) {
                        baseAdUnit.setDownloadId(lC);
                        File fileA = com.sigmob.sdk.base.utils.n.a(lC);
                        if (fileA.exists()) {
                            fileA.delete();
                        }
                        FileUtil.writeToCache(baseAdUnit, fileA.getAbsolutePath());
                        a(contextE, baseAdUnit, str2, file);
                        return;
                    }
                    return;
                }
                HashMap<String, Object> mapB = b();
                if (mapB != null) {
                    for (String str5 : mapB.keySet()) {
                        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) str5) && str5.equals(file.getAbsolutePath())) {
                            try {
                                ak.a(contextE, "正在下载", 1).show();
                            } catch (Throwable unused) {
                            }
                            Object obj = mapB.get(str5);
                            if (obj instanceof Long) {
                                baseAdUnit.setDownloadId((Long) obj);
                                File fileA2 = com.sigmob.sdk.base.utils.n.a(lC);
                                if (fileA2.exists()) {
                                    fileA2.delete();
                                }
                                FileUtil.writeToCache(baseAdUnit, fileA2.getAbsolutePath());
                                a(contextE, baseAdUnit, str2, file);
                                return;
                            }
                            return;
                        }
                    }
                }
                Map<String, String> map = f36015b;
                boolean zContainsKey = map.containsKey(baseAdUnit.getUuid());
                if (file.exists() && !zContainsKey && !a(contextE, file.getAbsolutePath())) {
                    SigmobLog.i("cacheFile deleteFile:" + FileUtil.deleteFile(file.getAbsolutePath()));
                }
                SigmobLog.i(str4 + " exists:" + file.exists() + " containsKey:" + zContainsKey);
                if (file.exists()) {
                    if (zContainsKey) {
                        absolutePath = file.getAbsolutePath();
                    } else {
                        long jLastModified = file.lastModified();
                        int iW = com.sigmob.sdk.base.o.a().W();
                        if (iW == 0) {
                            str3 = "default deleteFile:" + FileUtil.deleteFile(file.getAbsolutePath());
                        } else if (System.currentTimeMillis() - jLastModified > iW * 1000) {
                            str3 = "timeOut deleteFile:" + FileUtil.deleteFile(file.getAbsolutePath());
                        } else {
                            absolutePath = file.getAbsolutePath();
                        }
                        SigmobLog.i(str3);
                    }
                    a(contextE, absolutePath, baseAdUnit);
                    return;
                }
                map.put(baseAdUnit.getUuid(), str4);
                String appName = baseAdUnit.getAppName();
                if (com.sigmob.sdk.base.utils.s.a((CharSequence) appName)) {
                    appName = file.getName();
                }
                long jB = b(str2, file.getAbsolutePath(), appName);
                if (jB >= 0) {
                    try {
                        ak.a(contextE, "已开始下载，可在通知栏尝试取消", 1).show();
                    } catch (Throwable th) {
                        SigmobLog.e(th.getMessage());
                    }
                    a(jB, file.getAbsolutePath());
                    File fileA3 = com.sigmob.sdk.base.utils.n.a(Long.valueOf(jB));
                    baseAdUnit.setDownloadId(Long.valueOf(jB));
                    FileUtil.writeToCache(baseAdUnit, fileA3.getAbsolutePath());
                    a(contextE, baseAdUnit, str2, file);
                } else {
                    if (baseAdUnit.isRecord()) {
                        ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.K0
                            @Override // com.sigmob.sdk.base.common.ad.a
                            public final void onAddExtra(Object obj2) {
                                C1276q.a(str2, file, obj2);
                            }
                        });
                        ad.a(PointCategory.DOWNLOAD_FAILED, (int) jB, "下载失败，错误码 " + jB, baseAdUnit, (ad.a) null);
                    }
                    ak.a(contextE, "下载失败,错误码 " + jB, 0).show();
                    HashMap map2 = new HashMap();
                    map2.put("result", "0");
                    map2.put("downloadId", -1);
                    BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map2, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
                }
                if (baseAdUnit.isRecord()) {
                    com.sigmob.sdk.base.network.h.a(baseAdUnit, "download_start");
                }
            } catch (Throwable th2) {
                SigmobLog.e(th2.getMessage());
                if (baseAdUnit.isRecord()) {
                    ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.L0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1276q.e(str2, obj2);
                        }
                    });
                    ad.a("download_start", 0, th2.getMessage(), baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.M0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1276q.d(str2, obj2);
                        }
                    });
                }
                HashMap map3 = new HashMap();
                map3.put("result", "0");
                map3.put("downloadId", -1);
                BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map3, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
                ak.a(contextE, "请先给予应用权限", 1).show();
            }
        } catch (Throwable unused2) {
        }
    }

    public static void a(final String str, final String str2, final String str3, final int i2) throws Exception {
        AsyncTaskC1279s.a(str, new AsyncTaskC1279s.a() { // from class: com.sigmob.sdk.base.common.q.1
            @Override // com.sigmob.sdk.base.common.AsyncTaskC1279s.a
            public void a(String str4, String str5) {
                String str6;
                String str7 = com.sigmob.sdk.base.utils.s.a((CharSequence) str3) ? str4 : str3;
                int i3 = i2;
                boolean z2 = true;
                if (i3 == 1) {
                    str6 = str2;
                    z2 = false;
                } else {
                    if (i3 != 2) {
                        C1276q.c(str4, str5, str7);
                        return;
                    }
                    str6 = str2;
                }
                C1272o.a(str4, str5, str6, str7, z2);
            }

            @Override // com.sigmob.sdk.base.common.AsyncTaskC1279s.a
            public void a(String str4, Throwable th) {
                String str5 = Md5Util.md5(str) + ".apk";
                String str6 = com.sigmob.sdk.base.utils.s.a((CharSequence) str3) ? str5 : str3;
                int i3 = i2;
                if (i3 == 1) {
                    C1272o.a(str5, str, str2, str6, false);
                } else if (i3 != 2) {
                    C1276q.c(str5, str, str6);
                } else {
                    C1272o.a(str5, str, str2, str6, true);
                }
            }
        });
    }

    public static boolean a(long j2, String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return false;
        }
        f36016c.add(new r(str, null, j2));
        return true;
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 1) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return false;
        }
        Cursor cursor = null;
        try {
            DownloadManager downloadManagerA = a();
            if (downloadManagerA == null) {
                return false;
            }
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterByStatus(3);
            Cursor cursorQuery = downloadManagerA.query(query);
            if (!cursorQuery.moveToFirst()) {
                cursorQuery.close();
                cursorQuery.close();
                return false;
            }
            do {
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(ContentProviderManager.PROVIDER_URI));
                if (!com.sigmob.sdk.base.utils.s.a((CharSequence) string) && str.equalsIgnoreCase(string)) {
                    cursorQuery.close();
                    return true;
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
            return false;
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                return false;
            } finally {
                if (0 != 0) {
                    cursor.close();
                }
            }
        }
    }

    public static long[] a(Context context, Long l2) {
        long[] jArr = {-1, -1, 0};
        if (l2 != null && l2.longValue() >= 0) {
            Cursor cursorQuery = null;
            try {
                cursorQuery = ((DownloadManager) context.getSystemService("download")).query(new DownloadManager.Query().setFilterById(l2.longValue()));
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    jArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                    jArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(s.a.f3404f));
                    jArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status"));
                }
                if (cursorQuery != null) {
                    return jArr;
                }
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
        return jArr;
    }
}
