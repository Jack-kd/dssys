package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.system.Os;
import android.text.TextUtils;
import com.varbto.utils.api.UtilConst;
import java.io.File;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes5.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static String f46329a = "";

    /* renamed from: b, reason: collision with root package name */
    private static String f46330b = "";

    /* renamed from: c, reason: collision with root package name */
    private static String f46331c = "";

    /* renamed from: d, reason: collision with root package name */
    private static String f46332d = "";

    /* renamed from: e, reason: collision with root package name */
    private static volatile File f46333e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile File f46334f;

    public class a implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return k.b(file) < k.b(file2) ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(File file) {
        try {
            return Os.stat(file.getPath()).st_atime;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public static File c(Context context) {
        if (!TextUtils.isEmpty(f46330b)) {
            return new File(f46330b);
        }
        f46332d = a(context);
        f46330b = f46332d + "/download";
        File file = new File(f46330b);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File d(Context context) {
        if (f46334f != null) {
            return f46334f;
        }
        File externalCacheDir = context.getExternalCacheDir();
        f46334f = externalCacheDir;
        return externalCacheDir;
    }

    public static File e(Context context) {
        if (!TextUtils.isEmpty(f46329a)) {
            return new File(f46329a);
        }
        f46332d = a(context);
        f46329a = f46332d + "/imgCache";
        File file = new File(f46329a);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File f(Context context) {
        if (!TextUtils.isEmpty(f46331c)) {
            return new File(f46331c);
        }
        f46332d = a(context);
        f46331c = f46332d + "/videoCache";
        File file = new File(f46331c);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static String a(double d2) {
        double d3 = d2 / 1024.0d;
        if (d3 < 1.0d) {
            return d2 + UtilConst.CRASH_CAT_B;
        }
        double d4 = d3 / 1024.0d;
        if (d4 < 1.0d) {
            return new BigDecimal(Double.toString(d3)).setScale(2, 4).toPlainString() + "KB";
        }
        double d5 = d4 / 1024.0d;
        if (d5 < 1.0d) {
            return new BigDecimal(Double.toString(d4)).setScale(2, 4).toPlainString() + "MB";
        }
        double d6 = d5 / 1024.0d;
        if (d6 < 1.0d) {
            return new BigDecimal(Double.toString(d5)).setScale(2, 4).toPlainString() + "GB";
        }
        return new BigDecimal(d6).setScale(2, 4).toPlainString() + "TB";
    }

    public static File b(Context context) {
        if (f46333e != null) {
            return f46333e;
        }
        File cacheDir = context.getCacheDir();
        f46333e = cacheDir;
        return cacheDir;
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f46332d)) {
            return f46332d;
        }
        String strA = com.ubix.ssp.ad.e.a0.d0.a.a(context);
        f46332d = strA;
        return strA;
    }

    public static void a(String str, long j2) {
        File[] fileArrA;
        if (TextUtils.isEmpty(str) || (fileArrA = a(str)) == null || fileArrA.length <= 0) {
            return;
        }
        long length = 0;
        for (int i2 = 0; i2 < fileArrA.length; i2++) {
            length += fileArrA[i2].length();
            if (length > j2) {
                File[] fileArr = (File[]) Arrays.copyOfRange(fileArrA, i2, fileArrA.length);
                if (fileArr != null) {
                    a(fileArr);
                    return;
                }
                return;
            }
        }
    }

    public static void a(File[] fileArr) {
        for (File file : fileArr) {
            try {
                file.delete();
            } catch (Exception unused) {
            }
        }
    }

    public static File[] a(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return null;
        }
        Arrays.sort(fileArrListFiles, new a());
        return fileArrListFiles;
    }
}
