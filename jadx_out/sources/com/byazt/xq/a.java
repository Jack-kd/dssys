package com.byazt.xq;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.byazt.au.jl;
import com.byazt.fn.b;
import com.byazt.fn.r;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.pu.TTDownloadField;
import com.byazt.yk.Downloader;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.sigmob.sdk.downloader.core.c;
import com.umeng.analytics.pro.ek;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import okhttp3.internal.http2.StreamResetException;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f27729e = null;
    public static Boolean gu = null;
    public static final String hp = "a";

    /* renamed from: q, reason: collision with root package name */
    public static ConnectivityManager f27732q;

    /* renamed from: l, reason: collision with root package name */
    public static final Pattern f27731l = Pattern.compile(".*\\d+ *- *(\\d+) */ *\\d+");
    public static String jx = null;

    /* renamed from: j, reason: collision with root package name */
    public static volatile SparseArray<Boolean> f27730j = new SparseArray<>();

    /* renamed from: w, reason: collision with root package name */
    public static volatile SparseArray<List<r>> f27734w = new SparseArray<>();

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f27728a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static Pattern eb = null;

    /* renamed from: s, reason: collision with root package name */
    public static Pattern f27733s = null;

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String strJ = j(com.byazt.yk.jx.mp());
        return strJ != null && strJ.equals(str);
    }

    private static String e(String str) {
        Matcher matcher;
        if (str == null) {
            return null;
        }
        try {
            if (eb == null) {
                eb = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");
            }
            matcher = eb.matcher(str);
        } catch (Exception unused) {
        }
        if (matcher.find()) {
            return matcher.group(1);
        }
        if (f27733s == null) {
            f27733s = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");
        }
        Matcher matcher2 = f27733s.matcher(str);
        if (matcher2.find()) {
            return matcher2.group(1);
        }
        return null;
    }

    public static String eb(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 31 || cCharAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static boolean gu(String str) {
        Thread.currentThread();
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            return file.isDirectory() && file.delete();
        }
        return false;
    }

    public static double hp(long j2) {
        return j2 / 1048576.0d;
    }

    public static boolean j(int i2) {
        return i2 == 206 || i2 == 200;
    }

    public static boolean jx(int i2) {
        return i2 == 200 || i2 == 201 || i2 == 0;
    }

    public static boolean l(long j2) {
        return j2 == -1;
    }

    private static String q() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i2 = bufferedReader.read();
                if (i2 <= 0) {
                    break;
                }
                sb.append((char) i2);
            }
            if (com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.l("Process", "get processName = " + sb.toString());
            }
            String string = sb.toString();
            hp(bufferedReader);
            return string;
        } catch (Throwable unused2) {
            hp(bufferedReader);
            return null;
        }
    }

    public static boolean s(Throwable th) {
        if (th == null) {
            return false;
        }
        if (th instanceof BaseException) {
            BaseException baseException = (BaseException) th;
            int errorCode = baseException.getErrorCode();
            if (errorCode == 1006) {
                return true;
            }
            if (errorCode == 1023 || errorCode == 1039 || errorCode == 1040 || errorCode == 1054 || errorCode == 1064) {
                String message = baseException.getMessage();
                return !TextUtils.isEmpty(message) && message.contains("ENOSPC");
            }
        } else if (th instanceof IOException) {
            String strE = e(th);
            if (!TextUtils.isEmpty(strE) && strE.contains("ENOSPC")) {
                return true;
            }
        }
        return false;
    }

    public static String w(String str) throws NoSuchAlgorithmException {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes("UTF-8"));
                    return hp(messageDigest.digest());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static boolean hp(int i2) {
        return i2 == 0 || i2 == 2;
    }

    public static boolean j(DownloadInfo downloadInfo) {
        boolean z2 = false;
        if (downloadInfo.isDeleteCacheIfCheckFailed() || !TextUtils.isEmpty(downloadInfo.getLastModified())) {
            com.byazt.nu.hp.l(hp, "dcache::curt=" + System.currentTimeMillis() + " expired=" + downloadInfo.getCacheExpiredTime());
            if (System.currentTimeMillis() > downloadInfo.getCacheExpiredTime()) {
                z2 = true;
            }
        } else {
            com.byazt.nu.hp.l(hp, "dcache::last modify is emtpy, so just return cache");
        }
        com.byazt.nu.hp.l(hp, "cacheExpired::dcache::name=" + downloadInfo.getName() + " expired=" + z2);
        return z2;
    }

    public static String jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return String.format("%s.tp", str);
    }

    public static long l(com.byazt.ip.eb ebVar) throws NumberFormatException {
        if (ebVar == null) {
            return -1L;
        }
        String strL = l(ebVar, c.f37367f);
        if (TextUtils.isEmpty(strL)) {
            return -1L;
        }
        try {
            Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(strL);
            if (matcher.find()) {
                return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            }
        } catch (Exception e2) {
            com.byazt.nu.hp.j(hp, "parse content-length from content-range failed " + e2);
        }
        return -1L;
    }

    public static String hp(byte[] bArr) {
        if (bArr != null) {
            return hp(bArr, 0, bArr.length);
        }
        throw new NullPointerException("bytes is null");
    }

    public static boolean a(Throwable th) {
        if (th == null) {
            return false;
        }
        String strE = e(th);
        return !TextUtils.isEmpty(strE) && strE.contains("Requested Range Not Satisfiable");
    }

    public static void jx(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        File file = new File(str, str2);
        if (file.exists()) {
            u.l(hp, "deleteFile: " + str + ServiceReference.DELIMITER + str2);
            file.delete();
        }
    }

    public static String hp(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            if (i2 >= 0 && i2 + i3 <= bArr.length) {
                int i4 = i3 * 2;
                char[] cArr = new char[i4];
                int i5 = 0;
                for (int i6 = 0; i6 < i3; i6++) {
                    byte b3 = bArr[i6 + i2];
                    int i7 = i5 + 1;
                    char[] cArr2 = f27728a;
                    cArr[i5] = cArr2[(b3 & 255) >> 4];
                    i5 += 2;
                    cArr[i7] = cArr2[b3 & ek.f49295m];
                }
                return new String(cArr, 0, i4);
            }
            throw new IndexOutOfBoundsException();
        }
        throw new NullPointerException("bytes is null");
    }

    public static long a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0L;
        }
        List<com.byazt.fu.l> listJx = com.byazt.yk.jx.di().jx(downloadInfo.getId());
        int chunkCount = downloadInfo.getChunkCount();
        boolean z2 = chunkCount > 1;
        if (!downloadInfo.isBreakpointAvailable()) {
            return 0L;
        }
        if (z2) {
            if (listJx == null || chunkCount != listJx.size()) {
                return 0L;
            }
            return l(listJx);
        }
        return downloadInfo.getCurBytes();
    }

    private static String gu() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (!(objInvoke instanceof String)) {
                return null;
            }
            String str = (String) objInvoke;
            try {
                if (!TextUtils.isEmpty(str) && com.byazt.nu.hp.hp()) {
                    com.byazt.nu.hp.l("Process", "processName = " + str);
                }
                return str;
            } catch (Throwable unused) {
                return str;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static String w(Context context) {
        if (context == null) {
            return null;
        }
        try {
            int iMyPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == iMyPid) {
                        if (com.byazt.nu.hp.hp()) {
                            com.byazt.nu.hp.l("Process", "processName = " + runningAppProcessInfo.processName);
                        }
                        return runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean eb(Throwable th) {
        return com.byazt.yk.jx.kg().hp(th);
    }

    public static long j(String str) throws BaseException {
        try {
            return new StatFs(str).getAvailableBytes();
        } catch (IllegalArgumentException e2) {
            throw new BaseException(1050, e2);
        } catch (Throwable th) {
            throw new BaseException(1052, th);
        }
    }

    public static File eb() {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception unused) {
            externalStorageState = "";
        }
        if ("mounted".equals(externalStorageState)) {
            return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        }
        return null;
    }

    public static boolean jx(DownloadInfo downloadInfo) {
        return hp(downloadInfo, downloadInfo.isForce(), downloadInfo.getMd5());
    }

    public static boolean s(String str) {
        Context contextMp;
        if (com.byazt.jb.hp.jx().l("save_path_security") > 0 && (contextMp = com.byazt.yk.jx.mp()) != null && !TextUtils.isEmpty(str) && !str.startsWith("/data")) {
            if (!str.contains("Android/data/" + contextMp.getPackageName())) {
                return false;
            }
        }
        return true;
    }

    public static boolean jx(String str, String str2, String str3) {
        return hp(l(str, str2, str3));
    }

    public static long l(String str) {
        if (str == null) {
            return -1L;
        }
        String[] strArrSplit = str.split(ServiceReference.DELIMITER);
        if (strArrSplit.length >= 2) {
            try {
                return Long.parseLong(strArrSplit[1]);
            } catch (NumberFormatException unused) {
                com.byazt.nu.hp.j(hp, "parse instance length failed with " + str);
            }
        }
        return -1L;
    }

    public static boolean q(Throwable th) {
        if (!(th instanceof BaseException)) {
            return false;
        }
        int errorCode = ((BaseException) th).getErrorCode();
        return errorCode == 1055 || errorCode == 1023 || errorCode == 1041 || errorCode == 1022 || errorCode == 1048 || errorCode == 1056 || errorCode == 1057 || errorCode == 1058 || errorCode == 1059 || errorCode == 1060 || errorCode == 1061 || errorCode == 1067 || errorCode == 1049 || errorCode == 1047 || errorCode == 1051 || errorCode == 1004 || errorCode == 1011 || errorCode == 1002 || errorCode == 1013;
    }

    private static String e() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            String processName = Application.getProcessName();
            if (!TextUtils.isEmpty(processName) && com.byazt.nu.hp.hp()) {
                com.byazt.nu.hp.l("Process", "processName = " + processName);
            }
            return processName;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean j(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return new File(str, str2).exists();
    }

    public static String a() {
        return hp(Downloader.getInstance(com.byazt.yk.jx.mp()).getGlobalSaveTempDir(), false);
    }

    public static boolean jx(com.byazt.ip.eb ebVar) {
        if (ebVar == null) {
            return false;
        }
        return hp.hp(8) ? "chunked".equals(ebVar.hp(c.f37369h)) || hp(ebVar) == -1 : hp(ebVar) == -1;
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            try {
                bArr[i2] = (byte) (Integer.parseInt(str.substring(i3, i3 + 2), 16) & 255);
            } catch (Exception unused) {
            }
        }
        try {
            return new String(bArr, "utf-8");
        } catch (Exception unused2) {
            return str;
        }
    }

    public static long q(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            Matcher matcher = Pattern.compile("max-age=([0-9]+)").matcher(str);
            if (matcher.find()) {
                return Long.parseLong(matcher.group(1));
            }
        } catch (Throwable unused) {
        }
        return 0L;
    }

    public static boolean w(Throwable th) {
        if (th == null) {
            return false;
        }
        String strE = e(th);
        return !TextUtils.isEmpty(strE) && strE.contains("Precondition Failed");
    }

    public static String j(Context context) {
        String str = jx;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strE = e();
        jx = strE;
        if (!TextUtils.isEmpty(strE)) {
            return jx;
        }
        String strGu = gu();
        jx = strGu;
        if (!TextUtils.isEmpty(strGu)) {
            return jx;
        }
        String strW = w(context);
        jx = strW;
        if (!TextUtils.isEmpty(strW)) {
            return jx;
        }
        String strQ = q();
        jx = strQ;
        return strQ;
    }

    public static String l(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return null;
        }
        return !TextUtils.isEmpty(str2) ? str2 : str;
    }

    public static boolean s() {
        Context contextMp = com.byazt.yk.jx.mp();
        return (contextMp == null || l(contextMp) || !jx(contextMp)) ? false : true;
    }

    public static String e(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            return th.toString();
        } catch (Throwable unused) {
            return "throwable getMsg error";
        }
    }

    public static boolean jx(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManagerHp = hp(context);
            if (connectivityManagerHp == null || (activeNetworkInfo = connectivityManagerHp.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static com.byazt.oy.a w(int i2) {
        com.byazt.oy.a aVar = com.byazt.oy.a.MAIN;
        com.byazt.oy.a aVar2 = com.byazt.oy.a.SUB;
        if (i2 == aVar2.ordinal()) {
            return aVar2;
        }
        com.byazt.oy.a aVar3 = com.byazt.oy.a.NOTIFICATION;
        return i2 == aVar3.ordinal() ? aVar3 : aVar;
    }

    public static long l(List<com.byazt.fu.l> list) {
        Iterator<com.byazt.fu.l> it = list.iterator();
        long jV = 0;
        while (it.hasNext()) {
            jV += it.next().v();
        }
        return jV;
    }

    public static long hp(com.byazt.ip.eb ebVar) {
        if (ebVar == null) {
            return -1L;
        }
        String strL = l(ebVar, c.f37366e);
        if (TextUtils.isEmpty(strL) && hp.hp(1)) {
            return l(ebVar);
        }
        try {
            return Long.parseLong(strL);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean jx() {
        /*
            java.lang.Boolean r0 = com.byazt.xq.a.gu
            if (r0 == 0) goto L9
            boolean r0 = r0.booleanValue()
            return r0
        L9:
            android.content.Context r0 = com.byazt.yk.jx.mp()
            java.lang.String r0 = j(r0)
            if (r0 == 0) goto L37
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            android.content.Context r2 = com.byazt.yk.jx.mp()
            java.lang.String r2 = r2.getPackageName()
            r1.append(r2)
            java.lang.String r2 = ":downloader"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            com.byazt.xq.a.gu = r0
            goto L3b
        L37:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            com.byazt.xq.a.gu = r0
        L3b:
            java.lang.Boolean r0 = com.byazt.xq.a.gu
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.xq.a.jx():boolean");
    }

    public static void l(DownloadInfo downloadInfo) {
        com.byazt.jb.hp hpVarHp;
        JSONObject jSONObjectJ;
        if (downloadInfo == null || (jSONObjectJ = (hpVarHp = com.byazt.jb.hp.hp(downloadInfo.getId())).j("download_dir")) == null) {
            return;
        }
        String strOptString = jSONObjectJ.optString("ins_desc");
        if (!TextUtils.isEmpty(strOptString)) {
            jx(downloadInfo.getSavePath(), strOptString);
        }
        String title = downloadInfo.getTitle();
        if (TextUtils.isEmpty(title)) {
            title = downloadInfo.getName();
        }
        String strHp = hp(title, hpVarHp);
        String savePath = downloadInfo.getSavePath();
        if (TextUtils.isEmpty(strHp) || TextUtils.isEmpty(savePath)) {
            return;
        }
        File file = new File(strHp);
        for (File file2 = new File(savePath); file != null && file2 != null && file2.isDirectory() && TextUtils.equals(file.getName(), file2.getName()); file2 = file2.getParentFile()) {
            gu(file2.getPath());
            file = file.getParentFile();
        }
    }

    public static long w(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return -1L;
        }
        List<com.byazt.fu.l> listJx = com.byazt.yk.jx.di().jx(downloadInfo.getId());
        if (downloadInfo.getChunkCount() == 1) {
            return downloadInfo.getCurBytes();
        }
        if (listJx != null && listJx.size() > 1) {
            long j2 = j(listJx);
            if (j2 >= 0) {
                return j2;
            }
        }
        return 0L;
    }

    public static String hp(com.byazt.ip.eb ebVar, String str) {
        String strE = e(ebVar.hp(c.f37371j));
        return TextUtils.isEmpty(strE) ? w(str) : strE;
    }

    public static String w() {
        return hp(Downloader.getInstance(com.byazt.yk.jx.mp()).getGlobalSaveDir(), true);
    }

    public static boolean jx(Throwable th) {
        if (th == null) {
            return false;
        }
        String strE = e(th);
        return !TextUtils.isEmpty(strE) && strE.contains("network not available");
    }

    public static String w(String str, String str2) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strW = w(str2);
        return (TextUtils.isEmpty(strW) || str.contains(strW)) ? str : new File(str, strW).getAbsolutePath();
    }

    public static com.byazt.fu.w hp(DownloadInfo downloadInfo, String str, String str2, int i2) throws InterruptedException, IOException, BaseException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str, str2);
            if (file.exists() && file.isDirectory()) {
                throw new BaseException(1035, new IOException(String.format("path is :%s, path is directory:%B:", str, Boolean.valueOf(file.isDirectory()))));
            }
            if (!file.exists()) {
                try {
                    File file2 = new File(str);
                    if (!file2.exists() || !file2.isDirectory()) {
                        if (!file2.exists()) {
                            if (!file2.mkdirs() && !file2.exists()) {
                                boolean zMkdirs = false;
                                if (com.byazt.jb.hp.hp(downloadInfo).hp("opt_mkdir_failed", 0) != 1) {
                                    throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + str);
                                }
                                int i3 = 0;
                                while (!zMkdirs) {
                                    int i4 = i3 + 1;
                                    if (i3 >= 3) {
                                        break;
                                    }
                                    try {
                                        Thread.sleep(10L);
                                        zMkdirs = file2.mkdirs();
                                        i3 = i4;
                                    } catch (InterruptedException unused) {
                                    }
                                }
                                if (!zMkdirs) {
                                    if (j(downloadInfo.getSavePath()) < 16384) {
                                        throw new BaseException(1006, "download savePath directory can not created:" + str);
                                    }
                                    throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + str);
                                }
                            }
                        } else {
                            file2.delete();
                            if (!file2.mkdirs() && !file2.exists()) {
                                throw new BaseException(1031, "download savePath is not directory:path=" + str);
                            }
                            throw new BaseException(1031, "download savePath is not directory:" + str);
                        }
                    }
                    file.createNewFile();
                } catch (IOException e2) {
                    throw new BaseException(1036, e2);
                }
            }
            return new com.byazt.fu.w(file, i2);
        }
        throw new BaseException(PointerIconCompat.TYPE_GRABBING, new IOException("path must be not empty"));
    }

    public static boolean j() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static boolean jx(BaseException baseException) {
        if (baseException == null) {
            return false;
        }
        if (baseException.getErrorCode() != 1011) {
            return baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException);
        }
        return true;
    }

    public static boolean j(Throwable th) {
        if (th == null) {
            return false;
        }
        String strE = e(th);
        return !TextUtils.isEmpty(strE) && strE.contains("Exception in connect");
    }

    private static void jx(Throwable th, String str) throws com.byazt.io.eb {
        com.byazt.io.eb ebVarHp = com.byazt.yk.jx.kg().hp(th, null);
        if (ebVarHp == null) {
            ebVarHp = com.byazt.yk.jx.kg().hp(th.getCause(), null);
        }
        if (ebVarHp == null) {
            return;
        }
        throw new com.byazt.io.eb(ebVarHp.getErrorCode(), l(ebVarHp, str)).hp(ebVarHp.hp());
    }

    private static long j(List<com.byazt.fu.l> list) {
        if (list == null || list.isEmpty()) {
            return -1L;
        }
        long jK = -1;
        for (com.byazt.fu.l lVar : list) {
            if (lVar != null && (lVar.k() <= lVar.u() || lVar.u() == 0)) {
                if (jK == -1 || jK > lVar.k()) {
                    jK = lVar.k();
                }
            }
        }
        return jK;
    }

    public static long jx(long j2) {
        return System.currentTimeMillis() - j2;
    }

    public static boolean jx(List<com.byazt.fu.jx> list) {
        if (list != null && list.size() != 0) {
            for (com.byazt.fu.jx jxVar : list) {
                if (jxVar != null && !TextUtils.isEmpty(jxVar.hp()) && !TextUtils.isEmpty(jxVar.l()) && "download-tc21-1-15".equals(jxVar.hp()) && "download-tc21-1-15".equals(jxVar.l())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int l(String str, String str2, String str3) {
        return com.byazt.g.jx.hp(str3, new File(str, str2));
    }

    public static String l(int i2) {
        String str = "ttmd5 check code = " + i2 + ", ";
        if (i2 != 99) {
            switch (i2) {
                case 0:
                    return str + "md5 match";
                case 1:
                    return str + "md5 not match";
                case 2:
                    return str + "md5 empty";
                case 3:
                    return str + "ttmd5 version not support";
                case 4:
                    return str + "ttmd5 tag parser error";
                case 5:
                    return str + "file not exist";
                case 6:
                    return str + "get file md5 error";
                default:
                    return str;
            }
        }
        return str + "unknown error";
    }

    @TargetApi(19)
    private static void l(File file, File file2, boolean z2) throws IOException {
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    FileChannel channel2 = fileOutputStream.getChannel();
                    try {
                        long size = channel.size();
                        long j2 = 0;
                        while (j2 < size) {
                            long j3 = size - j2;
                            if (j3 > 31457280) {
                                j3 = 31457280;
                            }
                            long jTransferFrom = channel2.transferFrom(channel, j2, j3);
                            if (jTransferFrom == 0) {
                                break;
                            } else {
                                j2 += jTransferFrom;
                            }
                        }
                        if (channel2 != null) {
                            channel2.close();
                        }
                        fileOutputStream.close();
                        channel.close();
                        fileInputStream.close();
                        long length = file.length();
                        long length2 = file2.length();
                        if (length == length2) {
                            if (z2) {
                                file2.setLastModified(file.lastModified());
                                return;
                            }
                            return;
                        }
                        throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "' Expected length: " + length + " Actual: " + length2);
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public static List<com.byazt.fu.l> hp(List<com.byazt.fu.l> list) {
        SparseArray sparseArray = new SparseArray();
        SparseArray sparseArray2 = new SparseArray();
        for (com.byazt.fu.l lVar : list) {
            if (lVar != null) {
                if (lVar.j()) {
                    sparseArray.put(lVar.ec(), lVar);
                    List<com.byazt.fu.l> list2 = (List) sparseArray2.get(lVar.ec());
                    if (list2 != null) {
                        Iterator<com.byazt.fu.l> it = list2.iterator();
                        while (it.hasNext()) {
                            it.next().hp(lVar);
                        }
                        lVar.hp(list2);
                    }
                } else {
                    com.byazt.fu.l lVar2 = (com.byazt.fu.l) sparseArray.get(lVar.l());
                    if (lVar2 != null) {
                        List<com.byazt.fu.l> listEb = lVar2.eb();
                        if (listEb == null) {
                            listEb = new ArrayList<>();
                            lVar2.hp(listEb);
                        }
                        lVar.hp(lVar2);
                        listEb.add(lVar);
                    } else {
                        List arrayList = (List) sparseArray2.get(lVar.l());
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            sparseArray2.put(lVar.l(), arrayList);
                        }
                        arrayList.add(lVar);
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            arrayList2.add(sparseArray.get(sparseArray.keyAt(i2)));
        }
        return arrayList2.isEmpty() ? list : arrayList2;
    }

    public static boolean l(File file, File file2) throws BaseException {
        String str = hp;
        u.l(str, "moveFile1: src:" + file.getPath() + " dest:" + file2.getPath());
        boolean zRenameTo = file.renameTo(file2);
        if (!zRenameTo) {
            zRenameTo = hp(file, file2);
            try {
                u.l(str, "moveFile2: src:" + file.getPath() + " dest:" + file2.getPath());
                file.delete();
            } catch (Throwable unused) {
            }
        }
        return zRenameTo;
    }

    public static boolean l(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManagerHp = hp(context);
            if (connectivityManagerHp != null && (activeNetworkInfo = connectivityManagerHp.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                if (1 == activeNetworkInfo.getType()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static String hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return String.format("%s%s%s", str, File.separator, str2);
    }

    public static String hp(String str, String str2, String str3) {
        String strHp;
        if ((TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.isEmpty(str3)) {
            return null;
        }
        if (!TextUtils.isEmpty(str2)) {
            strHp = hp(str2, str3);
        } else {
            strHp = hp(str, str3);
        }
        if (TextUtils.isEmpty(strHp)) {
            return null;
        }
        return String.format("%s.tp", strHp);
    }

    public static boolean l() {
        return !jx() && com.byazt.yk.jx.jx() && jl.hp(true).eb();
    }

    public static boolean l(Throwable th) {
        if (th == null) {
            return false;
        }
        String strE = e(th);
        if (!(th instanceof com.byazt.io.l) || (((com.byazt.io.l) th).hp() != 403 && (TextUtils.isEmpty(strE) || !strE.contains("403")))) {
            return !TextUtils.isEmpty(strE) && strE.contains("Forbidden");
        }
        return true;
    }

    public static void hp(DownloadInfo downloadInfo) {
        hp(downloadInfo, true);
    }

    public static boolean l(BaseException baseException) {
        if (!(baseException instanceof com.byazt.io.l)) {
            return false;
        }
        com.byazt.io.l lVar = (com.byazt.io.l) baseException;
        return lVar.hp() == 412 || lVar.hp() == 416;
    }

    public static void hp(DownloadInfo downloadInfo, boolean z2) {
        if (downloadInfo == null) {
            return;
        }
        if (z2) {
            try {
                jx(downloadInfo.getSavePath(), downloadInfo.getName());
            } catch (Throwable unused) {
                return;
            }
        }
        jx(downloadInfo.getTempPath(), downloadInfo.getTempName());
        if (downloadInfo.isSavePathRedirected()) {
            l(downloadInfo);
        }
        if (z2) {
            String strW = w(downloadInfo.getUrl());
            if (TextUtils.isEmpty(strW) || TextUtils.isEmpty(downloadInfo.getSavePath()) || !downloadInfo.getSavePath().contains(strW)) {
                return;
            }
            gu(downloadInfo.getSavePath());
        }
    }

    public static String l(Throwable th, String str) {
        if (str == null) {
            return e(th);
        }
        return str + "-" + e(th);
    }

    public static void l(List<com.byazt.fu.jx> list, DownloadInfo downloadInfo) {
        long ttnetProtectTimeout = downloadInfo.getTtnetProtectTimeout();
        if (ttnetProtectTimeout > 300) {
            list.add(new com.byazt.fu.jx("extra_ttnet_protect_timeout", String.valueOf(ttnetProtectTimeout)));
        }
    }

    public static String l(com.byazt.ip.eb ebVar, String str) {
        if (ebVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String strHp = ebVar.hp(str);
        if (!com.byazt.jb.hp.jx().l("fix_get_http_resp_head_ignore_case", true)) {
            return strHp;
        }
        if (TextUtils.isEmpty(strHp)) {
            strHp = ebVar.hp(str.toLowerCase());
        }
        return TextUtils.isEmpty(strHp) ? ebVar.hp(str.toUpperCase()) : strHp;
    }

    public static boolean hp(Context context, String str) {
        return (context == null || TextUtils.isEmpty(str) || context.checkCallingOrSelfPermission(str) != 0) ? false : true;
    }

    public static boolean hp(DownloadInfo downloadInfo, boolean z2, String str) {
        if (!z2 && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            try {
                if (new File(downloadInfo.getSavePath(), downloadInfo.getName()).exists()) {
                    if (jx(downloadInfo.getSavePath(), downloadInfo.getName(), str)) {
                        return true;
                    }
                }
            } catch (OutOfMemoryError unused) {
            }
        }
        return false;
    }

    public static boolean l(BaseException baseException, DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.isOnlyWifi() && jx(com.byazt.yk.jx.mp());
    }

    public static int hp(File file, String str) {
        return com.byazt.g.jx.hp(str, file);
    }

    public static void hp(DownloadInfo downloadInfo, b bVar, r rVar) {
        boolean z2;
        boolean z3;
        BaseException baseException;
        boolean z4;
        String str = hp;
        com.byazt.nu.hp.l(str, "saveFileAsTargetName targetName is " + downloadInfo.getTargetFilePath());
        try {
            synchronized (f27730j) {
                try {
                    Boolean bool = f27730j.get(downloadInfo.getId());
                    Boolean bool2 = Boolean.TRUE;
                    if (bool == bool2) {
                        com.byazt.nu.hp.l(str, "has another same task is saving temp file");
                        if (rVar != null) {
                            List<r> arrayList = f27734w.get(downloadInfo.getId());
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                                f27734w.put(downloadInfo.getId(), arrayList);
                            }
                            arrayList.add(rVar);
                        }
                        return;
                    }
                    com.byazt.nu.hp.l(str, "saveTempFileStatusMap put id:" + downloadInfo.getId());
                    f27730j.put(downloadInfo.getId(), bool2);
                    File file = new File(downloadInfo.getTempPath(), downloadInfo.getTempName());
                    File file2 = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                    boolean zS = s(downloadInfo.getSavePath());
                    if (file2.exists()) {
                        com.byazt.nu.hp.l(str, "targetFile exist");
                        int iHp = hp(file2, downloadInfo.getMd5());
                        if (hp(iHp)) {
                            com.byazt.nu.hp.l(str, "tempFile not exist , targetFile exists and md5 check valid");
                            downloadInfo.setTTMd5CheckStatus(iHp);
                            if (rVar != null) {
                                rVar.hp();
                            }
                            hp(downloadInfo.getId(), true, (BaseException) null);
                            z2 = true;
                        } else {
                            if (file.exists()) {
                                z2 = true;
                                z3 = true;
                            } else {
                                z2 = true;
                                BaseException baseException2 = new BaseException(1005, String.format("Can't save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist and target file is exist but md5 verify invalid :%s", downloadInfo.getTempPath(), downloadInfo.getTempName(), downloadInfo.getSavePath(), downloadInfo.getName(), l(iHp)));
                                if (rVar != null) {
                                    rVar.hp(baseException2);
                                }
                                hp(downloadInfo.getId(), false, baseException2);
                                z3 = false;
                            }
                            if (zS && !file2.delete()) {
                                if (z3) {
                                    BaseException baseException3 = new BaseException(1037, "delete targetPath file existed with md5 check invalid status:" + l(iHp));
                                    if (rVar != null) {
                                        rVar.hp(baseException3);
                                    }
                                    hp(downloadInfo.getId(), false, baseException3);
                                } else if (bVar != null) {
                                    com.byazt.no.hp.hp(bVar, downloadInfo, new BaseException(1038, "tempFile is not exist and target file is exist but md5 verify invalid, delete target file failed"), downloadInfo.getStatus());
                                }
                            }
                        }
                        z3 = false;
                    } else {
                        z2 = true;
                        if (file.exists()) {
                            z3 = true;
                        } else {
                            BaseException baseException4 = new BaseException(1005, String.format("Can't save the temp downloaded file(%s/%s) to the target file(%s/%s) because tempFile is not exist", downloadInfo.getTempPath(), downloadInfo.getTempName(), downloadInfo.getSavePath(), downloadInfo.getName()));
                            if (rVar != null) {
                                rVar.hp(baseException4);
                            }
                            hp(downloadInfo.getId(), false, baseException4);
                            z3 = false;
                        }
                    }
                    if (z3) {
                        try {
                            int iHp2 = com.byazt.jb.hp.hp(downloadInfo.getId()).hp("download_finish_check_ttmd5", 2);
                            if (iHp2 > 0) {
                                int iHp3 = hp(file, downloadInfo.getMd5());
                                downloadInfo.setTTMd5CheckStatus(iHp3);
                                if (iHp2 >= 2 && !hp(iHp3)) {
                                    BaseException baseException5 = new BaseException(1034, l(iHp3));
                                    if (rVar != null) {
                                        rVar.hp(baseException5);
                                    }
                                    hp(downloadInfo.getId(), false, baseException5);
                                    hp(downloadInfo, zS);
                                    return;
                                }
                            }
                            z4 = !l(file, file2);
                            baseException = null;
                        } catch (BaseException e2) {
                            if (com.byazt.jb.hp.hp(downloadInfo.getId()).hp("fix_file_rename_failed")) {
                                baseException = e2;
                                z4 = z2;
                            } else {
                                baseException = e2;
                                z4 = false;
                            }
                        }
                        if (z4) {
                            if (baseException == null) {
                                baseException = new BaseException(1038, String.format("Can't save the temp downloaded file(%s/%s) to the target file(%s/%s)", downloadInfo.getTempPath(), downloadInfo.getTempName(), downloadInfo.getSavePath(), downloadInfo.getName()));
                            }
                            if (rVar != null) {
                                rVar.hp(baseException);
                            }
                            hp(downloadInfo.getId(), false, baseException);
                            return;
                        }
                        if (rVar != null) {
                            rVar.hp();
                        }
                        hp(downloadInfo.getId(), z2, (BaseException) null);
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            com.byazt.nu.hp.l(hp, "saveFileAsTargetName throwable " + th.getMessage());
            if (rVar != null) {
                rVar.hp(new BaseException(1038, l(th, "saveFileAsTargetName")));
            }
        }
    }

    private static void hp(int i2, boolean z2, BaseException baseException) {
        synchronized (f27730j) {
            try {
                List<r> list = f27734w.get(i2);
                if (list != null) {
                    for (r rVar : list) {
                        if (rVar != null) {
                            if (z2) {
                                rVar.hp();
                            } else {
                                rVar.hp(baseException);
                            }
                        }
                    }
                }
                com.byazt.nu.hp.l(hp, "handleTempSaveCallback id:" + i2);
                f27730j.remove(i2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void hp(DownloadInfo downloadInfo, String str) throws BaseException {
        if (downloadInfo == null || TextUtils.isEmpty(str) || str.equals(downloadInfo.getName())) {
            return;
        }
        File file = new File(downloadInfo.getSavePath(), str);
        File file2 = new File(downloadInfo.getSavePath(), downloadInfo.getName());
        u.l(hp, "copyFileFromExistFileWithSameName: existFile:" + file.getPath() + " targetFile:" + file2.getPath());
        if (file2.exists() && !file2.canWrite()) {
            throw new BaseException(1001, "targetPath file exists but read-only");
        }
        if (!hp(file, file2)) {
            throw new BaseException(1001, String.format("Can't copy the exist file(%s/%s) to the target file(%s/%s)", downloadInfo.getSavePath(), str, downloadInfo.getSavePath(), downloadInfo.getName()));
        }
    }

    public static boolean hp(File file, File file2) throws BaseException {
        return hp(file, file2, true);
    }

    public static boolean hp(File file, File file2, boolean z2) throws BaseException {
        if (file != null && file2 != null) {
            try {
                if (file.exists() && !file.isDirectory() && !file.getCanonicalPath().equals(file2.getCanonicalPath())) {
                    File parentFile = file2.getParentFile();
                    if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                        throw new BaseException(1053, "Destination '" + parentFile + "' directory cannot be created");
                    }
                    u.l(hp, "copyFile: srcFile:" + file.getPath() + " destFile:" + file2.getPath());
                    if (file2.exists() && !file2.canWrite()) {
                        throw new IOException("Destination '" + file2 + "' exists but is read-only");
                    }
                    l(file, file2, z2);
                    return true;
                }
            } catch (BaseException e2) {
                throw e2;
            } catch (Throwable th) {
                hp(th, "CopyFile");
                return false;
            }
        }
        return false;
    }

    public static boolean hp(int i2, String str) {
        if (hp.hp(16777216)) {
            return i2 == 206 || i2 == 1;
        }
        if (i2 >= 400) {
            return false;
        }
        return i2 == 206 || i2 == 1 || "bytes".equals(str);
    }

    public static List<com.byazt.fu.jx> hp(List<com.byazt.fu.jx> list, String str, com.byazt.fu.l lVar) {
        return hp(list, str, lVar.zy(), lVar.u());
    }

    public static List<com.byazt.fu.jx> hp(List<com.byazt.fu.jx> list, String str, long j2, long j3) {
        String str2;
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            for (com.byazt.fu.jx jxVar : list) {
                if (jxVar != null) {
                    arrayList.add(jxVar);
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new com.byazt.fu.jx(c.f37364c, str));
        }
        arrayList.add(new com.byazt.fu.jx("Accept-Encoding", "identity"));
        if (j3 <= 0) {
            str2 = String.format("bytes=%s-", String.valueOf(j2));
        } else {
            str2 = String.format("bytes=%s-%s", String.valueOf(j2), String.valueOf(j3));
        }
        arrayList.add(new com.byazt.fu.jx(c.f37363b, str2));
        com.byazt.nu.hp.l(hp, " range CurrentOffset:" + j2 + " EndOffset:" + j3 + ", range = " + str2);
        return arrayList;
    }

    public static boolean hp(int i2, String str, String str2) {
        return i2 == -3 && !j(str, str2);
    }

    public static ConnectivityManager hp(Context context) {
        ConnectivityManager connectivityManager = f27732q;
        if (connectivityManager != null) {
            return connectivityManager;
        }
        ConnectivityManager connectivityManager2 = (ConnectivityManager) context.getSystemService("connectivity");
        f27732q = connectivityManager2;
        return connectivityManager2;
    }

    public static boolean hp() {
        Boolean bool = f27729e;
        if (bool != null) {
            return bool.booleanValue();
        }
        String strJ = j(com.byazt.yk.jx.mp());
        boolean z2 = (strJ == null || !strJ.contains(":")) && strJ != null && strJ.equals(com.byazt.yk.jx.mp().getPackageName());
        f27729e = Boolean.valueOf(z2);
        return z2;
    }

    public static boolean hp(Throwable th) {
        if (th == null) {
            return false;
        }
        String strE = e(th);
        if (th instanceof SocketTimeoutException) {
            return true;
        }
        return !TextUtils.isEmpty(strE) && (strE.contains("time out") || strE.contains("Time-out"));
    }

    public static boolean hp(BaseException baseException) {
        return baseException != null && baseException.getErrorCode() == 1051;
    }

    public static void hp(Throwable th, String str) throws BaseException {
        String str2 = !TextUtils.isEmpty(str) ? str : "";
        if (!(th instanceof BaseException)) {
            if (!(th instanceof SSLHandshakeException)) {
                if (!hp(th)) {
                    if (!w(th)) {
                        if (!a(th)) {
                            if (!l(th)) {
                                if (!jx(th)) {
                                    if (!j(th)) {
                                        if (th instanceof IOException) {
                                            jx(th, str);
                                            hp((IOException) th, str);
                                            return;
                                        }
                                        throw new BaseException(1000, l(th, str2));
                                    }
                                    throw new BaseException(1041, l(th, str2));
                                }
                                throw new BaseException(1049, l(th, str2));
                            }
                            throw new BaseException(1047, l(th, str2));
                        }
                        throw new com.byazt.io.l(1004, 416, l(th, str2));
                    }
                    throw new com.byazt.io.l(1004, TTAdConstant.IMAGE_URL_CODE, l(th, str2));
                }
                throw new BaseException(1048, l(th, str2));
            }
            throw new BaseException(1011, l(th, str2));
        }
        BaseException baseException = (BaseException) th;
        baseException.setErrorMsg(str2 + "-" + baseException.getErrorMessage());
        throw baseException;
    }

    public static void hp(IOException iOException, String str) throws BaseException {
        if (str == null) {
            str = "";
        }
        String strL = l(iOException, str);
        if (!(iOException instanceof ConnectException)) {
            if (!(iOException instanceof UnknownHostException)) {
                if (!(iOException instanceof NoRouteToHostException)) {
                    if (!(iOException instanceof UnknownServiceException)) {
                        if (!(iOException instanceof PortUnreachableException)) {
                            if (!(iOException instanceof SocketTimeoutException)) {
                                if (!(iOException instanceof SocketException)) {
                                    if (!(iOException instanceof HttpRetryException)) {
                                        if (!(iOException instanceof ProtocolException)) {
                                            if (!(iOException instanceof MalformedURLException)) {
                                                if (!(iOException instanceof FileNotFoundException)) {
                                                    if (!(iOException instanceof InterruptedIOException)) {
                                                        if (!(iOException instanceof UnsupportedEncodingException)) {
                                                            if (!(iOException instanceof EOFException)) {
                                                                if (!(iOException instanceof StreamResetException)) {
                                                                    if (!(iOException instanceof SSLException)) {
                                                                        if (s(iOException)) {
                                                                            throw new BaseException(1006, strL);
                                                                        }
                                                                        throw new BaseException(1023, strL);
                                                                    }
                                                                    throw new BaseException(1011, strL);
                                                                }
                                                                throw new BaseException(1067, strL);
                                                            }
                                                            throw new BaseException(1066, strL);
                                                        }
                                                        throw new BaseException(1065, strL);
                                                    }
                                                    throw new BaseException(1064, strL);
                                                }
                                                throw new BaseException(1063, strL);
                                            }
                                            throw new BaseException(1062, strL);
                                        }
                                        throw new BaseException(1061, strL);
                                    }
                                    throw new BaseException(1060, strL);
                                }
                                throw new BaseException(1059, strL);
                            }
                            throw new BaseException(1048, strL);
                        }
                        throw new BaseException(1058, strL);
                    }
                    throw new BaseException(1057, strL);
                }
                throw new BaseException(1056, strL);
            }
            throw new BaseException(1055, strL);
        }
        throw new BaseException(1041, strL);
    }

    public static boolean hp(BaseException baseException, DownloadInfo downloadInfo) {
        if (baseException == null) {
            return false;
        }
        int errorCode = baseException.getErrorCode();
        if (errorCode == 1000 || errorCode == 1032 || errorCode == 1033 || errorCode == 1034 || errorCode == 1008 || errorCode == 1026 || errorCode == 1027 || errorCode == 1044 || errorCode == 1020) {
            return true;
        }
        return (errorCode == 1049 || errorCode == 1055 || errorCode == 1006 || downloadInfo == null || downloadInfo.getCurBytes() >= com.anythink.china.a.c.f1403x) ? false : true;
    }

    public static <K> HashMap<Integer, K> hp(SparseArray<K> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        HashMap<Integer, K> map = new HashMap<>();
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = sparseArray.keyAt(i2);
            map.put(Integer.valueOf(iKeyAt), sparseArray.valueAt(i2));
        }
        return map;
    }

    public static <K> void hp(SparseArray<K> sparseArray, Map<Integer, K> map) {
        if (map == null || sparseArray == null) {
            return;
        }
        for (Integer num : map.keySet()) {
            if (num != null) {
                sparseArray.put(num.intValue(), map.get(num));
            }
        }
    }

    public static boolean hp(List<com.byazt.fu.jx> list, List<com.byazt.fu.jx> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        return new HashSet(list).equals(new HashSet(list2));
    }

    public static void hp(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static void hp(Cursor... cursorArr) {
        if (cursorArr == null) {
            return;
        }
        for (Cursor cursor : cursorArr) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static String hp(String str, int i2) {
        if (i2 == 0) {
            return "";
        }
        return (TextUtils.isEmpty(str) || str.length() <= i2) ? str : str.substring(0, i2);
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

    private static String hp(File file, boolean z2) {
        Context contextMp = com.byazt.yk.jx.mp();
        if (hp(file)) {
            return file.getAbsolutePath();
        }
        int i2 = contextMp.getApplicationInfo().targetSdkVersion;
        if (Build.VERSION.SDK_INT >= 29 && ((i2 == 29 && !Environment.isExternalStorageLegacy()) || i2 > 29)) {
            if (com.byazt.jb.hp.jx().l("fix_save_external_dir") <= 0) {
                File fileHp = com.byazt.rz.l.hp(contextMp, Environment.DIRECTORY_DOWNLOADS);
                if (hp(fileHp)) {
                    return fileHp.getAbsolutePath();
                }
            }
        } else {
            if (z2) {
                File fileEb = eb();
                if (hp(fileEb)) {
                    return fileEb.getAbsolutePath();
                }
            }
            if (com.byazt.jb.hp.jx().l("fix_save_external_dir") <= 0) {
                File fileHp2 = com.byazt.rz.l.hp(contextMp, Environment.DIRECTORY_DOWNLOADS);
                if (hp(fileHp2)) {
                    return fileHp2.getAbsolutePath();
                }
            }
        }
        return com.byazt.rz.l.hp(contextMp).getAbsolutePath();
    }

    public static boolean hp(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.exists() || file.mkdirs()) {
                return file.isDirectory();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void hp(List<com.byazt.fu.jx> list, DownloadInfo downloadInfo) {
        long throttleNetSpeed = downloadInfo.getThrottleNetSpeed();
        if (throttleNetSpeed > 0) {
            list.add(new com.byazt.fu.jx("extra_throttle_net_speed", String.valueOf(throttleNetSpeed)));
        }
    }

    public static int hp(Object obj, int i2) {
        try {
            return ((Integer) obj).intValue();
        } catch (ClassCastException unused) {
            return i2;
        }
    }

    public static String hp(Object obj, String str) {
        try {
            return (String) obj;
        } catch (ClassCastException unused) {
            return str;
        }
    }

    public static boolean hp(Object obj, boolean z2) {
        try {
            return ((Boolean) obj).booleanValue();
        } catch (ClassCastException unused) {
            return z2;
        }
    }
}
