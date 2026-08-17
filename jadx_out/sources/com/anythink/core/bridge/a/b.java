package com.anythink.core.bridge.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.anythink.core.common.d.m;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.n;
import com.byazt.rx.BaseConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static volatile b f1745b;

    /* renamed from: a, reason: collision with root package name */
    private final String f1746a = b.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    private String f1747c = "";

    /* renamed from: d, reason: collision with root package name */
    private final int f1748d = 1;

    /* renamed from: e, reason: collision with root package name */
    private final int f1749e = BaseConstants.Time.MINUTE;

    /* renamed from: f, reason: collision with root package name */
    private final AtomicLong f1750f = new AtomicLong(0);

    /* renamed from: g, reason: collision with root package name */
    private final AtomicLong f1751g = new AtomicLong(0);

    /* renamed from: h, reason: collision with root package name */
    private final AtomicBoolean f1752h = new AtomicBoolean(false);

    /* renamed from: i, reason: collision with root package name */
    private final AtomicBoolean f1753i = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    private final AtomicBoolean f1754j = new AtomicBoolean(false);

    /* renamed from: com.anythink.core.bridge.a.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f1755a;

        public AnonymousClass1(Context context) {
            this.f1755a = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (b.this.f1752h.get() && b.this.f1754j.get() && b.this.f1753i.get()) {
                    Intent intentA = b.a(b.this, this.f1755a);
                    intentA.putExtra("a", 1);
                    m.a(this.f1755a).a(intentA);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.anythink.core.bridge.a.b$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1763a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f1764b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Bundle f1765c;

        public AnonymousClass4(int i2, Context context, Bundle bundle) {
            this.f1763a = i2;
            this.f1764b = context;
            this.f1765c = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (b.this.f1752h.get() && b.this.f1754j.get()) {
                    int i2 = this.f1763a;
                    if (i2 == 5 || i2 == 6 || i2 == 7) {
                        Intent intentA = b.a(b.this, this.f1764b);
                        intentA.putExtra("a", this.f1763a);
                        intentA.putExtra("b", this.f1765c);
                        m.a(this.f1764b).a(intentA);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private b() {
    }

    public static b a() {
        if (f1745b == null) {
            synchronized (b.class) {
                try {
                    if (f1745b == null) {
                        f1745b = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1745b;
    }

    private void b(Context context) {
        c.a().a(new d(e.ca, new AnonymousClass1(context)));
    }

    private Intent c(Context context) {
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(this.f1747c)) {
            String str = "";
            for (int i2 = 0; i2 < 2; i2++) {
                str = str + packageName;
            }
            this.f1747c = n.c(j.c(str));
        }
        Intent intent = new Intent(this.f1747c);
        intent.setPackage(packageName);
        intent.putExtra("s", 1);
        return intent;
    }

    public final void b(final Context context, JSONObject jSONObject) {
        if (context != null && this.f1752h.get()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.f1751g.get();
            if (jCurrentTimeMillis - j2 <= 60000 || !this.f1751g.compareAndSet(j2, jCurrentTimeMillis)) {
                return;
            }
            final String string = jSONObject.toString();
            c.a().a(new d(e.cc, new Runnable() { // from class: com.anythink.core.bridge.a.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Intent intentA = b.a(b.this, context);
                        intentA.putExtra("a", 3);
                        intentA.putExtra("d", string);
                        m.a(context).a(intentA);
                    } catch (Throwable unused) {
                    }
                }
            }));
        }
    }

    public final void a(Context context) {
        if (context == null) {
            return;
        }
        AtomicBoolean atomicBoolean = this.f1752h;
        s.b();
        atomicBoolean.set(true);
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(context).b(s.b().p());
        if (bVarB == null || bVarB.J()) {
            return;
        }
        this.f1754j.set(bVarB.aC() != 2);
        this.f1753i.set(true);
        c.a().a(new d(e.ca, new AnonymousClass1(context)));
    }

    public final void a(final Context context, JSONObject jSONObject) {
        if (context != null && this.f1752h.get()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = this.f1750f.get();
            if (jCurrentTimeMillis - j2 <= 60000 || !this.f1750f.compareAndSet(j2, jCurrentTimeMillis)) {
                return;
            }
            final String string = jSONObject.toString();
            c.a().a(new d(e.cb, new Runnable() { // from class: com.anythink.core.bridge.a.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Intent intentA = b.a(b.this, context);
                        intentA.putExtra("a", 2);
                        intentA.putExtra("d", string);
                        m.a(context).a(intentA);
                    } catch (Throwable unused) {
                    }
                }
            }));
        }
    }

    private void a(Context context, int i2, Bundle bundle) {
        c.a().a(new d(e.cd, new AnonymousClass4(i2, context, bundle)));
    }

    public static /* synthetic */ Intent a(b bVar, Context context) {
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(bVar.f1747c)) {
            String str = "";
            for (int i2 = 0; i2 < 2; i2++) {
                str = str + packageName;
            }
            bVar.f1747c = n.c(j.c(str));
        }
        Intent intent = new Intent(bVar.f1747c);
        intent.setPackage(packageName);
        intent.putExtra("s", 1);
        return intent;
    }
}
