package com.beizi.fusion;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class hk {

    /* renamed from: a, reason: collision with root package name */
    private d f14315a;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static hk f14316a = new hk();
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
        private final String f14330a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14331b;

        c(String str, String str2) {
            this.f14330a = str;
            this.f14331b = str2;
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private final String f14332a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14333b;

        /* renamed from: c, reason: collision with root package name */
        private final String f14334c;

        private d(String str, String str2, String str3) {
            this.f14332a = str;
            this.f14333b = str2;
            this.f14334c = str3;
        }
    }

    public static hk a() {
        return b.f14316a;
    }

    private void b(String str) {
        if (d()) {
            a(str, c.HARMONY);
            return;
        }
        c cVar = c.MAGICUI;
        if (TextUtils.isEmpty(a(cVar.f14331b))) {
            a(str, c.EMUI);
        } else {
            a(str, cVar);
        }
    }

    private void d(String str) {
        try {
            if (Integer.valueOf(to.a("ro.miui.ui.version.code", "0")).intValue() >= 816) {
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

    public void c() {
        c cVarValueOf;
        if (this.f14315a != null) {
            return;
        }
        String strE = e(Build.BRAND);
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            cVarValueOf = c.valueOf(strE);
        } catch (Throwable unused) {
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

    private hk() {
        if (b.f14316a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    private void a(String str, c cVar) {
        if (TextUtils.isEmpty(cVar.f14330a)) {
            return;
        }
        this.f14315a = new d(str, cVar.f14330a.contains(com.anythink.core.common.d.i.f2495E) ? a(cVar.f14330a) : cVar.f14330a, a(cVar.f14331b));
    }

    private boolean d() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return !TextUtils.isEmpty((String) cls.getMethod("getOsBrand", null).invoke(cls, null));
        } catch (Exception unused) {
            return false;
        }
    }

    private String a(String str) {
        return to.a(str, "");
    }

    public String b() {
        d dVar = this.f14315a;
        if (dVar != null) {
            return dVar.f14334c;
        }
        return "";
    }

    private void c(String str) {
        if (d()) {
            a(str, c.HARMONY);
        } else {
            a(str, c.EMUI);
        }
    }
}
