package com.smartdigimkt.z4;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class j {

    /* renamed from: m, reason: collision with root package name */
    public static j f45470m;

    /* renamed from: a, reason: collision with root package name */
    public h f45471a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f45472b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public long f45473c;

    /* renamed from: d, reason: collision with root package name */
    public int f45474d;

    /* renamed from: e, reason: collision with root package name */
    public long f45475e;

    /* renamed from: f, reason: collision with root package name */
    public int f45476f;

    /* renamed from: g, reason: collision with root package name */
    public long f45477g;

    /* renamed from: h, reason: collision with root package name */
    public int f45478h;

    /* renamed from: i, reason: collision with root package name */
    public long f45479i;

    /* renamed from: j, reason: collision with root package name */
    public int f45480j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f45481k;

    /* renamed from: l, reason: collision with root package name */
    public String f45482l;

    public j() {
        try {
            Context contextD = SDKContext.getInstance().d();
            if (contextD == null) {
                return;
            }
            String strB = y.b(contextD, "interaction_control", "last_save_date");
            String strA = a(System.currentTimeMillis());
            if (!TextUtils.equals(strB, strA)) {
                c();
                return;
            }
            String strB2 = y.b(contextD, "interaction_control", "daily_count_day");
            if (!TextUtils.isEmpty(strB2)) {
                strB = strB2;
            }
            if (!TextUtils.equals(strB, strA)) {
                c();
                return;
            }
            this.f45473c = y.a(contextD, "interaction_control", "sp_cross_last_time");
            this.f45474d = y.a(contextD, "interaction_control", "sp_cross_daily_count", 0);
            this.f45475e = y.a(contextD, "interaction_control", "sp_shake_last_time");
            this.f45476f = y.a(contextD, "interaction_control", "sp_shake_daily_count", 0);
            this.f45477g = y.a(contextD, "interaction_control", "sp_swipe_last_time");
            this.f45478h = y.a(contextD, "interaction_control", "sp_swipe_daily_count", 0);
            this.f45479i = y.a(contextD, "interaction_control", "sp_twist_last_time");
            this.f45480j = y.a(contextD, "interaction_control", "sp_twist_daily_count", 0);
            this.f45482l = strA;
        } catch (Throwable unused) {
        }
    }

    public static synchronized j b() {
        try {
            if (f45470m == null) {
                synchronized (j.class) {
                    try {
                        if (f45470m == null) {
                            f45470m = new j();
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f45470m;
    }

    public final void a(k kVar) {
        Object objValueOf;
        try {
            Objects.toString(kVar.f45483a);
            h hVar = kVar.f45483a;
            this.f45471a = hVar;
            Objects.toString(hVar);
            ArrayList arrayList = kVar.f45484b;
            if (arrayList != null) {
                arrayList.size();
            }
            ArrayList arrayList2 = kVar.f45484b;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                this.f45472b.clear();
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    g gVar = (g) obj;
                    this.f45472b.put(Integer.valueOf(gVar.f45462a), gVar);
                    gVar.toString();
                }
            }
            h hVar2 = this.f45471a;
            if (hVar2 != null) {
                objValueOf = Boolean.valueOf(hVar2.f45466a == 1);
            } else {
                objValueOf = "null";
            }
            objValueOf.toString();
            this.f45472b.size();
        } catch (Throwable unused) {
        }
    }

    public final void c() {
        try {
            this.f45473c = 0L;
            this.f45474d = 0;
            this.f45475e = 0L;
            this.f45476f = 0;
            this.f45477g = 0L;
            this.f45478h = 0;
            this.f45479i = 0L;
            this.f45480j = 0;
            this.f45482l = a(System.currentTimeMillis());
            com.smartdigimkt.b4.e.a().a(new i(this), 1);
        } catch (Throwable unused) {
        }
    }

    public final boolean a() {
        try {
            h hVar = this.f45471a;
            if (hVar != null && hVar.f45466a == 1) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                h hVar2 = this.f45471a;
                if (jCurrentTimeMillis - this.f45473c < hVar2.f45467b * 1000) {
                    return false;
                }
                if (this.f45474d >= hVar2.f45468c) {
                    return false;
                }
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    public final int a(int i2) {
        try {
            if (i2 == 1) {
                return this.f45476f;
            }
            if (i2 == 2) {
                return this.f45478h;
            }
            if (i2 != 3) {
                return 0;
            }
            return this.f45480j;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String a(long j2) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j2);
            return String.format("%04d%02d%02d", Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)));
        } catch (Throwable unused) {
            return "19700101";
        }
    }
}
