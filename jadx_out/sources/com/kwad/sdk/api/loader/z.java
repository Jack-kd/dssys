package com.kwad.sdk.api.loader;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;

@SuppressLint({"LongLogTag"})
/* loaded from: classes4.dex */
final class z {

    public static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) throws IllegalAccessException, IllegalArgumentException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A(Arrays.asList((File[]) z.c(obj, "nativeLibraryDirectories").get(obj)));
        }
    }

    public static final class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) throws IllegalAccessException, IllegalArgumentException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A((List) z.c(obj, "nativeLibraryDirectories").get(obj));
        }
    }

    public static final class c {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) throws IllegalAccessException, IllegalArgumentException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A((List) z.c(obj, "nativeLibraryDirectories").get(obj));
        }
    }

    public static final class d {
        /* JADX INFO: Access modifiers changed from: private */
        public static String g(ClassLoader classLoader) throws IllegalAccessException, IllegalArgumentException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A((List) z.c(obj, "nativeLibraryDirectories").get(obj));
        }
    }

    public static final class e {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) {
            return String.valueOf(z.c(classLoader, "libPath").get(classLoader));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String A(List<File> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(list.get(i2).getAbsolutePath());
            if (i2 < list.size() - 1) {
                sb.append(File.pathSeparator);
            }
        }
        return sb.toString();
    }

    public static synchronized String b(ClassLoader classLoader) {
        String strC;
        int i2 = Build.VERSION.SDK_INT;
        if ((i2 == 25 && Build.VERSION.PREVIEW_SDK_INT != 0) || i2 > 25) {
            try {
                strC = d.g(classLoader);
            } catch (Throwable th) {
                Log.e("ShareLibraryGetter", String.format("installNativeLibraryPath, v25 fail, sdk: %d, error: %s, try to fallback to V23", Integer.valueOf(Build.VERSION.SDK_INT), th.getMessage()));
                strC = b.c(classLoader);
            }
        } else if (i2 == 24) {
            try {
                strC = c.c(classLoader);
            } finally {
                strC = a.c(classLoader);
            }
        } else {
            try {
                strC = b.c(classLoader);
            } finally {
                strC = a.c(classLoader);
            }
        }
        return strC;
    }

    public static Field c(Object obj, String str) throws NoSuchFieldException, SecurityException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
