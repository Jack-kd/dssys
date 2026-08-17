package com.kwad.sdk.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes4.dex */
public final class k {
    private static String boz = Build.BRAND;
    private static String boA = "OPPO";
    private static String boB = "vivo";
    private static String boC = "Xiaomi";
    private static String boD = "Meizu";
    private static String boE = ADBidEvent.HUAWEI;
    private static String boF = "HONOR";

    private static Intent R(Context context, String str) {
        if ("V5".equals(str)) {
            return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + context.getPackageName()));
        }
        if ("V6".equals(str) || "V7".equals(str)) {
            Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
            intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
            intent.putExtra("extra_pkgname", context.getPackageName());
            return intent;
        }
        Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        intent2.putExtra("extra_pkgname", context.getPackageName());
        return intent2;
    }

    private static boolean UA() {
        return boz.equalsIgnoreCase(boA);
    }

    private static boolean UB() {
        return boz.equalsIgnoreCase(boB);
    }

    private static String UC() {
        return as("ro.miui.ui.version.name", "");
    }

    private static boolean Uv() throws ClassNotFoundException {
        String str = "";
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.build.display.id", "");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return str.toLowerCase().contains("flyme");
    }

    private static boolean Uw() {
        String str = Build.MANUFACTURER;
        return "QIKU".equals(str.toUpperCase()) || "360".equals(str.toUpperCase());
    }

    private static boolean Ux() {
        return boz.equalsIgnoreCase(boC);
    }

    public static boolean Uy() {
        return boz.equalsIgnoreCase(boE);
    }

    public static boolean Uz() {
        return boz.equalsIgnoreCase(boF);
    }

    private static String as(String str, String str2) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static void cV(Context context) {
        Intent intentCW;
        if (context == null || (intentCW = cW(context)) == null) {
            return;
        }
        try {
            context.startActivity(intentCW);
        } catch (Exception unused) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
            context.startActivity(intent);
        }
    }

    private static Intent cW(Context context) {
        if (Ux()) {
            return R(context, UC());
        }
        if (Uy() || Uz()) {
            Intent intent = new Intent();
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra("packageName", context.getPackageName());
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
            return intent;
        }
        if (Uv()) {
            Intent intent2 = new Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent2.addCategory("android.intent.category.DEFAULT");
            intent2.putExtra("packageName", context.getPackageName());
            return intent2;
        }
        if (UA() || UB()) {
            Intent intent3 = new Intent();
            intent3.setFlags(C.ENCODING_PCM_MU_LAW);
            intent3.putExtra("packageName", context.getPackageName());
            intent3.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
            return intent3;
        }
        if (Uw()) {
            Intent intent4 = new Intent("android.intent.action.MAIN");
            intent4.setFlags(C.ENCODING_PCM_MU_LAW);
            intent4.putExtra("packageName", context.getPackageName());
            intent4.setComponent(new ComponentName("com.qihoo360.mobilesafe", "com.qihoo360.mobilesafe.ui.index.AppEnterActivity"));
            return intent4;
        }
        Intent intent5 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent5.setData(Uri.parse("package:" + context.getPackageName()));
        return intent5;
    }
}
