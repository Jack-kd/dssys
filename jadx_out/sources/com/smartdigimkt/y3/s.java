package com.smartdigimkt.y3;

import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class s {

    /* renamed from: c, reason: collision with root package name */
    public static volatile s f45249c;

    /* renamed from: a, reason: collision with root package name */
    public final String f45250a = s.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f45251b = new AtomicInteger(0);

    public static s a() {
        if (f45249c == null) {
            synchronized (s.class) {
                try {
                    if (f45249c == null) {
                        f45249c = new s();
                    }
                } finally {
                }
            }
        }
        return f45249c;
    }

    public final synchronized void b() {
        ArrayList arrayListD;
        int iOptInt;
        if (this.f45251b.get() <= 0 && (arrayListD = com.smartdigimkt.k3.j.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).d()) != null && arrayListD.size() > 0) {
            this.f45251b.set(arrayListD.size());
            this.f45251b.get();
            int size = arrayListD.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayListD.get(i2);
                i2++;
                com.smartdigimkt.q3.d dVar = (com.smartdigimkt.q3.d) obj;
                if (System.currentTimeMillis() - dVar.f42848f >= 604800000) {
                    this.f45251b.decrementAndGet();
                    com.smartdigimkt.k3.j.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).a(dVar);
                } else {
                    try {
                        iOptInt = new JSONObject(dVar.f42849g).optInt("business_type");
                    } catch (Throwable unused) {
                        iOptInt = 1000;
                    }
                    if (dVar.f42844b == 3) {
                        new com.smartdigimkt.s4.b(dVar.f42847e, iOptInt).a(new q(this, dVar));
                    } else {
                        new com.smartdigimkt.q4.p(dVar, iOptInt != 1001).a(0, (com.smartdigimkt.l4.b) new r(this, dVar));
                    }
                }
            }
        }
    }

    public final void a(int i2, String str, String str2, String str3, String str4) {
        com.smartdigimkt.b4.e.a().a(new p(this, i2, str, str2, str3, str4), 0L, 16);
    }
}
