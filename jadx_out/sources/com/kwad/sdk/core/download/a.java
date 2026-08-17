package com.kwad.sdk.core.download;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.kwad.sdk.DownloadTask;
import com.kwad.sdk.core.network.r;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ae;
import com.kwad.sdk.utils.ag;
import com.kwad.sdk.utils.an;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bg;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes4.dex */
public final class a {

    @SuppressLint({"StaticFieldLeak"})
    private static Context mContext;
    private static volatile boolean mHasInit;

    /* renamed from: com.kwad.sdk.core.download.a$a, reason: collision with other inner class name */
    public interface InterfaceC0607a {
        void A(int i2, int i3);

        boolean B(int i2, int i3);

        void C(int i2, int i3);
    }

    @Nullable
    public static String J(AdInfo adInfo) {
        return et(DownloadParams.transform(adInfo).mFileUrl);
    }

    public static void K(@NonNull AdInfo adInfo) {
        a(adInfo, false);
    }

    private static void a(@NonNull AdInfo adInfo, boolean z2) {
        try {
            Context context = mContext;
            if (context == null) {
                return;
            }
            if (!aq.isNetworkConnected(context)) {
                Context context2 = mContext;
                ae.V(context2, ag.dk(context2));
                return;
            }
            DownloadParams downloadParamsTransform = DownloadParams.transform(adInfo);
            downloadParamsTransform.requestInstallPermission = false;
            String str = downloadParamsTransform.mFileUrl;
            if (!TextUtils.isEmpty(str) && URLUtil.isNetworkUrl(str)) {
                DownloadTask.DownloadRequest downloadRequest = new DownloadTask.DownloadRequest(downloadParamsTransform.mFileUrl);
                downloadRequest.setDestinationFileName(eu(str));
                downloadRequest.setTag(downloadParamsTransform);
                downloadRequest.setDownloadEnablePause(downloadParamsTransform.downloadEnablePause);
                if (ServiceProvider.getSDKConfig().showNotification && bR(mContext)) {
                    downloadRequest.setNotificationVisibility(3);
                } else {
                    downloadRequest.setNotificationVisibility(0);
                }
                com.kwad.sdk.d.a.a(mContext, downloadParamsTransform.mDownloadid, downloadRequest);
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public static synchronized void bQ(Context context) {
        if (context != null) {
            if (!mHasInit) {
                mContext = context;
                com.kwad.sdk.c.Ey().init(context);
                b.Lz().init(context);
                mHasInit = true;
            }
        }
    }

    private static boolean bR(Context context) {
        try {
            new NotificationCompat.Builder(context, "");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean d(String str, File file) {
        try {
            return a(str, file, null, false);
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static String et(String str) {
        if (mContext == null) {
            return "";
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return bg.ef(mContext) + File.separator + eu(str);
    }

    private static String eu(String str) {
        return an.md5(str) + ".apk";
    }

    public static void ev(String str) {
        if (mContext == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.kwad.sdk.d.a.H(mContext, str);
    }

    public static void ew(String str) {
        if (mContext == null) {
            return;
        }
        String strEt = et(str);
        com.kwad.sdk.d.a.e(mContext, an.md5(str), strEt);
    }

    private static URLConnection ex(String str) throws NoSuchAlgorithmException, IOException, KeyManagementException {
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        r.wrapHttpURLConnection(uRLConnectionOpenConnection);
        uRLConnectionOpenConnection.setRequestProperty("Accept-Language", "zh-CN");
        uRLConnectionOpenConnection.setConnectTimeout(10000);
        uRLConnectionOpenConnection.setReadTimeout(120000);
        uRLConnectionOpenConnection.setUseCaches(false);
        uRLConnectionOpenConnection.setDoInput(true);
        uRLConnectionOpenConnection.setRequestProperty("Connection", "keep-alive");
        uRLConnectionOpenConnection.setRequestProperty("Charset", "UTF-8");
        return uRLConnectionOpenConnection;
    }

    public static void a(String str, File file, boolean z2) {
        a(str, file, null, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0148 A[EDGE_INSN: B:133:0x0148->B:76:0x0148 BREAK  A[LOOP:1: B:71:0x0138->B:135:0x0138], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006e A[Catch: all -> 0x0105, TRY_ENTER, TryCatch #2 {all -> 0x0105, blocks: (B:22:0x005a, B:30:0x0077, B:34:0x0089, B:29:0x006e), top: B:108:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089 A[Catch: all -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0105, blocks: (B:22:0x005a, B:30:0x0077, B:34:0x0089, B:29:0x006e), top: B:108:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013e A[Catch: all -> 0x0132, TryCatch #8 {all -> 0x0132, blocks: (B:62:0x011a, B:70:0x0136, B:71:0x0138, B:73:0x013e, B:75:0x0144, B:77:0x014a), top: B:120:0x011a }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014a A[Catch: all -> 0x0132, TRY_LEAVE, TryCatch #8 {all -> 0x0132, blocks: (B:62:0x011a, B:70:0x0136, B:71:0x0138, B:73:0x013e, B:75:0x0144, B:77:0x014a), top: B:120:0x011a }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x017d A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:90:0x0179, B:92:0x017d, B:96:0x01a8, B:95:0x0182), top: B:104:0x0179 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0182 A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:90:0x0179, B:92:0x017d, B:96:0x01a8, B:95:0x0182), top: B:104:0x0179 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r18, java.io.File r19, com.kwad.sdk.core.download.a.InterfaceC0607a r20, boolean r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.download.a.a(java.lang.String, java.io.File, com.kwad.sdk.core.download.a$a, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0008, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.InputStream a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r3, java.io.InputStream r4) {
        /*
            java.util.Set r3 = r3.entrySet()
            java.util.Iterator r3 = r3.iterator()
        L8:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L4e
            java.lang.Object r0 = r3.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = "Content-Encoding"
            boolean r1 = r2.equalsIgnoreCase(r1)
            if (r1 == 0) goto L8
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L8
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L8
            java.util.Iterator r0 = r0.iterator()
        L34:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L8
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r2 = "gzip"
            boolean r1 = r2.equalsIgnoreCase(r1)
            if (r1 == 0) goto L34
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream     // Catch: java.io.IOException -> L8
            r0.<init>(r4)     // Catch: java.io.IOException -> L8
            r4 = r0
        L4e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.download.a.a(java.util.Map, java.io.InputStream):java.io.InputStream");
    }
}
