package com.sigmob.sdk.base.utils;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bv;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes4.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public static String f36609a = "SigHtmlResource";

    /* renamed from: b, reason: collision with root package name */
    public static String f36610b = "SigHtmlPrivacy";

    /* renamed from: c, reason: collision with root package name */
    public static String f36611c = "SigZipResource";

    /* renamed from: d, reason: collision with root package name */
    public static String f36612d = "SigCrashResource";

    /* renamed from: e, reason: collision with root package name */
    private static String f36613e;

    /* renamed from: f, reason: collision with root package name */
    private static String f36614f;

    /* renamed from: g, reason: collision with root package name */
    private static File f36615g;

    /* renamed from: h, reason: collision with root package name */
    private static String f36616h;

    public static File a(Context context) {
        try {
            if (f36615g == null) {
                File file = new File(d(), "SigDownload");
                f36615g = file;
                if (!file.exists()) {
                    f36615g.mkdirs();
                }
            }
        } catch (Throwable unused) {
        }
        return f36615g;
    }

    public static File b(String str, String str2) {
        try {
            File fileA = a(d(), f36609a);
            if (!fileA.exists()) {
                fileA.mkdirs();
            }
            File file = new File(fileA, str2);
            SigmobLog.d("SigHtmlResource: " + file.getAbsolutePath());
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            FileWriter fileWriter = new FileWriter(file, true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(str);
            bufferedWriter.newLine();
            bufferedWriter.close();
            fileWriter.close();
            return file;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String c() {
        String str = a() + File.separator + "webCache";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static File d(String str) {
        try {
            File fileA = a(d(), str);
            if (fileA != null && !fileA.exists()) {
                fileA.mkdirs();
            }
            return fileA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static File e(String str) {
        if (str == null) {
            return null;
        }
        return new File(str);
    }

    public static File f(String str) {
        try {
            File fileA = a(d(), str);
            if (fileA != null && !fileA.exists()) {
                fileA.mkdirs();
            }
            return fileA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String g() {
        String str = a() + File.separator + "downloadAPKLog";
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    public static synchronized String h() {
        StringBuilder sb;
        sb = new StringBuilder();
        sb.append(a());
        String str = File.separator;
        sb.append(str);
        sb.append(bv.f11243a);
        sb.append(str);
        sb.append("sdkLog.log");
        return sb.toString();
    }

    public static void i() {
        if (TextUtils.isEmpty(f36613e)) {
            return;
        }
        try {
            File file = new File(f36613e);
            if (file.exists()) {
                FileUtil.deleteDirectory(f36613e);
            }
            if (!file.exists() || file.isFile()) {
                file.mkdirs();
            }
        } catch (Throwable unused) {
        }
    }

    public static File j() {
        try {
            File fileA = a(d(), f36612d);
            if (!fileA.exists()) {
                fileA.mkdirs();
            }
            return a(fileA, String.format(Locale.getDefault(), "%d.log", Long.valueOf(System.currentTimeMillis() / 1000)));
        } catch (Throwable th) {
            SigmobLog.d("createCrash fail", th);
            return null;
        }
    }

    public static File[] k() {
        try {
            File fileA = a(d(), f36612d);
            if (fileA.exists()) {
                return FileUtil.orderByDate(fileA.getAbsolutePath());
            }
            fileA.mkdirs();
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static File a(File file, String str) {
        if (file == null || str == null) {
            return null;
        }
        return new File(file, str);
    }

    public static String b() {
        String str = a() + File.separator + "videoAd";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static synchronized String c(String str) {
        StringBuilder sb;
        sb = new StringBuilder();
        sb.append(a());
        String str2 = File.separator;
        sb.append(str2);
        sb.append("splashAdUnit");
        sb.append(str2);
        sb.append(str);
        return sb.toString();
    }

    public static String d() {
        if (f36614f == null) {
            File externalCacheDir = (!Environment.getExternalStorageState().equals("mounted") || Environment.isExternalStorageRemovable()) ? null : com.sigmob.sdk.b.e().getExternalCacheDir();
            if (externalCacheDir == null) {
                externalCacheDir = com.sigmob.sdk.b.e().getCacheDir();
            }
            if (externalCacheDir != null && f36616h != null) {
                File file = new File(externalCacheDir, f36616h);
                if (!file.exists()) {
                    file.mkdirs();
                }
                f36614f = file.getAbsolutePath();
            }
        }
        return f36614f;
    }

    public static String e() {
        String str = a() + File.separator + "splashAd";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static String f() {
        String str = a() + File.separator + "nativeAd";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static File a(Object obj) {
        return new File(g(), obj + ".log");
    }

    public static String b(String str) {
        int iLastIndexOf = str.lastIndexOf(com.anythink.core.common.d.i.f2495E);
        return iLastIndexOf != -1 ? str.substring(0, iLastIndexOf) : str;
    }

    public static File a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        return new File(str, str2);
    }

    public static String a() {
        if (f36613e == null) {
            File cacheDir = com.sigmob.sdk.b.e().getCacheDir();
            if (cacheDir != null && f36616h != null) {
                File file = new File(cacheDir, f36616h);
                if (!file.exists()) {
                    file.mkdirs();
                }
                cacheDir = file;
            }
            f36613e = cacheDir.getAbsolutePath();
        }
        return f36613e;
    }

    public static String a(String str) {
        int iLastIndexOf = str.lastIndexOf(com.anythink.core.common.d.i.f2495E);
        return iLastIndexOf != -1 ? str.substring(iLastIndexOf) : "";
    }

    public static void a(Context context, String str) {
        f36616h = str;
    }

    public static File[] a(File[] fileArr, int i2) {
        if (fileArr == null || fileArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(fileArr));
        for (File file : fileArr) {
            if (arrayList.size() <= i2) {
                break;
            }
            if (file.exists()) {
                file.delete();
                arrayList.remove(file);
                SigmobLog.d("file delete " + file.getName());
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }
}
