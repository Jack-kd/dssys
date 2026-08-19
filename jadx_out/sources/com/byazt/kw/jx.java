package com.byazt.kw;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 756, 30})
/* loaded from: classes.dex */
public class jx {
    public static boolean hp = false;

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            str = hp();
        }
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("emotionui")) {
            return l();
        }
        return true;
    }

    public static boolean j() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static boolean jx() throws ClassNotFoundException {
        if (!hp) {
            try {
                Class.forName("miui.os.Build");
                com.byazt.ms.l.hp = true;
                hp = true;
                return true;
            } catch (Exception unused) {
                hp = true;
            }
        }
        return com.byazt.ms.l.hp;
    }

    private static String l(String str) {
        BufferedReader bufferedReader;
        String line = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            line = bufferedReader.readLine();
            bufferedReader.close();
            a.hp(bufferedReader);
            return line;
        } catch (Throwable unused2) {
            a.hp(bufferedReader);
            return line;
        }
    }

    public static String hp() {
        return l("ro.build.version.emui");
    }

    public static boolean l() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2)) {
                    return false;
                }
                if (!str2.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
