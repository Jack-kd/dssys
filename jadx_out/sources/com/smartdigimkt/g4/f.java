package com.smartdigimkt.g4;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.smartdigimkt.c5.i;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: h, reason: collision with root package name */
    public static volatile f f40386h;

    /* renamed from: a, reason: collision with root package name */
    public final String f40387a = f.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public String f40388b = "";

    /* renamed from: c, reason: collision with root package name */
    public final AtomicLong f40389c = new AtomicLong(0);

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f40390d = new AtomicLong(0);

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f40391e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f40392f = new AtomicBoolean(false);

    /* renamed from: g, reason: collision with root package name */
    public final AtomicBoolean f40393g = new AtomicBoolean(false);

    public static Intent a(f fVar, Context context) {
        fVar.getClass();
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(fVar.f40388b)) {
            String strA = "";
            for (int i2 = 0; i2 < 2; i2++) {
                strA = com.smartdigimkt.p.a.a(strA, packageName);
            }
            fVar.f40388b = i.a(com.smartdigimkt.c5.d.e(strA));
        }
        Intent intent = new Intent(fVar.f40388b);
        intent.setPackage(packageName);
        intent.putExtra("s", 2);
        return intent;
    }

    public final void b(Context context, JSONObject jSONObject) {
        String string;
        if (context != null && this.f40391e.get()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.f40389c.get();
            if (jCurrentTimeMillis - j2 <= 60000 || !this.f40389c.compareAndSet(j2, jCurrentTimeMillis)) {
                return;
            }
            try {
                string = jSONObject.toString();
            } catch (Throwable unused) {
                string = "";
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.smartdigimkt.b4.e.a().c(new c(this, context, string));
        }
    }

    public static f a() {
        if (f40386h == null) {
            synchronized (f.class) {
                try {
                    if (f40386h == null) {
                        f40386h = new f();
                    }
                } finally {
                }
            }
        }
        return f40386h;
    }

    public final void a(Context context) {
        com.smartdigimkt.a5.a aVarA;
        if (context == null || (aVarA = com.smartdigimkt.z4.d.c().a()) == null || aVarA.f39371f) {
            return;
        }
        this.f40393g.set(aVarA.f39362X != 2);
        this.f40392f.set(true);
        com.smartdigimkt.b4.e.a().c(new b(this, context));
    }

    public final void a(Context context, JSONObject jSONObject) {
        String string;
        if (context != null && this.f40391e.get()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.f40390d.get();
            if (jCurrentTimeMillis - j2 <= 60000 || !this.f40390d.compareAndSet(j2, jCurrentTimeMillis)) {
                return;
            }
            try {
                string = jSONObject.toString();
            } catch (Throwable unused) {
                string = "";
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.smartdigimkt.b4.e.a().c(new d(this, context, string));
        }
    }
}
