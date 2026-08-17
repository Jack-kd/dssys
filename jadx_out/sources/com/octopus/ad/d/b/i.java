package com.octopus.ad.d.b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.byazt.pu.TTDownloadField;
import com.octopus.ad.internal.c.o;
import com.octopus.ad.internal.q;
import com.octopus.ad.utils.OctUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes4.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static List<String> f34008a;

    public static long a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return 0L;
        }
    }

    public static String b(Context context) {
        String strB = o.b(context, "codeList");
        return strB == null ? "" : strB;
    }

    public static long c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return 0L;
        }
    }

    public static String d(Context context) {
        return context.getPackageName();
    }

    public static String e(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String f(Context context) {
        String strA = OctUtil.a().a(context, 1010);
        return strA == null ? "" : strA;
    }

    public static String g(Context context) {
        String strB = o.b(context, "__GROUPVERSION__");
        return strB == null ? "" : strB;
    }

    public static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String i(Context context) {
        String str;
        try {
            str = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            str = "";
        }
        return TextUtils.isEmpty(str) ? d(context) : str;
    }

    public static String j(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem + "";
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
            return null;
        }
    }

    public static String k(Context context) {
        String strA = a(context, "com.huawei.appmarket");
        return strA == null ? "" : strA;
    }

    public static String l(Context context) {
        String strA = a(context, "com.huawei.hwid");
        return strA == null ? "" : strA;
    }

    public static String m(Context context) {
        if (!f()) {
            return null;
        }
        String strA = a(context, "com.bbk.appstore");
        return strA == null ? "" : strA;
    }

    public static String n(Context context) {
        if (!f()) {
            return null;
        }
        String strA = a(context, "com.vivo.browser");
        return strA == null ? "" : strA;
    }

    public static String o(Context context) {
        if (!f()) {
            return null;
        }
        String strA = a(context, "com.kaixinkan.ugc.video.atom");
        return strA == null ? "" : strA;
    }

    public static String p(Context context) {
        if (!f()) {
            return null;
        }
        String strA = a(context, "com.vivo.minigamecenter");
        return strA == null ? "" : strA;
    }

    public static String q(Context context) {
        if (!f()) {
            return null;
        }
        String strA = a(context, "com.android.bbkmusic");
        return strA == null ? "" : strA;
    }

    public static boolean r(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
    }

    public static long d() {
        return System.currentTimeMillis() / 1000;
    }

    @Nullable
    private static String h() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.vivo.os.name").getInputStream()), 1024);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            bufferedReader = null;
            th = th2;
        }
        try {
            String line = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
                return line;
            } catch (Exception e2) {
                f.a("OctopusAd", "An Exception Caught", e2);
                return line;
            }
        } catch (Exception unused2) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception e3) {
                    f.a("OctopusAd", "An Exception Caught", e3);
                }
            }
            return "";
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception e4) {
                    f.a("OctopusAd", "An Exception Caught", e4);
                }
            }
            throw th;
        }
    }

    public static String b() {
        return (new File("/system/bin/su").exists() && c("/system/bin/su")) ? "yes" : (new File("/system/xbin/su").exists() && c("/system/xbin/su")) ? "yes" : "no";
    }

    public static boolean d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        List<String> list = f34008a;
        if (list != null && !list.isEmpty()) {
            return f34008a.contains(str);
        }
        if (a(str)) {
            return true;
        }
        return c(context, str);
    }

    public static String e() {
        if (!f()) {
            return null;
        }
        return h() + i();
    }

    public static boolean f() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("bbk") || str.toLowerCase().startsWith("vivo");
    }

    public static boolean g() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("tun0".equals(networkInterfaceNextElement.getName()) || "ppp0".equals(networkInterfaceNextElement.getName())) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return false;
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
            return false;
        }
    }

    public static long a() {
        try {
            ActivityManager activityManager = (ActivityManager) q.a().l().getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Exception unused) {
            return 500000000L;
        }
    }

    private static boolean c(String str) {
        Process processExec = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec("ls -l " + str);
                String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
                if (line != null && line.length() >= 4) {
                    char cCharAt = line.charAt(3);
                    if (cCharAt == 's' || cCharAt == 'x') {
                        processExec.destroy();
                        return true;
                    }
                }
            } catch (Exception e2) {
                f.a("OctopusAd", "An Exception Caught", e2);
                if (processExec == null) {
                    return false;
                }
            }
            processExec.destroy();
            return false;
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
    }

    public static PackageInfo b(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    return packageManager.getPackageInfo(str, 128);
                }
            } catch (Exception e2) {
                f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
        return null;
    }

    @Nullable
    private static String i() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.vivo.os.version").getInputStream()), 1024);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            bufferedReader = null;
            th = th2;
        }
        try {
            String line = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
                return line;
            } catch (Exception e2) {
                f.a("OctopusAd", "An Exception Caught", e2);
                return line;
            }
        } catch (Exception unused2) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception e3) {
                    f.a("OctopusAd", "An Exception Caught", e3);
                }
            }
            return "";
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception e4) {
                    f.a("OctopusAd", "An Exception Caught", e4);
                }
            }
            throw th;
        }
    }

    public static String a(Context context, String str) {
        try {
            PackageInfo packageInfoB = b(context, str);
            if (packageInfoB == null) {
                return null;
            }
            return String.valueOf(packageInfoB.versionCode);
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return null;
        }
    }

    public static boolean b(String str) throws ClassNotFoundException {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File("data/data/" + str).exists();
    }

    public static String c() {
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSize = statFs.getBlockSize();
            return (statFs.getBlockCount() * blockSize) + "";
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
            return null;
        }
    }

    public static boolean a(Context context, String str, boolean z2) {
        List<String> list;
        a(context, z2);
        if (TextUtils.isEmpty(str) || (list = f34008a) == null) {
            return false;
        }
        return list.contains(str);
    }

    public static void a(Context context, boolean z2) {
        try {
            if (f34008a == null) {
                f34008a = new ArrayList();
                if (context == null) {
                    return;
                }
                if (z2) {
                    String strA = OctUtil.a().a(context, 1002);
                    if (TextUtils.isEmpty(strA)) {
                        return;
                    }
                    try {
                        JSONArray jSONArray = new JSONArray(new String(a(Base64.decode(strA, 0), "Ots0kza9lq")));
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            f34008a.add(jSONArray.getString(i2));
                        }
                        return;
                    } catch (Exception e2) {
                        f.a("OctopusAd", "An Exception Caught", e2);
                        return;
                    }
                }
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.LAUNCHER");
                Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
                while (it.hasNext()) {
                    f34008a.add(it.next().activityInfo.packageName);
                }
            }
        } catch (Throwable th) {
            f.a("OctopusAd", "An Exception Caught", th);
        }
    }

    public static boolean c(Context context, String str) {
        ApplicationInfo applicationInfo;
        if (context == null || str == null || str.isEmpty()) {
            return false;
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        return applicationInfo != null;
    }

    public static byte[] a(byte[] bArr, String str) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = (byte) (bArr[i2] ^ str.charAt(i2 % str.length()));
        }
        return bArr2;
    }
}
