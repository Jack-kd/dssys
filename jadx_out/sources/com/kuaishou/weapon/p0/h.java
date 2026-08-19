package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static final String f31170a = "re_po_rt";

    /* renamed from: e, reason: collision with root package name */
    private static h f31171e;

    /* renamed from: b, reason: collision with root package name */
    private SharedPreferences f31172b;

    /* renamed from: c, reason: collision with root package name */
    private SharedPreferences.Editor f31173c;

    /* renamed from: d, reason: collision with root package name */
    private Context f31174d;

    public h(Context context, String str) {
        try {
            this.f31174d = context;
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 4);
            this.f31172b = sharedPreferences;
            this.f31173c = sharedPreferences.edit();
        } catch (Throwable unused) {
        }
    }

    public static synchronized h a(Context context, String str) {
        try {
            if (f31171e == null) {
                synchronized (h.class) {
                    try {
                        if (f31171e == null) {
                            f31171e = new h(context, str);
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f31171e;
    }

    public Context b() {
        return this.f31174d;
    }

    public void c(String str, String str2) {
        try {
            this.f31173c.putString(str, str2);
            this.f31173c.apply();
        } catch (Exception unused) {
        }
    }

    public void d(String str, int i2) {
        this.f31173c.putInt(str, i2);
        this.f31173c.apply();
    }

    public boolean e(String str) {
        return this.f31172b.getBoolean(str, false);
    }

    public int b(String str) {
        try {
            return this.f31172b.getInt(str, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public int b(String str, int i2) {
        try {
            return this.f31172b.getInt(str, i2);
        } catch (Exception unused) {
            return i2;
        }
    }

    public void c(String str, String str2, boolean z2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            if (z2) {
                str2 = c.b(str2.getBytes(), 2);
            }
            this.f31173c.putString(str, str2);
            this.f31173c.apply();
        } catch (Throwable unused) {
        }
    }

    public long d(String str) {
        return this.f31172b.getLong(str, 0L);
    }

    public String b(String str, String str2) {
        return this.f31172b.getString(str, str2);
    }

    public h(Context context) {
        try {
            this.f31174d = context;
            SharedPreferences sharedPreferences = context.getSharedPreferences("re_po_rt", 4);
            this.f31172b = sharedPreferences;
            this.f31173c = sharedPreferences.edit();
        } catch (Throwable unused) {
        }
    }

    public String b(String str, String str2, boolean z2) {
        String strB = b(str, "");
        return !TextUtils.isEmpty(strB) ? z2 ? c.b(strB, 2) : strB : str2;
    }

    public static h a() {
        return f31171e;
    }

    public int c(String str, int i2) {
        try {
            return this.f31172b.getInt(str, i2);
        } catch (Exception unused) {
            return i2;
        }
    }

    public void a(Context context) {
        this.f31174d = context;
    }

    public void b(String str, long j2) {
        this.f31173c.putLong(str, j2);
        this.f31173c.apply();
    }

    public int c(String str) {
        try {
            return this.f31172b.getInt(str, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public void a(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f31173c.putString(str, str2);
            this.f31173c.apply();
        } catch (Throwable unused) {
        }
    }

    public void c() {
        try {
            this.f31173c.apply();
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2, boolean z2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f31173c.putString(str, str2);
            if (z2) {
                this.f31173c.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        return this.f31172b.getString(str, "");
    }

    public void a(String str, int i2) {
        try {
            this.f31173c.putInt(str, i2);
            this.f31173c.apply();
        } catch (Throwable unused) {
        }
    }

    public void a(String str, int i2, boolean z2) {
        try {
            this.f31173c.putInt(str, i2);
            if (z2) {
                this.f31173c.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public long a(String str, long j2) {
        return this.f31172b.getLong(str, j2);
    }

    public void a(String str, Boolean bool) {
        this.f31173c.putBoolean(str, bool.booleanValue());
        this.f31173c.apply();
    }
}
