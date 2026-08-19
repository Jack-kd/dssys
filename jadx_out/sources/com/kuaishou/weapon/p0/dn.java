package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes4.dex */
public class dn {

    /* renamed from: a, reason: collision with root package name */
    public static final String f31140a = "plc001_t_re";

    /* renamed from: b, reason: collision with root package name */
    public static final String f31141b = "wlpauct2";

    /* renamed from: c, reason: collision with root package name */
    public static final String f31142c = "plc001_pd_ptip_pi";

    /* renamed from: d, reason: collision with root package name */
    public static final String f31143d = "wiipaot";

    /* renamed from: e, reason: collision with root package name */
    public static final int f31144e = 1;

    /* renamed from: f, reason: collision with root package name */
    public static final String f31145f = "a1_p_s_p_s";

    /* renamed from: g, reason: collision with root package name */
    public static final String f31146g = "a1_p_s_p_s_c_b";

    /* renamed from: j, reason: collision with root package name */
    private static dn f31147j;

    /* renamed from: h, reason: collision with root package name */
    private SharedPreferences f31148h;

    /* renamed from: i, reason: collision with root package name */
    private SharedPreferences.Editor f31149i;

    private dn(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(bg.f30872r, 4);
            this.f31148h = sharedPreferences;
            this.f31149i = sharedPreferences.edit();
        } catch (Throwable unused) {
        }
    }

    public static synchronized dn a(Context context) {
        try {
            if (f31147j == null) {
                f31147j = new dn(context);
            }
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            throw th;
        }
        return f31147j;
    }

    public boolean b(String str) {
        return this.f31148h.getBoolean(str, false);
    }

    public void b(String str, String str2) {
        try {
            this.f31149i.putString(str, str2);
            this.f31149i.apply();
        } catch (Exception unused) {
        }
    }

    public static dn a() {
        return f31147j;
    }

    public long a(String str) {
        return this.f31148h.getLong(str, 0L);
    }

    public void a(String str, long j2, boolean z2) {
        try {
            this.f31149i.putLong(str, j2);
            if (z2) {
                this.f31149i.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public int a(String str, int i2) {
        try {
            return this.f31148h.getInt(str, i2);
        } catch (Throwable unused) {
            return i2;
        }
    }

    public void a(String str, int i2, boolean z2) {
        try {
            this.f31149i.putInt(str, i2);
            if (z2) {
                this.f31149i.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, Boolean bool, boolean z2) {
        try {
            SharedPreferences.Editor editor = this.f31149i;
            if (editor != null) {
                editor.putBoolean(str, bool.booleanValue());
                if (z2) {
                    this.f31149i.apply();
                }
            }
        } catch (Exception unused) {
        }
    }

    public String a(String str, String str2) {
        return this.f31148h.getString(str, str2);
    }
}
