package com.anythink.core.d.b;

import com.anythink.core.e.g;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    e f8574b;

    /* renamed from: c, reason: collision with root package name */
    private final String f8575c = a.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    Map<String, com.anythink.core.d.a.c> f8573a = new ConcurrentHashMap();

    public a(e eVar) {
        this.f8574b = eVar;
    }

    private com.anythink.core.d.a.d a(String str, int i2, g gVar) {
        com.anythink.core.d.a.c cVar = this.f8573a.get(str);
        int i3 = gVar.a() == 1 ? i2 : -1;
        if (cVar == null || !cVar.b(gVar) || cVar.a(i3) == null) {
            cVar = new com.anythink.core.d.a.c();
            cVar.a(gVar);
            int iC = gVar.c();
            long jCurrentTimeMillis = System.currentTimeMillis() - ((gVar.b() * 86400) * 1000);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jCurrentTimeMillis);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            cVar.a(i3, this.f8574b.a(str, i3, calendar.getTimeInMillis(), iC));
            this.f8573a.put(str, cVar);
        } else {
            cVar.c(i2);
        }
        return cVar.b(i3);
    }

    private void a(String str, com.anythink.core.d.a.a aVar) {
        com.anythink.core.d.a.c cVar = this.f8573a.get(str);
        if (cVar != null) {
            cVar.a(aVar);
        }
    }

    private List<com.anythink.core.d.a.a> a(String str, int i2, g gVar, int i3) {
        long jCurrentTimeMillis = System.currentTimeMillis() - ((gVar.b() * 86400) * 1000);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return this.f8574b.a(str, i2, calendar.getTimeInMillis(), i3);
    }
}
