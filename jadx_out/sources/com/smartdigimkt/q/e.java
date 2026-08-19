package com.smartdigimkt.q;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.octopus.ad.ADBidEvent;
import com.smartdigimkt.odopt.api.ATOaidBindHandler;
import com.smartdigimkt.r.x;
import com.smartdigimkt.t.f;
import java.util.Arrays;

/* loaded from: classes5.dex */
public abstract class e {
    public static void a(Context context, a aVar) {
        String strA;
        String str;
        try {
            strA = new d(context).f42619a;
        } catch (Throwable unused) {
            strA = "";
        }
        try {
        } catch (Throwable th) {
            if (TextUtils.isEmpty(strA)) {
                f.a(5, th.getMessage());
            }
        }
        if (!TextUtils.isEmpty(strA)) {
            aVar.a(strA, false);
            return;
        }
        String str2 = Build.MANUFACTURER;
        String strA2 = a("ro.build.freeme.label");
        if (TextUtils.isEmpty(strA2) || !strA2.equalsIgnoreCase("FREEMEOS")) {
            String strA3 = a("ro.ssui.product");
            if (TextUtils.isEmpty(strA3) || strA3.equalsIgnoreCase("unknown")) {
                String strA4 = a("ro.build.freeme.label");
                if (TextUtils.isEmpty(strA4) || strA4.equalsIgnoreCase("unknown")) {
                    try {
                        context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0);
                        str = "COOLPAD";
                    } catch (Exception unused2) {
                        if (a("ro.odm.manufacturer").equalsIgnoreCase("PRIZE")) {
                            str = "COOLSEA";
                        }
                    }
                } else {
                    str = "FREEME";
                }
            } else {
                str = "SSUI";
            }
        } else {
            str = "FERRMEOS";
        }
        str2 = str;
        if (!TextUtils.isEmpty(str2)) {
            String upperCase = str2.toUpperCase();
            if (Arrays.asList("ASUS", ADBidEvent.HUAWEI, "OPPO", "ONEPLUS", "SAMSUNG", "MEIZU", "MOTOLORA", "LENOVO", "FREEME", "COOLPAD", "COOLSEA", "HONOR", "REALME").contains(upperCase)) {
                com.smartdigimkt.b4.e.a().c(new c(aVar, context, upperCase));
            } else if (ADBidEvent.VIVO.equals(upperCase)) {
                try {
                    Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
                    if (cursorQuery != null) {
                        string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d)) : null;
                        cursorQuery.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                strA = string;
            } else if ("NUBIA".equals(upperCase)) {
                strA = new x(context).a();
            } else {
                ATOaidBindHandler.handleInitOaidBind(context, aVar);
            }
        }
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        aVar.a(strA, false);
    }

    public static String a(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception unused) {
            return null;
        }
    }
}
