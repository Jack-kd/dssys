package com.octopus.ad.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.d.b.f;
import com.sigmob.sdk.archives.tar.e;
import com.sigmob.sdk.base.n;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f35078a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static final Map<String, String> f35079b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private static final Set<String> f35080c = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: d, reason: collision with root package name */
    private static final Set<String> f35081d = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: e, reason: collision with root package name */
    private static final ExecutorService f35082e = Executors.newFixedThreadPool(2);

    /* renamed from: f, reason: collision with root package name */
    private static final ExecutorService f35083f = Executors.newSingleThreadExecutor();

    /* renamed from: com.octopus.ad.utils.a$a, reason: collision with other inner class name */
    public interface InterfaceC0760a {
        void a(File file);

        void a(Throwable th);
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final String f35093a;

        /* renamed from: b, reason: collision with root package name */
        public final String f35094b;

        /* renamed from: c, reason: collision with root package name */
        public final String f35095c;

        /* renamed from: d, reason: collision with root package name */
        public final String f35096d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f35097e;

        public b(String str, String str2, String str3, String str4, boolean z2) {
            this.f35093a = str;
            this.f35094b = str2;
            this.f35095c = str3;
            this.f35096d = str4;
            this.f35097e = z2;
        }

        public boolean a() {
            if (TextUtils.isEmpty(this.f35093a)) {
                return false;
            }
            if (this.f35097e) {
                return true;
            }
            return (TextUtils.isEmpty(this.f35094b) || TextUtils.isEmpty(this.f35095c) || TextUtils.isEmpty(this.f35096d)) ? false : true;
        }
    }

    private static boolean a(int i2) {
        if (i2 >= 48 && i2 <= 57) {
            return true;
        }
        if (i2 < 97 || i2 > 122) {
            return (i2 >= 65 && i2 <= 90) || i2 == 46 || i2 == 95 || i2 == 45 || i2 == 43;
        }
        return true;
    }

    public static String d() {
        String[] strArr = Build.SUPPORTED_ABIS;
        return (strArr == null || strArr.length <= 0) ? Build.CPU_ABI : strArr[0];
    }

    private static void f(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                f(file2);
            }
        }
        if (file.delete() || !file.exists()) {
            return;
        }
        f.c("DvaSoUpdateDemo", "delete failed: " + file.getAbsolutePath());
    }

    private static String g(File file) {
        FileInputStream fileInputStream;
        if (file == null || !file.exists() || !file.isFile()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            byte[] bytes = "OCTOPUS_SO_VERSION=".getBytes(StandardCharsets.US_ASCII);
            byte[] bArr = new byte[8192];
            StringBuilder sb = new StringBuilder();
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                int i3 = fileInputStream.read(bArr);
                if (i3 != -1) {
                    for (int i4 = 0; i4 < i3; i4++) {
                        int i5 = bArr[i4] & 255;
                        if (!z2) {
                            int i6 = 1;
                            if (i5 == (bytes[i2] & 255)) {
                                i2++;
                                if (i2 == bytes.length) {
                                    sb.setLength(0);
                                    z2 = true;
                                }
                            } else {
                                if (i5 != (bytes[0] & 255)) {
                                    i6 = 0;
                                }
                                i2 = i6;
                            }
                        } else {
                            if (!a(i5)) {
                                return f(sb.toString());
                            }
                            if (sb.length() >= 64) {
                                return f(sb.toString());
                            }
                            sb.append((char) i5);
                        }
                    }
                } else if (z2) {
                    return f(sb.toString());
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                f.c("DvaSoUpdateDemo", "readSoVersionFromFile failed: " + file.getAbsolutePath() + " error: " + th);
                return null;
            } finally {
                a(fileInputStream);
            }
        }
    }

    private static String h(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.length() != 12) {
            return i(str);
        }
        return str.substring(0, 10) + e.f35456V + str.substring(10);
    }

    private static String i(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = 0;
        while (i2 < str.length() - 1 && str.charAt(i2) == '0') {
            i2++;
        }
        return str.substring(i2);
    }

    private static String j(String str) {
        return "active_so_path_" + str;
    }

    private static String k(String str) {
        return "active_host_version_" + str;
    }

    private static String l(String str) {
        return "force_downgrade_" + str;
    }

    private static String m(String str) {
        return "last_load_source_" + str;
    }

    private static String n(String str) {
        return "pending_native_call_" + str;
    }

    private static void o(String str) {
        f35081d.remove(str);
        f35080c.add(str);
    }

    private static void p(String str) {
        f35080c.remove(str);
        f35081d.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean q(String str) {
        boolean z2;
        synchronized (f35078a) {
            try {
                z2 = f35080c.contains(str) || f35081d.contains(str);
            } finally {
            }
        }
        return z2;
    }

    private static boolean r(String str) {
        boolean zContains;
        synchronized (f35078a) {
            zContains = f35080c.contains(str);
        }
        return zContains;
    }

    public static void b(Context context, String str) {
        String strD = d(str);
        b(context, strD, true);
        e(new File(context.getFilesDir(), "dva_so"));
        c(context, strD);
        synchronized (f35078a) {
            f35080c.remove(strD);
            f35081d.remove(strD);
        }
        h(context, strD);
        d(context, strD, "default");
        f.c("DvaSoUpdateDemo", "downgrade requested for so: " + strD);
    }

    public static void c() {
        b("octopus");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            f(file2);
        }
    }

    private static boolean j(Context context, String str) {
        return context != null && i(context, str) && n.f36454q.equals(g(context, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(File file) throws Exception {
        FileInputStream fileInputStream;
        int i2;
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i3 = fileInputStream.read(bArr);
                if (i3 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i3);
            }
            a(fileInputStream);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b3 : bArrDigest) {
                String hexString = Integer.toHexString(b3 & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            a(fileInputStream2);
            throw th;
        }
    }

    private static void d(File file) {
        if (file != null) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return;
                }
                throw new IllegalStateException("not a dir: " + file.getAbsolutePath());
            }
            if (file.mkdirs() || file.isDirectory()) {
                return;
            }
            throw new IllegalStateException("mkdir failed: " + file.getAbsolutePath());
        }
        throw new IllegalArgumentException("dir == null");
    }

    private static boolean i(Context context, String str) {
        SharedPreferences sharedPreferencesB = b(context);
        return sharedPreferencesB != null && sharedPreferencesB.getBoolean(n(str), false);
    }

    private static void h(Context context, String str) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB != null) {
            sharedPreferencesB.edit().remove(n(str)).apply();
        }
    }

    private static String e(String str) {
        return "lib" + d(str) + ".so";
    }

    private static long e(Context context, String str) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB == null || !sharedPreferencesB.contains(k(str))) {
            return -1L;
        }
        return sharedPreferencesB.getLong(k(str), -1L);
    }

    private static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strTrim = str.trim();
        if (TextUtils.isEmpty(strTrim) || "unknown".equalsIgnoreCase(strTrim)) {
            return null;
        }
        return strTrim;
    }

    private static String d(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.endsWith(".so") && str.length() > 3) {
                str = str.substring(0, str.length() - 3);
            }
            return (!str.startsWith("lib") || str.length() <= 3) ? str : str.substring(3);
        }
        throw new IllegalArgumentException("soName is empty");
    }

    public static void a(final Context context, final b bVar, final InterfaceC0760a interfaceC0760a) {
        if (context == null) {
            b(interfaceC0760a, new IllegalArgumentException("context == null"));
            return;
        }
        if (bVar != null && bVar.a()) {
            final String strD = d(bVar.f35093a);
            if (bVar.f35097e) {
                b(context, strD);
                b(interfaceC0760a, (File) null);
                return;
            }
            String strD2 = d();
            if (!strD2.equalsIgnoreCase(bVar.f35094b)) {
                b(interfaceC0760a, new IllegalStateException("abi mismatch, current=" + strD2 + ", config=" + bVar.f35094b));
                return;
            }
            File file = new File(context.getFilesDir(), "dva_so");
            final File file2 = new File(file, "download");
            final File file3 = new File(file, "install/" + bVar.f35094b + ServiceReference.DELIMITER + strD);
            final File file4 = new File(file, "staging/" + bVar.f35094b + ServiceReference.DELIMITER + strD);
            d(file2);
            d(file3);
            d(file4);
            f35082e.execute(new Runnable() { // from class: com.octopus.ad.utils.a.1
                @Override // java.lang.Runnable
                public void run() {
                    final File file5 = new File(file2, strD + "_" + bVar.f35094b + ".pkg");
                    try {
                        boolean z2 = false;
                        if (file5.exists() && file5.isFile()) {
                            try {
                                String strC = a.c(file5);
                                if (bVar.f35096d.equalsIgnoreCase(strC)) {
                                    z2 = true;
                                    f.b("DvaSoUpdateDemo", "reuse downloaded package: " + file5.getAbsolutePath());
                                } else {
                                    f.c("DvaSoUpdateDemo", "cached package md5 mismatch, redownload. expected=" + bVar.f35096d + ", actual=" + strC);
                                }
                            } catch (Throwable th) {
                                f.c("DvaSoUpdateDemo", "cached package md5 check failed, redownload: " + file5.getAbsolutePath() + "error: " + th);
                            }
                        }
                        if (!z2) {
                            a.b(bVar.f35095c, file5);
                        }
                        String strC2 = a.c(file5);
                        if (!bVar.f35096d.equalsIgnoreCase(strC2) && z2) {
                            f.c("DvaSoUpdateDemo", "cached package invalid after check, retry download once: " + file5.getAbsolutePath());
                            a.b(bVar.f35095c, file5);
                            strC2 = a.c(file5);
                        }
                        if (bVar.f35096d.equalsIgnoreCase(strC2)) {
                            a.f35083f.execute(new Runnable() { // from class: com.octopus.ad.utils.a.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        File file6 = file5;
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        File fileB = a.b(file6, file4, strD);
                                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                        if (a.b(context, strD, fileB)) {
                                            a.b(interfaceC0760a, (File) null);
                                        } else {
                                            File file7 = file5;
                                            AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                            File fileB2 = a.b(file7, file3, strD);
                                            AnonymousClass1 anonymousClass14 = AnonymousClass1.this;
                                            a.c(context, strD, fileB2.getAbsolutePath());
                                            AnonymousClass1 anonymousClass15 = AnonymousClass1.this;
                                            a.b(context, strD, false);
                                            if (a.q(strD)) {
                                                f.b("DvaSoUpdateDemo", "so already loaded in this process, update will take effect next process: " + strD);
                                                a.b(interfaceC0760a, fileB2);
                                            } else {
                                                if (a.b(strD, fileB2.getAbsolutePath(), context)) {
                                                    f.b("DvaSoUpdateDemo", "load success: " + fileB2.getAbsolutePath());
                                                } else {
                                                    f.c("DvaSoUpdateDemo", "updated so installed, but activation failed. fallback to default in current process");
                                                }
                                                a.b(interfaceC0760a, fileB2);
                                            }
                                        }
                                    } finally {
                                        try {
                                        } finally {
                                        }
                                    }
                                }
                            });
                            return;
                        }
                        throw new IOException("md5 check failed, expected=" + bVar.f35096d + ", actual=" + strC2);
                    } catch (Throwable th2) {
                        a.b(interfaceC0760a, th2);
                    }
                }
            });
            return;
        }
        b(interfaceC0760a, new IllegalArgumentException("invalid so config"));
    }

    private static boolean f(Context context, String str) {
        SharedPreferences sharedPreferencesB = b(context);
        return sharedPreferencesB != null && sharedPreferencesB.getBoolean(l(str), false);
    }

    private static Context f() {
        Context applicationContext = null;
        try {
            Object objInvoke = Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
            if (objInvoke instanceof Context) {
                Context context = (Context) objInvoke;
                applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    return context;
                }
            }
        } catch (Throwable unused) {
        }
        return applicationContext;
    }

    public static void b() {
        a("octopus");
    }

    public static void b(String str) {
        Context contextF = f();
        if (contextF == null) {
            return;
        }
        h(contextF, d(str));
    }

    private static String d(Context context, String str) {
        Map<String, String> map = f35079b;
        String str2 = map.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB == null) {
            return null;
        }
        String string = sharedPreferencesB.getString(j(str), null);
        if (!TextUtils.isEmpty(string)) {
            map.put(str, string);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File b(File file, File file2, String str) throws Exception {
        String lowerCase = file.getName().toLowerCase(Locale.US);
        if (!lowerCase.endsWith(".zip") && !lowerCase.endsWith(".vsv") && !lowerCase.endsWith(".pkg")) {
            if (file.getName().endsWith(".so")) {
                e(file2);
                File file3 = new File(file2, file.getName());
                b(file, file3);
                return file3;
            }
            throw new IOException("unsupported package: " + file.getAbsolutePath());
        }
        e(file2);
        a(file, file2);
        File fileA = a(file2, str);
        if (fileA != null) {
            return fileA;
        }
        throw new IOException("can not find target so: " + str + " in " + file2.getAbsolutePath());
    }

    private static int c(String str, String str2) {
        String strI = i(str);
        String strI2 = i(str2);
        if (strI.length() != strI2.length()) {
            return strI.length() > strI2.length() ? 1 : -1;
        }
        return strI.compareTo(strI2);
    }

    private static void d(Context context, String str, String str2) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB != null) {
            sharedPreferencesB.edit().putString(m(str), str2).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str, String str2) {
        f35079b.put(str, str2);
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB != null) {
            SharedPreferences.Editor editorPutString = sharedPreferencesB.edit().putString(j(str), str2);
            long jA = a(context);
            if (jA != -1) {
                editorPutString.putLong(k(str), jA);
            } else {
                editorPutString.remove(k(str));
            }
            editorPutString.apply();
        }
    }

    private static boolean g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    private static String g(Context context, String str) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB == null) {
            return null;
        }
        return sharedPreferencesB.getString(m(str), null);
    }

    public static boolean a() {
        return a(f(), "octopus");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, File file) throws Throwable {
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int i2 = bufferedInputStream.read(bArr);
                                if (i2 != -1) {
                                    fileOutputStream2.write(bArr, 0, i2);
                                } else {
                                    fileOutputStream2.flush();
                                    a(fileOutputStream2);
                                    a(bufferedInputStream);
                                    httpURLConnection.disconnect();
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            a(fileOutputStream);
                            a(bufferedInputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    throw new IOException("http code=" + httpURLConnection.getResponseCode());
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            bufferedInputStream = null;
        }
    }

    public static boolean a(Context context, String str) {
        String strD = d(str);
        if (context == null) {
            context = f();
        }
        synchronized (f35078a) {
            try {
                if (f35080c.contains(strD)) {
                    return true;
                }
                if (f35081d.contains(strD)) {
                    return false;
                }
                if (j(context, strD)) {
                    f.c("DvaSoUpdateDemo", "detected previous native crash with updated so, force downgrade: " + strD);
                    b(context, strD, true);
                    c(context, strD);
                    h(context, strD);
                }
                if (f(context, strD)) {
                    System.loadLibrary(strD);
                    p(strD);
                    d(context, strD, "default");
                    h(context, strD);
                    f.b("DvaSoUpdateDemo", "force downgrade, load default so: " + strD);
                    return false;
                }
                String str2 = f35079b.get(strD);
                if (b(strD, str2, context)) {
                    return true;
                }
                String strD2 = d(context, strD);
                if (!TextUtils.equals(str2, strD2) && b(strD, strD2, context)) {
                    return true;
                }
                System.loadLibrary(strD);
                p(strD);
                d(context, strD, "default");
                h(context, strD);
                f.b("DvaSoUpdateDemo", "load default so: " + strD);
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void c(Context context, String str) {
        f35079b.remove(str);
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB != null) {
            sharedPreferencesB.edit().remove(j(str)).remove(k(str)).apply();
        }
    }

    private static void c(Context context, String str, boolean z2) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB != null) {
            sharedPreferencesB.edit().putBoolean(n(str), z2).apply();
        }
    }

    private static void b(File file, File file2) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 != -1) {
                    fileOutputStream.write(bArr, 0, i2);
                } else {
                    fileOutputStream.flush();
                    a(fileOutputStream);
                    a(fileInputStream);
                    return;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            a(fileOutputStream2);
            a(fileInputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, String str, File file) {
        String strG = g(file);
        if (TextUtils.isEmpty(strG)) {
            StringBuilder sb = new StringBuilder();
            sb.append("candidate so version missing, allow update. soFile=");
            sb.append(file == null ? "null" : file.getAbsolutePath());
            f.c("DvaSoUpdateDemo", sb.toString());
            return true;
        }
        String strA = OctUtil.a().a(context, 1010);
        if (TextUtils.isEmpty(strA)) {
            f.b("DvaSoUpdateDemo", "current so version missing, allow update. soName=" + str + ", candidateVersion=" + strG);
            return false;
        }
        if (a(strG, strA) >= 0) {
            return false;
        }
        f.b("DvaSoUpdateDemo", "skip lower version so update. soName=" + str + ", candidateVersion=" + strG + ", currentVersion=" + strA);
        return true;
    }

    public static void a(String str) {
        Context contextF;
        String strD = d(str);
        if (r(strD) && (contextF = f()) != null) {
            c(contextF, strD, true);
        }
    }

    private static File a(File file, String str) {
        if (file != null && file.exists()) {
            String strE = e(str);
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return null;
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    File fileA = a(file2, str);
                    if (fileA != null) {
                        return fileA;
                    }
                } else if (strE.equals(file2.getName())) {
                    return file2;
                }
            }
        }
        return null;
    }

    private static int b(String str, String str2) {
        boolean zG = g(str);
        boolean zG2 = g(str2);
        if (zG && zG2) {
            return c(i(str), i(str2));
        }
        if (zG != zG2) {
            return zG ? 1 : -1;
        }
        return str.compareToIgnoreCase(str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(File file, File file2) throws Throwable {
        ZipInputStream zipInputStream;
        ZipInputStream zipInputStream2 = null;
        try {
            zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    File file3 = new File(file2, nextEntry.getName());
                    if (nextEntry.isDirectory()) {
                        d(file3);
                    } else {
                        File parentFile = file3.getParentFile();
                        if (parentFile != null) {
                            d(parentFile);
                        }
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            while (true) {
                                try {
                                    int i2 = zipInputStream.read(bArr);
                                    if (i2 == -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr, 0, i2);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    zipInputStream2 = fileOutputStream;
                                    a(zipInputStream2);
                                    throw th;
                                }
                            }
                            fileOutputStream.flush();
                            a(fileOutputStream);
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    zipInputStream.closeEntry();
                } else {
                    a(zipInputStream);
                    return;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            zipInputStream2 = zipInputStream;
            a(zipInputStream2);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, String str2, Context context) {
        if (TextUtils.isEmpty(str2) || !b(context, str, str2)) {
            return false;
        }
        File file = new File(str2);
        if (file.exists() && file.isFile()) {
            try {
                System.load(str2);
                c(context, str, str2);
                b(context, str, false);
                o(str);
                d(context, str, n.f36454q);
                f.b("DvaSoUpdateDemo", "load updated so success: " + str2);
                return true;
            } catch (Throwable th) {
                f.a("DvaSoUpdateDemo", "load updated so failed, fallback to default. soPath=" + str2, th);
                c(context, str);
                return false;
            }
        }
        c(context, str);
        return false;
    }

    private static boolean b(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (context == null) {
            return true;
        }
        long jE = e(context, str);
        if (jE == -1) {
            f.c("DvaSoUpdateDemo", "updated so host version missing, discard stale cache. soPath=" + str2);
            c(context, str);
            return false;
        }
        long jA = a(context);
        if (jA == -1) {
            return false;
        }
        if (jE == jA) {
            return true;
        }
        f.b("DvaSoUpdateDemo", "host version changed, prefer bundled so. soName=" + str + ", recordedHostVersion=" + jE + ", currentHostVersion=" + jA + ", soPath=" + str2);
        c(context, str);
        return false;
    }

    private static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    private static int a(String str, String str2) {
        String strF = f(str);
        String strF2 = f(str2);
        int i2 = 0;
        if (TextUtils.equals(strF, strF2)) {
            return 0;
        }
        if (TextUtils.isEmpty(strF)) {
            return -1;
        }
        if (TextUtils.isEmpty(strF2)) {
            return 1;
        }
        if (g(strF) && g(strF2)) {
            return c(h(strF), h(strF2));
        }
        String[] strArrSplit = strF.split("[^0-9A-Za-z]+");
        String[] strArrSplit2 = strF2.split("[^0-9A-Za-z]+");
        int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
        while (i2 < iMax) {
            int iB = b(i2 < strArrSplit.length ? strArrSplit[i2] : "0", i2 < strArrSplit2.length ? strArrSplit2[i2] : "0");
            if (iB != 0) {
                return iB;
            }
            i2++;
        }
        return strF.compareToIgnoreCase(strF2);
    }

    private static SharedPreferences b(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("dva_so_demo_meta", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, boolean z2) {
        SharedPreferences sharedPreferencesB = b(context);
        if (sharedPreferencesB != null) {
            sharedPreferencesB.edit().putBoolean(l(str), z2).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(InterfaceC0760a interfaceC0760a, File file) {
        if (interfaceC0760a == null) {
            return;
        }
        try {
            interfaceC0760a.a(file);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(InterfaceC0760a interfaceC0760a, Throwable th) {
        f.a("DvaSoUpdateDemo", "updateAndLoad error", th);
        if (interfaceC0760a == null) {
            return;
        }
        try {
            interfaceC0760a.a(th);
        } catch (Throwable unused) {
        }
    }

    private static long a(Context context) {
        PackageInfo packageInfoA;
        if (context == null) {
            return -1L;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageInfoA = a(packageManager, context.getPackageName())) == null) {
                return -1L;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                return packageInfoA.getLongVersionCode();
            }
            return packageInfoA.versionCode;
        } catch (Throwable th) {
            f.c("DvaSoUpdateDemo", "getHostVersionCode failed error: " + th);
            return -1L;
        }
    }

    private static PackageInfo a(PackageManager packageManager, String str) throws Exception {
        if (Build.VERSION.SDK_INT < 33) {
            return packageManager.getPackageInfo(str, 0);
        }
        Class<?> cls = Class.forName("android.content.pm.PackageManager$PackageInfoFlags");
        Object objInvoke = PackageManager.class.getMethod("getPackageInfo", String.class, cls).invoke(packageManager, str, cls.getMethod("of", Long.TYPE).invoke(null, 0L));
        if (objInvoke instanceof PackageInfo) {
            return (PackageInfo) objInvoke;
        }
        return null;
    }
}
