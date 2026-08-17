package com.byazt.hu;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.ik.a;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1745, 38})
/* loaded from: classes2.dex */
public class j {
    public static String hp;

    /* renamed from: l, reason: collision with root package name */
    public static List<String> f20953l = new CopyOnWriteArrayList();

    private static String hp() throws IOException {
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
            if (ZeusLogger.isDebug()) {
                ZeusLogger.d("Process", "get processName = " + sb.toString());
            }
            String string = sb.toString();
            try {
                bufferedReader.close();
            } catch (Exception unused2) {
            }
            return string;
        } catch (Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception unused4) {
                }
            }
            return null;
        }
    }

    public static boolean l(Context context) throws IOException {
        String strHp = hp(context);
        return (strHp == null || !strHp.contains(":")) && strHp != null && strHp.equals(context.getPackageName());
    }

    public static String hp(Context context) throws IOException {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                String processName = Application.getProcessName();
                if (!TextUtils.isEmpty(processName)) {
                    hp = processName;
                }
                return hp;
            }
        } catch (Throwable unused) {
        }
        try {
            Object objInvokeStaticMethod = MethodUtils.invokeStaticMethod(Class.forName("android.app.ActivityThread"), "currentProcessName", new Object[0]);
            if (!TextUtils.isEmpty((String) objInvokeStaticMethod)) {
                hp = (String) objInvokeStaticMethod;
            }
            return hp;
        } catch (Exception e2) {
            a.hp(e2);
            String strHp = hp();
            hp = strHp;
            return strHp;
        }
    }

    public static String hp(String str) {
        if (!TextUtils.isEmpty(str) && str.contains(":")) {
            return str.split(":")[1];
        }
        return "main";
    }
}
