package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
class j {

    /* renamed from: b, reason: collision with root package name */
    private static SQLiteOpenHelper f49436b;

    /* renamed from: d, reason: collision with root package name */
    private static Context f49437d;

    /* renamed from: a, reason: collision with root package name */
    private AtomicInteger f49438a;

    /* renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f49439c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final j f49440a = new j();

        private a() {
        }
    }

    public static j a(Context context) {
        if (f49437d == null && context != null) {
            Context applicationContext = context.getApplicationContext();
            f49437d = applicationContext;
            f49436b = i.a(applicationContext);
        }
        return a.f49440a;
    }

    public synchronized void b() {
        try {
            if (this.f49438a.decrementAndGet() == 0) {
                this.f49439c.close();
            }
        } catch (Throwable unused) {
        }
    }

    private j() {
        this.f49438a = new AtomicInteger();
    }

    public synchronized SQLiteDatabase a() {
        try {
            if (this.f49438a.incrementAndGet() == 1) {
                this.f49439c = f49436b.getWritableDatabase();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f49439c;
    }
}
