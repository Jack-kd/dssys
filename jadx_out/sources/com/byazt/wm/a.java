package com.byazt.wm;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Process;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 75, 54})
/* loaded from: classes3.dex */
public class a {
    public static Boolean hp;

    private static boolean a() throws IOException {
        try {
            HashSet<String> hashSet = new HashSet();
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/" + Process.myPid() + "/maps"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.endsWith(".so") || line.endsWith(".jar")) {
                    hashSet.add(line.substring(line.lastIndexOf(" ") + 1));
                }
            }
            bufferedReader.close();
            for (String str : hashSet) {
                if (str.contains(hp("636f6d2e73617572696b2e737562737472617465")) || str.contains(hp("58706f7365644272696467652e6a6172")) || str.contains(hp("6c696273616e64686f6f6b2e656478702e736f"))) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean hp() {
        Boolean bool = hp;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    private static int j() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        String str = null;
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, hp("726f2e736563757265"));
            if (objInvoke != null) {
                str = (String) objInvoke;
            }
        } catch (Exception unused) {
        }
        return (str == null || !"0".equals(str)) ? 1 : 0;
    }

    public static boolean jx(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        return intentRegisterReceiver != null && intentRegisterReceiver.getIntExtra("plugged", -1) == 2;
    }

    public static boolean l() {
        if (j() == 0) {
            return true;
        }
        return w();
    }

    private static boolean w() {
        String[] strArr = {hp("2f7362696e2f7375"), hp("2f73797374656d2f62696e2f7375"), hp("2f73797374656d2f7862696e2f7375"), hp("2f646174612f6c6f63616c2f7862696e2f7375"), hp("2f646174612f6c6f63616c2f62696e2f7375"), hp("2f73797374656d2f73642f7862696e2f7375"), hp("2f73797374656d2f62696e2f6661696c736166652f7375"), hp("2f646174612f6c6f63616c2f7375")};
        for (int i2 = 0; i2 < 8; i2++) {
            if (new File(strArr[i2]).exists()) {
                return true;
            }
        }
        return false;
    }

    @WorkerThread
    public static synchronized void hp(@NonNull Context context) {
        try {
            if (hp == null) {
                hp = Boolean.valueOf((l() || l(context) || jx(context) || !j(context) || jx() || w(context)) ? false : true);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean l(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    @WorkerThread
    public static boolean jx() throws UnknownHostException {
        try {
            InetAddress.getByName(hp("3132372e302e302e31"));
            new Socket(hp("3132372e302e302e31"), Integer.parseInt(hp("3237303432")));
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean j(Context context) {
        int simState;
        try {
            simState = ((TelephonyManager) context.getSystemService("phone")).getSimState();
        } catch (Throwable unused) {
        }
        return (simState == 1 || simState == 0) ? false : true;
    }

    private static String hp(@NonNull String str) {
        return com.byazt.xq.a.hp(str);
    }

    @WorkerThread
    public static boolean w(Context context) {
        return a() || a(context);
    }

    private static boolean a(Context context) {
        List listAsList = Arrays.asList(hp("64652e726f62762e616e64726f69642e78706f736564"), hp("636f6d2e746f706a6f686e77752e6d616769736b"), hp("696f2e76612e6578706f736564"), hp("636f6d2e77696e642e636f74746572"), hp("6f72672e6d656f776361742e656478706f7365642e6d616e61676572"), hp("6d652e7765697368752e657870"), hp("636f6d2e73617572696b2e737562737472617465"));
        PackageManager packageManager = context.getPackageManager();
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            if (packageManager.getPackageInfo((String) it.next(), 0) != null) {
                return true;
            }
        }
        return false;
    }
}
