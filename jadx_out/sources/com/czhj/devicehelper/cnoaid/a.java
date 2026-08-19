package com.czhj.devicehelper.cnoaid;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.media.MediaDrm;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.czhj.devicehelper.cnoaid.impl.m;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private Application f29105a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f29106b;

    /* renamed from: c, reason: collision with root package name */
    private String f29107c;

    /* renamed from: d, reason: collision with root package name */
    private String f29108d;

    /* renamed from: com.czhj.devicehelper.cnoaid.a$a, reason: collision with other inner class name */
    public static class C0448a {

        /* renamed from: a, reason: collision with root package name */
        static final a f29112a = new a();

        private C0448a() {
        }
    }

    private a() {
    }

    public static String a() {
        String str = C0448a.f29112a.f29107c;
        return str == null ? "" : str;
    }

    public static String b() {
        return a(a(), "MD5");
    }

    public static String c() {
        return a(a(), "SHA-1");
    }

    public static String d() {
        String str = C0448a.f29112a.f29108d;
        return str == null ? "" : str;
    }

    @Deprecated
    public static String e() {
        try {
            byte[] propertyByteArray = new MediaDrm(new UUID(-1301668207276963122L, -6645017420763422227L)).getPropertyByteArray("deviceUniqueId");
            if (propertyByteArray == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (byte b3 : propertyByteArray) {
                sb.append(String.format("%02x", Byte.valueOf(b3)));
            }
            return sb.toString();
        } catch (Throwable th) {
            g.a(th);
            return "";
        }
    }

    public static String f() {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.BOARD.length() % 10);
        sb.append(Arrays.deepToString(Build.SUPPORTED_ABIS).length() % 10);
        sb.append(Build.DEVICE.length() % 10);
        sb.append(Build.DISPLAY.length() % 10);
        sb.append(Build.HOST.length() % 10);
        sb.append(Build.ID.length() % 10);
        sb.append(Build.MANUFACTURER.length() % 10);
        sb.append(Build.BRAND.length() % 10);
        sb.append(Build.MODEL.length() % 10);
        sb.append(Build.PRODUCT.length() % 10);
        sb.append(Build.BOOTLOADER.length() % 10);
        sb.append(Build.HARDWARE.length() % 10);
        sb.append(Build.TAGS.length() % 10);
        sb.append(Build.TYPE.length() % 10);
        sb.append(Build.USER.length() % 10);
        return sb.toString();
    }

    private static String g(Context context) throws IOException {
        String line = "";
        if (context == null) {
            return "";
        }
        File fileH = h(context);
        if (fileH != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(fileH));
                try {
                    line = bufferedReader.readLine();
                    bufferedReader.close();
                } finally {
                }
            } catch (Exception e2) {
                g.a(e2);
            }
        }
        g.a("Get uuid from external storage: " + line);
        return line;
    }

    private static File h(Context context) {
        if (Build.VERSION.SDK_INT < 30 && context != null && context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && "mounted".equals(Environment.getExternalStorageState())) {
            return new File(Environment.getExternalStorageDirectory(), "Android/.GUID_uuid");
        }
        return null;
    }

    private static String i(Context context) {
        if (context == null) {
            return "";
        }
        String string = context.getSharedPreferences("GUID", 0).getString("uuid", "");
        g.a("Get uuid from shared preferences: " + string);
        return string;
    }

    public static String b(Context context) {
        String str;
        if (Build.VERSION.SDK_INT >= 29) {
            str = "IMEI/MEID not allowed on Android 10+";
        } else {
            if (context == null) {
                return "";
            }
            if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
                return e(context);
            }
            str = "android.permission.READ_PHONE_STATE not granted";
        }
        g.a(str);
        return "";
    }

    @SuppressLint({"HardwareIds"})
    public static String c(Context context) {
        String string;
        return (context == null || (string = Settings.Secure.getString(context.getContentResolver(), "android_id")) == null || "9774d56d682e549c".equals(string)) ? "" : string;
    }

    public static String d(Context context) throws IOException {
        String strF = f(context);
        if (TextUtils.isEmpty(strF)) {
            strF = g(context);
        }
        if (TextUtils.isEmpty(strF)) {
            strF = i(context);
        }
        if (!TextUtils.isEmpty(strF)) {
            return strF;
        }
        String string = UUID.randomUUID().toString();
        g.a("Generate uuid by random: " + string);
        c(context, string);
        a(context, string);
        b(context, string);
        return string;
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    private static String e(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String imei = telephonyManager.getImei();
            return TextUtils.isEmpty(imei) ? telephonyManager.getMeid() : imei;
        } catch (Error | Exception e2) {
            g.a(e2);
            return "";
        }
    }

    private static String f(Context context) {
        if (context == null) {
            return "";
        }
        String string = Settings.System.getString(context.getContentResolver(), "GUID_uuid");
        g.a("Get uuid from system settings: " + string);
        return string;
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance(str2).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b3)));
            }
            return sb.toString();
        } catch (Exception e2) {
            g.a(e2);
            return "";
        }
    }

    private static void c(Context context, String str) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("GUID", 0).edit().putString("uuid", str).apply();
        g.a("Save uuid to shared preferences: " + str);
    }

    public static void a(Application application) {
        a(application, false, null);
    }

    private static void b(final Application application, final boolean z2, final e eVar) {
        a(application, new c() { // from class: com.czhj.devicehelper.cnoaid.a.1
            @Override // com.czhj.devicehelper.cnoaid.c
            public void a(Exception exc) throws IOException {
                a.b(exc, application, z2, eVar);
            }

            @Override // com.czhj.devicehelper.cnoaid.c
            public void a(String str) throws IOException {
                if (TextUtils.isEmpty(str)) {
                    a(new f("OAID is empty"));
                    return;
                }
                a aVar = C0448a.f29112a;
                aVar.f29107c = str;
                aVar.f29108d = str;
                g.a("Client id is OAID/AAID: " + str);
            }
        });
    }

    public static void a(Application application, e eVar) {
        a(application, false, null);
    }

    private static void b(Context context, String str) throws IOException {
        if (context == null) {
            return;
        }
        File fileH = h(context);
        if (fileH == null) {
            g.a("UUID file in external storage is null");
            return;
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileH));
            try {
                if (!fileH.exists()) {
                    fileH.createNewFile();
                }
                bufferedWriter.write(str);
                bufferedWriter.flush();
                g.a("Save uuid to external storage: " + str);
                bufferedWriter.close();
            } finally {
            }
        } catch (Exception e2) {
            g.a(e2);
        }
    }

    public static void a(Application application, boolean z2) {
        a(application, z2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Exception exc, Application application, boolean z2, e eVar) throws IOException {
        if (z2) {
            String strE = e();
            if (!TextUtils.isEmpty(strE)) {
                C0448a.f29112a.f29107c = strE;
                g.a("Client id is WidevineID: " + strE);
                if (eVar != null) {
                    eVar.a(strE, exc);
                    return;
                }
                return;
            }
        }
        String strC = c(application);
        if (!TextUtils.isEmpty(strC)) {
            C0448a.f29112a.f29107c = strC;
            g.a("Client id is AndroidID: " + strC);
            if (eVar != null) {
                eVar.a(strC, exc);
                return;
            }
            return;
        }
        String strD = d(application);
        C0448a.f29112a.f29107c = strD;
        g.a("Client id is GUID: " + strD);
        if (eVar != null) {
            eVar.a(strD, exc);
        }
    }

    public static void a(Application application, boolean z2, e eVar) {
        if (application == null) {
            if (eVar != null) {
                eVar.a("", new RuntimeException("application is nulll"));
                return;
            }
            return;
        }
        a aVar = C0448a.f29112a;
        aVar.f29105a = application;
        aVar.f29106b = z2;
        String strB = b(application);
        if (TextUtils.isEmpty(strB)) {
            b(application, z2, eVar);
            return;
        }
        aVar.f29107c = strB;
        g.a("Client id is IMEI/MEID: " + aVar.f29107c);
        if (eVar != null) {
            eVar.a(strB, null);
        }
    }

    public static void a(Context context, c cVar) {
        d dVarA = m.a(context);
        g.a("OAID implements class: " + dVarA.getClass().getName());
        dVarA.a(cVar);
    }

    private static void a(Context context, String str) {
        if (context == null) {
            return;
        }
        if (!Settings.System.canWrite(context)) {
            g.a("android.permission.WRITE_SETTINGS not granted");
            return;
        }
        try {
            Settings.System.putString(context.getContentResolver(), "GUID_uuid", str);
            g.a("Save uuid to system settings: " + str);
        } catch (Exception e2) {
            g.a(e2);
        }
    }

    public static boolean a(Context context) {
        return m.a(context).a();
    }
}
