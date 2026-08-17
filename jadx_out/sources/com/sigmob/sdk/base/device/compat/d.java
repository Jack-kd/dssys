package com.sigmob.sdk.base.device.compat;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.util.Properties;

/* loaded from: classes4.dex */
public final class d {
    private d() {
    }

    public static String a(String str) throws Throwable {
        String strE;
        if (str != null && !str.isEmpty()) {
            try {
                strE = c(str);
            } catch (Exception unused) {
                strE = null;
            }
            if (strE != null && !strE.isEmpty()) {
                return strE;
            }
            try {
                strE = d(str);
            } catch (IOException unused2) {
            }
            if (strE != null && !strE.isEmpty()) {
                return strE;
            }
            try {
                strE = e(str);
            } catch (IOException unused3) {
            }
            if (strE != null && !strE.isEmpty()) {
                return strE;
            }
        }
        return "";
    }

    public static String b(String[] strArr) throws Throwable {
        if (strArr == null) {
            return "";
        }
        for (String str : strArr) {
            String strA = a(str);
            if (!strA.isEmpty()) {
                return strA;
            }
        }
        return "";
    }

    @SuppressLint({"PrivateApi"})
    private static String c(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = Class.forName("android.os.SystemProperties");
        return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
    }

    private static String d(String str) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String line = bufferedReader2.readLine();
                if (line != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused) {
                    }
                    return line;
                }
                try {
                    bufferedReader2.close();
                } catch (IOException unused2) {
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String e(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            Properties properties = new Properties();
            FileInputStream fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                properties.load(fileInputStream2);
                String property = properties.getProperty(str, "");
                try {
                    fileInputStream2.close();
                } catch (IOException unused) {
                }
                return property;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String[] a(String[] strArr) {
        if (strArr == null) {
            return new String[0];
        }
        String[] strArr2 = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr2[i2] = a(strArr[i2]);
        }
        return strArr2;
    }

    public static boolean b(String str) {
        return !TextUtils.isEmpty(a(str));
    }

    public static boolean c(String[] strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (b(str)) {
                return true;
            }
        }
        return false;
    }
}
