package com.anythink.core.common.r;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7291a = "e";

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, Integer> f7292b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, ScheduledFuture<?>> f7293c = new ConcurrentHashMap();

    public final void a(h hVar, a aVar) {
        g gVar;
        if (hVar != null) {
            try {
                gVar = hVar.f7318j;
            } catch (Throwable unused) {
                return;
            }
        } else {
            gVar = null;
        }
        if (gVar != null && gVar.a(16, hVar.f7310b)) {
            String str = hVar.f7310b;
            Integer num = this.f7292b.get(str);
            Integer numValueOf = num != null ? Integer.valueOf(num.intValue() + 1) : 1;
            hVar.f7317i = numValueOf.intValue();
            this.f7292b.put(str, numValueOf);
            if (numValueOf.intValue() > gVar.g()) {
                return;
            }
            this.f7293c.put(str, com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cL, new f(hVar, aVar)), gVar.h() * numValueOf.intValue()));
        }
    }

    public final void a(h hVar) {
        if (hVar == null) {
            return;
        }
        String str = hVar.f7310b;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            hVar.f7317i = 0;
            this.f7292b.remove(str);
            ScheduledFuture<?> scheduledFutureRemove = this.f7293c.remove(str);
            com.anythink.core.common.v.b.c.a();
            com.anythink.core.common.v.b.c.a(scheduledFutureRemove);
        } catch (Throwable unused) {
        }
    }
}
