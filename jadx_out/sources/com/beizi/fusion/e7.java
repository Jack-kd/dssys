package com.beizi.fusion;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes2.dex */
public class e7 {

    /* renamed from: a, reason: collision with root package name */
    private a f13689a;

    public interface a {
        void a(String str);
    }

    public e7(a aVar) {
        this.f13689a = aVar;
    }

    private String a() {
        return Build.MANUFACTURER.toUpperCase();
    }

    public static boolean c() {
        if (Build.MANUFACTURER.equalsIgnoreCase(ADBidEvent.HUAWEI)) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase(ADBidEvent.HUAWEI) || str.equalsIgnoreCase("HONOR");
    }

    public static boolean d() {
        if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("OPPO") || str.equalsIgnoreCase("REALME") || !TextUtils.isEmpty(a("ro.build.version.opporom", ""));
    }

    public void b(Context context) {
        String strA;
        a aVar;
        try {
            rm.a("DevicesIDsHelper", "init oaid " + a());
            if ("ASUS".equalsIgnoreCase(a()) || c()) {
                a(context);
            } else if ("LENOVO".equalsIgnoreCase(a()) || "MOTOLORA".equalsIgnoreCase(a())) {
                new xg(context).a(this.f13689a);
            } else {
                if (!"MEIZU".equalsIgnoreCase(a())) {
                    if ("NUBIA".equalsIgnoreCase(a())) {
                        strA = new qj(context).a();
                    } else if (d() || "SAMSUNG".equalsIgnoreCase(a())) {
                        a(context);
                    } else if (ADBidEvent.VIVO.equalsIgnoreCase(a())) {
                        strA = new gq(context).a();
                    } else if (ADBidEvent.XIAOMI.equalsIgnoreCase(a()) || "BLACKSHARK".equalsIgnoreCase(a())) {
                        strA = new pq(context).a();
                    } else if ("ONEPLUS".equalsIgnoreCase(a()) || "ZTE".equalsIgnoreCase(a()) || "FERRMEOS".equalsIgnoreCase(a()) || b() || "SSUI".equalsIgnoreCase(a()) || e()) {
                        a(context);
                    }
                    aVar = this.f13689a;
                    if (aVar != null || strA == null) {
                    }
                    aVar.a(strA);
                    return;
                }
                new yh(context).a(this.f13689a);
            }
            strA = null;
            aVar = this.f13689a;
            if (aVar != null) {
            }
        } catch (Throwable th) {
            rm.a(th);
        }
    }

    public boolean e() throws ClassNotFoundException {
        String strA = a("ro.ssui.product");
        return (TextUtils.isEmpty(strA) || strA.equalsIgnoreCase("unknown")) ? false : true;
    }

    public static String a(String str, String str2) throws ClassNotFoundException {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e2) {
            rm.b("DevicesIDsHelper", "System property invoke error: " + e2);
            rm.a(e2);
            str3 = null;
        }
        return str3 == null ? "" : str3;
    }

    private String a(String str) throws ClassNotFoundException {
        if (str == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception unused) {
            return null;
        }
    }

    private void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if ("ASUS".equalsIgnoreCase(a())) {
                new v0(context).a(this.f13689a);
                return;
            }
            if (c()) {
                new z8(context).a(this.f13689a);
                return;
            }
            if (d()) {
                new rk(context).a(this.f13689a);
                return;
            }
            if ("ONEPLUS".equalsIgnoreCase(a())) {
                new mk(context).a(this.f13689a);
                return;
            }
            if ("ZTE".equalsIgnoreCase(a())) {
                new sq(context).a(this.f13689a);
                return;
            }
            if (!"FERRMEOS".equalsIgnoreCase(a()) && !b()) {
                if (!"SSUI".equalsIgnoreCase(a()) && !e()) {
                    if ("SAMSUNG".equalsIgnoreCase(a())) {
                        new tm(context).a(this.f13689a);
                        return;
                    }
                    return;
                }
                new sq(context).a(this.f13689a);
                return;
            }
            new sq(context).a(this.f13689a);
        } catch (Throwable th) {
            rm.b("DevicesIDsHelper", "getIDFromNewThead exception");
            rm.a(th);
        }
    }

    public boolean b() throws ClassNotFoundException {
        String strA = a("ro.build.freeme.label");
        return !TextUtils.isEmpty(strA) && strA.equalsIgnoreCase("FREEMEOS");
    }
}
