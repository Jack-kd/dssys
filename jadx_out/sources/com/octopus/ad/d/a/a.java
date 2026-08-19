package com.octopus.ad.d.a;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import com.octopus.ad.Octopus;
import com.octopus.ad.d.a.b.k;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes4.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f33932a = true;

    /* renamed from: b, reason: collision with root package name */
    private static String f33933b = "";

    /* renamed from: c, reason: collision with root package name */
    private Application f33934c;

    /* renamed from: d, reason: collision with root package name */
    private String f33935d;

    /* renamed from: e, reason: collision with root package name */
    private String f33936e;

    /* renamed from: com.octopus.ad.d.a.a$a, reason: collision with other inner class name */
    public static class C0727a {

        /* renamed from: a, reason: collision with root package name */
        static final a f33937a = new a();
    }

    public static void a(Application application) {
        if (application == null) {
            return;
        }
        a aVar = C0727a.f33937a;
        aVar.f33934c = application;
        a(application, aVar);
    }

    @SuppressLint({"HardwareIds"})
    public static String b(Context context) {
        if (f33932a) {
            f33932a = false;
            if (Octopus.getCustomController() == null || Octopus.getCustomController().isCanUsePhoneState()) {
                String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                f33933b = string;
                if (string == null) {
                    f33933b = "";
                }
            }
        }
        return f33933b;
    }

    public static String c(Context context) throws IOException {
        String strE = e(context);
        if (TextUtils.isEmpty(strE)) {
            strE = f(context);
        }
        if (TextUtils.isEmpty(strE)) {
            strE = h(context);
        }
        if (!TextUtils.isEmpty(strE)) {
            return strE;
        }
        String string = UUID.randomUUID().toString();
        f.a("Generate uuid by random: " + string);
        c(context, string);
        a(context, string);
        b(context, string);
        return string;
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    private static String d(Context context) {
        return "";
    }

    private static String e(Context context) {
        if (context == null) {
            return "";
        }
        String string = Settings.System.getString(context.getContentResolver(), "GUID_uuid");
        f.a("Get uuid from system settings: " + string);
        return string;
    }

    private static String f(Context context) throws IOException {
        String line = "";
        if (context == null) {
            return "";
        }
        File fileG = g(context);
        if (fileG != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(fileG));
                try {
                    line = bufferedReader.readLine();
                    bufferedReader.close();
                } finally {
                }
            } catch (Exception e2) {
                f.a(e2);
            }
        }
        f.a("Get uuid from external storage: " + line);
        return line;
    }

    private static File g(Context context) {
        if (Build.VERSION.SDK_INT < 30 && context != null && context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && "mounted".equals(Environment.getExternalStorageState())) {
            return new File(Environment.getExternalStorageDirectory(), "Android/.GUID_uuid");
        }
        return null;
    }

    private static String h(Context context) {
        if (context == null) {
            return "";
        }
        String string = context.getSharedPreferences("GUID", 0).getString("uuid", "");
        f.a("Get uuid from shared preferences: " + string);
        return string;
    }

    private a() {
    }

    public static String a() {
        String str = C0727a.f33937a.f33936e;
        return str == null ? "" : str;
    }

    public static void a(Context context, c cVar) {
        try {
            k.a(context).a(cVar);
        } catch (Throwable th) {
            f.a(th);
        }
    }

    public static String b() {
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

    public static String a(Context context) {
        if (Build.VERSION.SDK_INT >= 29) {
            f.a("IMEI/MEID not allowed on Android 10+");
            return "";
        }
        if (context == null) {
            return "";
        }
        if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            f.a("android.permission.READ_PHONE_STATE not granted");
            return "";
        }
        return d(context);
    }

    private static void c(Context context, String str) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("GUID", 0).edit().putString("uuid", str).apply();
        f.a("Save uuid to shared preferences: " + str);
    }

    private static void a(Context context, String str) {
        if (context == null) {
            return;
        }
        if (Settings.System.canWrite(context)) {
            try {
                Settings.System.putString(context.getContentResolver(), "GUID_uuid", str);
                f.a("Save uuid to system settings: " + str);
                return;
            } catch (Exception e2) {
                f.a(e2);
                return;
            }
        }
        f.a("android.permission.WRITE_SETTINGS not granted");
    }

    @Override // com.octopus.ad.d.a.c
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a(new e("OAID is empty"));
            return;
        }
        this.f33935d = str;
        this.f33936e = str;
        f.a("Client id is OAID: " + this.f33935d);
    }

    private static void b(Context context, String str) throws IOException {
        if (context == null) {
            return;
        }
        File fileG = g(context);
        if (fileG == null) {
            f.a("UUID file in external storage is null");
            return;
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileG));
            try {
                if (!fileG.exists()) {
                    fileG.createNewFile();
                }
                bufferedWriter.write(str);
                bufferedWriter.flush();
                f.a("Save uuid to external storage: " + str);
                bufferedWriter.close();
            } finally {
            }
        } catch (Exception e2) {
            f.a(e2);
        }
    }

    @Override // com.octopus.ad.d.a.c
    public void a(Exception exc) {
        f.a("onOAIDGetError: " + exc.getMessage());
        String strB = b(this.f33934c);
        if (!TextUtils.isEmpty(strB)) {
            this.f33935d = strB;
            f.a("Client id is AndroidID: " + this.f33935d);
            return;
        }
        String strA = a((Context) this.f33934c);
        if (!TextUtils.isEmpty(strA)) {
            this.f33935d = strA;
            f.a("Client id is IMEI/MEID: " + this.f33935d);
            return;
        }
        String strB2 = b();
        if (!TextUtils.isEmpty(strB2)) {
            this.f33935d = strB2;
            f.a("Client id is PseudoID: " + this.f33935d);
            return;
        }
        this.f33935d = c(this.f33934c);
        f.a("Client id is GUID: " + this.f33935d);
    }
}
