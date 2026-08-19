package com.anythink.china.d;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.n;
import java.util.Calendar;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile b f1475a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final String f1476b = "b";

    /* renamed from: c, reason: collision with root package name */
    private Context f1477c;

    /* renamed from: d, reason: collision with root package name */
    private String f1478d;

    /* renamed from: e, reason: collision with root package name */
    private long f1479e = 0;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1480f = false;

    private b() {
    }

    public final String b() {
        return this.f1478d;
    }

    public static b a() {
        if (f1475a == null) {
            synchronized (b.class) {
                try {
                    if (f1475a == null) {
                        f1475a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1475a;
    }

    public final void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            this.f1477c = context;
            if (this.f1479e == 0) {
                this.f1479e = ad.b(context, t.b.f3058a, t.a.f3031O, 0L);
            }
            long j2 = this.f1479e;
            if (j2 > 0) {
                Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                long timeInMillis = calendar.getTimeInMillis();
                calendar.set(11, 23);
                calendar.set(12, 59);
                calendar.set(13, 59);
                calendar.set(14, 999);
                long timeInMillis2 = calendar.getTimeInMillis();
                if (j2 >= timeInMillis && j2 <= timeInMillis2) {
                    return;
                }
            }
            if (TextUtils.isEmpty(this.f1478d)) {
                String strC = ad.c(this.f1477c, t.b.f3058a, t.a.f3030N, "");
                this.f1478d = strC;
                if (TextUtils.isEmpty(strC)) {
                    String strA = n.a(UUID.randomUUID().toString() + new Random().nextInt(100000001));
                    this.f1478d = strA;
                    ad.b(this.f1477c, t.b.f3058a, t.a.f3030N, strA);
                }
            }
            if (this.f1480f) {
                return;
            }
            this.f1480f = true;
            new a(this.f1477c, s.b().p(), s.b().q(), this.f1478d).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.china.d.b.1
                @Override // com.anythink.core.common.m.s
                public final void onLoadCanceled(int i2) {
                    b.this.f1480f = false;
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadError(int i2, String str, AdError adError) {
                    b.this.f1480f = false;
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadFinish(int i2, Object obj) {
                    try {
                        b.this.f1480f = false;
                        b.this.f1479e = System.currentTimeMillis();
                        ad.a(b.this.f1477c, t.b.f3058a, t.a.f3031O, b.this.f1479e);
                    } catch (Exception unused) {
                    }
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadStart(int i2) {
                    b.this.f1480f = true;
                }
            });
        } catch (Throwable unused) {
        }
    }

    private static boolean a(long j2) {
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, 999);
        return j2 >= timeInMillis && j2 <= calendar.getTimeInMillis();
    }
}
