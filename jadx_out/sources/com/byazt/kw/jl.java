package com.byazt.kw;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 756, 19})
/* loaded from: classes.dex */
public class jl {
    public static String hp;

    public static String hp(Context context) throws IOException {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        String strHp = hp();
        hp = strHp;
        if (!TextUtils.isEmpty(strHp)) {
            return hp;
        }
        String strL = l();
        hp = strL;
        if (!TextUtils.isEmpty(strL)) {
            return hp;
        }
        String strJx = jx();
        hp = strJx;
        return strJx;
    }

    private static String jx() throws IOException {
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
            String string = sb.toString();
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
            }
            return string;
        } catch (Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException unused4) {
                }
            }
            return null;
        }
    }

    private static String l() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static String hp() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            return Application.getProcessName();
        } catch (Exception unused) {
            return null;
        }
    }
}
