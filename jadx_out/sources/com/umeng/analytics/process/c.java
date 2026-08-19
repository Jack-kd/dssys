package com.umeng.analytics.process;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f49730a;

    /* renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<String, a> f49731b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    private Context f49732c;

    private c() {
    }

    public static c a(Context context) {
        if (f49730a == null) {
            synchronized (c.class) {
                try {
                    if (f49730a == null) {
                        f49730a = new c();
                    }
                } finally {
                }
            }
        }
        c cVar = f49730a;
        cVar.f49732c = context;
        return cVar;
    }

    private a c(String str) {
        if (this.f49731b.get(str) != null) {
            return this.f49731b.get(str);
        }
        a aVarA = a.a(this.f49732c, str);
        this.f49731b.put(str, aVarA);
        return aVarA;
    }

    public synchronized void b(String str) {
        c(str).b();
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private AtomicInteger f49733a = new AtomicInteger();

        /* renamed from: b, reason: collision with root package name */
        private SQLiteOpenHelper f49734b;

        /* renamed from: c, reason: collision with root package name */
        private SQLiteDatabase f49735c;

        private a() {
        }

        public static a a(Context context, String str) {
            Context appContext = UMGlobalContext.getAppContext(context);
            a aVar = new a();
            aVar.f49734b = b.a(appContext, str);
            return aVar;
        }

        public synchronized void b() {
            try {
                if (this.f49733a.decrementAndGet() == 0) {
                    this.f49735c.close();
                }
            } catch (Throwable unused) {
            }
        }

        public synchronized SQLiteDatabase a() {
            try {
                if (this.f49733a.incrementAndGet() == 1) {
                    this.f49735c = this.f49734b.getWritableDatabase();
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.f49735c;
        }
    }

    public synchronized SQLiteDatabase a(String str) {
        return c(str).a();
    }
}
