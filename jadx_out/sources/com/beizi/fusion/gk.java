package com.beizi.fusion;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes2.dex */
public class gk {

    /* renamed from: a, reason: collision with root package name */
    private String f14110a;

    /* renamed from: b, reason: collision with root package name */
    private d f14111b;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static gk f14112a = new gk();
    }

    public enum c {
        REALME("ColorOS", "ro.build.version.oplusrom"),
        OPPO("ColorOS", "ro.build.version.oplusrom"),
        MIUI("MIUI", "ro.miui.ui.version.name"),
        HYPER("HyperOS", "ro.mi.os.version.incremental"),
        REDMI("MIUI", "ro.miui.ui.version.name"),
        HARMONY("HarmonyOS", "hw_sc.build.platform.version"),
        MAGICUI("MagicUI", "ro.build.version.magic"),
        EMUI("EMUI", "ro.build.version.emui"),
        MEIZU("Flyme", "ro.build.display.id"),
        ONEPLUS("HydrogenOS", "ro.rom.version"),
        VIVO("Funtouch", "ro.vivo.os.version"),
        NUBIA("ro.build.nubia.rom.name", "ro.build.nubia.rom.code");


        /* renamed from: a, reason: collision with root package name */
        private final String f14126a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14127b;

        c(String str, String str2) {
            this.f14126a = str;
            this.f14127b = str2;
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private final String f14128a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14129b;

        /* renamed from: c, reason: collision with root package name */
        private final String f14130c;

        private d(String str, String str2, String str3) {
            this.f14128a = str;
            this.f14129b = str2;
            this.f14130c = str3;
        }
    }

    public static gk a() {
        return b.f14112a;
    }

    private void b(String str) {
        if (d()) {
            a(str, c.HARMONY);
            return;
        }
        c cVar = c.MAGICUI;
        if (TextUtils.isEmpty(a(cVar.f14127b))) {
            a(str, c.EMUI);
        } else {
            a(str, cVar);
        }
    }

    private void d(String str) {
        try {
            if (Integer.parseInt(uo.a("ro.miui.ui.version.code", "0")) >= 816) {
                a(str, c.HYPER);
                return;
            }
        } catch (NumberFormatException unused) {
        }
        a(str, c.MIUI);
    }

    private String e(String str) {
        return !TextUtils.isEmpty(str) ? str.replaceAll(" ", "").toUpperCase() : "";
    }

    private boolean f() {
        return Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.VIVO) || Build.BRAND.equalsIgnoreCase(ADBidEvent.VIVO);
    }

    private boolean g() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.XIAOMI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.XIAOMI) || str.equalsIgnoreCase("REDMI");
    }

    public void c() {
        c cVarValueOf;
        if (this.f14111b != null) {
            return;
        }
        String strE = e(Build.BRAND);
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            cVarValueOf = c.valueOf(strE);
        } catch (IllegalArgumentException unused) {
            cVarValueOf = null;
        }
        if (cVarValueOf != null) {
            a(strE, cVarValueOf);
            return;
        }
        strE.getClass();
        switch (strE) {
            case "XIAOMI":
                d(strE);
                break;
            case "HONOR":
                b(strE);
                break;
            case "HUAWEI":
                c(strE);
                break;
        }
    }

    private gk() {
        if (b.f14112a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    private void a(String str, c cVar) {
        if (TextUtils.isEmpty(cVar.f14126a)) {
            return;
        }
        this.f14111b = new d(str, cVar.f14126a.contains(com.anythink.core.common.d.i.f2495E) ? a(cVar.f14126a) : cVar.f14126a, a(cVar.f14127b));
    }

    private boolean e() {
        if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("OPPO") || str.equalsIgnoreCase("REALME");
    }

    private boolean d() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return !TextUtils.isEmpty((String) cls.getMethod("getOsBrand", null).invoke(cls, null));
        } catch (Exception e2) {
            rm.a(e2);
            return false;
        }
    }

    private String a(String str) {
        return uo.a(str, "");
    }

    public String b() {
        d dVar = this.f14111b;
        if (dVar != null) {
            return dVar.f14130c;
        }
        return "";
    }

    public String a(Context context) {
        return al.a(context, "com.huawei.hwid");
    }

    private void c(String str) {
        if (d()) {
            a(str, c.HARMONY);
        } else {
            a(str, c.EMUI);
        }
    }

    public String b(Context context) {
        if (TextUtils.isEmpty(this.f14110a)) {
            if (f()) {
                this.f14110a = al.b(context.getApplicationContext(), "com.bbk.appstore");
            } else if (e()) {
                this.f14110a = al.b(context.getApplicationContext(), "com.heytap.market");
            } else if (g()) {
                this.f14110a = al.b(context.getApplicationContext(), "com.xiaomi.market");
            } else {
                this.f14110a = al.a(context.getApplicationContext(), "com.huawei.appmarket");
            }
        }
        return this.f14110a;
    }
}
