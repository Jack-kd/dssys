package com.ubix.ssp.ad.e.a0.z;

import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.z.c.c;
import com.ubix.ssp.ad.e.a0.z.c.d;
import com.ubix.ssp.ad.e.a0.z.c.e;
import com.ubix.ssp.ad.e.a0.z.c.f;
import com.ubix.ssp.ad.e.a0.z.c.g;
import com.ubix.ssp.ad.e.a0.z.c.h;
import com.ubix.ssp.ad.e.a0.z.c.i;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f46586a;

    /* renamed from: b, reason: collision with root package name */
    private b f46587b;

    private a() {
        o();
    }

    public static a a() {
        a aVar = f46586a;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        f46586a = aVar2;
        return aVar2;
    }

    private b b() {
        try {
            if (d()) {
                return new f();
            }
            if (!e() && !c()) {
                if (l()) {
                    return f() ? new d() : new e();
                }
                if (j()) {
                    return new g();
                }
                if (!i() && !h()) {
                    if (k()) {
                        h hVar = new h();
                        if (hVar.a().contains("OriginOS")) {
                            return hVar;
                        }
                        if (hVar.a().contains("Funtouch")) {
                            return new com.ubix.ssp.ad.e.a0.z.c.b();
                        }
                    }
                    return new i();
                }
                return new com.ubix.ssp.ad.e.a0.z.c.a();
            }
            return new c();
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean c() {
        return !TextUtils.isEmpty(a("ro.build.version.emui", ""));
    }

    public boolean d() {
        return Build.BRAND.equalsIgnoreCase("HONOR");
    }

    public boolean e() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.HUAWEI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.HUAWEI) || str.equalsIgnoreCase("HONOR");
    }

    public boolean f() {
        return !TextUtils.isEmpty(a("ro.mi.os.version.incremental", ""));
    }

    public boolean g() {
        return !TextUtils.isEmpty(a("ro.miui.ui.version.name", ""));
    }

    public boolean h() {
        return Build.MANUFACTURER.equalsIgnoreCase("ONEPLUS") || Build.BRAND.equalsIgnoreCase("ONEPLUS");
    }

    public boolean i() {
        if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("OPPO") || str.equalsIgnoreCase("REALME") || !TextUtils.isEmpty(a("ro.build.version.opporom", ""));
    }

    public boolean j() {
        return Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG") || Build.BRAND.equalsIgnoreCase("SAMSUNG");
    }

    public boolean k() {
        return Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.VIVO) || Build.BRAND.equalsIgnoreCase(ADBidEvent.VIVO) || !TextUtils.isEmpty(a("ro.vivo.os.version", ""));
    }

    public boolean l() {
        String str = Build.MANUFACTURER;
        if (str.equalsIgnoreCase(ADBidEvent.XIAOMI) || str.equalsIgnoreCase("BLACKSHARK")) {
            return true;
        }
        String str2 = Build.BRAND;
        return str2.equalsIgnoreCase(ADBidEvent.XIAOMI) || str2.equalsIgnoreCase("REDMI") || str2.equalsIgnoreCase("BLACKSHARK");
    }

    public String m() {
        b bVar = this.f46587b;
        return bVar == null ? "" : bVar.b();
    }

    public String n() {
        b bVar = this.f46587b;
        return bVar == null ? "" : bVar.a();
    }

    public void o() {
        this.f46587b = b();
    }

    private String a(String str, String str2) throws ClassNotFoundException {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e2) {
            u.e("System property invoke error: " + e2);
            str3 = null;
        }
        return str3 == null ? "" : str3;
    }
}
