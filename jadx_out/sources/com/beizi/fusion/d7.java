package com.beizi.fusion;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;

/* loaded from: classes2.dex */
public class d7 {

    /* renamed from: a, reason: collision with root package name */
    private b f13387a;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f13388a;

        public a(Context context) {
            this.f13388a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13388a == null) {
                return;
            }
            try {
                if ("ASUS".equals(d7.this.a().toUpperCase())) {
                    new w0(this.f13388a).a(d7.this.f13387a);
                    return;
                }
                if (d7.c()) {
                    new a9(this.f13388a).a(d7.this.f13387a);
                    return;
                }
                if (d7.d()) {
                    new sk(this.f13388a).a(d7.this.f13387a);
                    return;
                }
                if ("ONEPLUS".equals(d7.this.a().toUpperCase())) {
                    new nk(this.f13388a).a(d7.this.f13387a);
                    return;
                }
                if ("ZTE".equals(d7.this.a().toUpperCase())) {
                    new tq(this.f13388a).a(d7.this.f13387a);
                    return;
                }
                if (!"FERRMEOS".equals(d7.this.a().toUpperCase()) && !d7.this.b()) {
                    if (!"SSUI".equals(d7.this.a().toUpperCase()) && !d7.this.e()) {
                        if ("SAMSUNG".equals(d7.this.a().toUpperCase())) {
                            new um(this.f13388a).a(d7.this.f13387a);
                            return;
                        }
                        return;
                    }
                    new tq(this.f13388a).a(d7.this.f13387a);
                    return;
                }
                new tq(this.f13388a).a(d7.this.f13387a);
            } catch (Throwable unused) {
                mh.b("BeiZis", "getIDFromNewThead exception");
            }
        }
    }

    public interface b {
        void a(String str);
    }

    public d7(b bVar) {
        this.f13387a = bVar;
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

    public boolean e() throws ClassNotFoundException {
        String strA = a("ro.ssui.product");
        return (TextUtils.isEmpty(strA) || strA.equalsIgnoreCase("unknown")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        return Build.MANUFACTURER.toUpperCase();
    }

    public void b(Context context) {
        String strA;
        b bVar;
        try {
            mh.b("BeiZis", "init oaid " + a());
            if ("ASUS".equals(a().toUpperCase()) || c()) {
                a(context);
            } else if ("LENOVO".equals(a().toUpperCase()) || "MOTOLORA".equals(a().toUpperCase())) {
                new yg(context).a(this.f13387a);
            } else {
                if (!"MEIZU".equals(a().toUpperCase())) {
                    if ("NUBIA".equals(a().toUpperCase())) {
                        strA = new pj(context).a();
                    } else if (d() || "SAMSUNG".equals(a().toUpperCase())) {
                        a(context);
                    } else if (ADBidEvent.VIVO.equals(a().toUpperCase())) {
                        strA = new fq(context).a();
                    } else if (ADBidEvent.XIAOMI.equals(a().toUpperCase()) || "BLACKSHARK".equals(a().toUpperCase())) {
                        strA = new oq(context).a();
                    } else if ("ONEPLUS".equals(a().toUpperCase()) || "ZTE".equals(a().toUpperCase()) || "FERRMEOS".equals(a().toUpperCase()) || b() || "SSUI".equals(a().toUpperCase()) || e()) {
                        a(context);
                    }
                    bVar = this.f13387a;
                    if (bVar != null || strA == null) {
                    }
                    bVar.a(strA);
                    return;
                }
                new xh(context).a(this.f13387a);
            }
            strA = null;
            bVar = this.f13387a;
            if (bVar != null) {
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(String str, String str2) throws ClassNotFoundException {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e2) {
            mh.b("BeiZis", "System property invoke error: " + e2);
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
        new Thread(new a(context)).start();
    }

    public boolean b() throws ClassNotFoundException {
        String strA = a("ro.build.freeme.label");
        return !TextUtils.isEmpty(strA) && strA.equalsIgnoreCase("FREEMEOS");
    }
}
