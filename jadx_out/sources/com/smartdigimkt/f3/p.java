package com.smartdigimkt.f3;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.f.b;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Calendar;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class p {

    /* renamed from: f, reason: collision with root package name */
    public static volatile p f40240f;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.k3.a f40242b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f40243c;

    /* renamed from: d, reason: collision with root package name */
    public long f40244d;

    /* renamed from: a, reason: collision with root package name */
    public final String f40241a = p.class.getName();

    /* renamed from: e, reason: collision with root package name */
    public final Object f40245e = new Object();

    public p() {
        this.f40244d = 0L;
        if (SDKContext.getInstance().d() != null) {
            com.smartdigimkt.k3.d dVarA = com.smartdigimkt.k3.d.a(SDKContext.getInstance().d());
            if (com.smartdigimkt.k3.a.f41365b == null) {
                synchronized (com.smartdigimkt.k3.a.class) {
                    try {
                        if (com.smartdigimkt.k3.a.f41365b == null) {
                            com.smartdigimkt.k3.a.f41365b = new com.smartdigimkt.k3.a(dVarA);
                        }
                    } finally {
                    }
                }
            }
            this.f40242b = com.smartdigimkt.k3.a.f41365b;
            this.f40243c = new ConcurrentHashMap();
            this.f40244d = c();
            com.smartdigimkt.b4.e.a().c(new m(this));
        }
    }

    public static void a(p pVar, int i2, String str, com.smartdigimkt.m3.c cVar) {
        pVar.getClass();
        if (TextUtils.isEmpty(str) || !(cVar instanceof com.smartdigimkt.m3.b)) {
            return;
        }
        String str2 = ((com.smartdigimkt.m3.b) cVar).f42054o0;
        String str3 = cVar.f41806a;
        com.smartdigimkt.k3.a aVar = pVar.f40242b;
        synchronized (aVar) {
            try {
                if (aVar.b() != null) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        if (TextUtils.isEmpty(str)) {
                            str = "";
                        }
                        contentValues.put("placement_id", str);
                        contentValues.put("dsp_id", TextUtils.isEmpty(str2) ? "" : str2);
                        contentValues.put("offer_id", TextUtils.isEmpty(str3) ? "" : str3);
                        contentValues.put(b.a.f3231e, Integer.valueOf(i2));
                        TextUtils.isEmpty("");
                        contentValues.put(b.a.f3232f, "");
                        contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                        TextUtils.isEmpty(str2);
                        TextUtils.isEmpty(str3);
                        aVar.b().insert(b.a.f3227a, null, contentValues);
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static p b() {
        if (f40240f == null) {
            synchronized (p.class) {
                try {
                    if (f40240f == null) {
                        f40240f = new p();
                    }
                } finally {
                }
            }
        }
        return f40240f;
    }

    public static long c() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public final void a() {
        SQLiteDatabase sQLiteDatabaseB;
        com.smartdigimkt.k3.a aVar = this.f40242b;
        aVar.getClass();
        try {
            String str = "create_time < " + com.smartdigimkt.k3.a.c();
            synchronized (aVar) {
                sQLiteDatabaseB = aVar.f41366a.b();
            }
            if (sQLiteDatabaseB == null) {
                return;
            }
            aVar.b().delete(b.a.f3227a, str, null);
        } catch (Exception unused) {
        }
    }
}
