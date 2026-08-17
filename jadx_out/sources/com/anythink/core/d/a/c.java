package com.anythink.core.d.a;

import android.text.TextUtils;
import com.anythink.core.e.g;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    g f8566a;

    /* renamed from: b, reason: collision with root package name */
    List<a> f8567b;

    /* renamed from: c, reason: collision with root package name */
    Map<Integer, List<a>> f8568c = new ConcurrentHashMap(3);

    public final void a(int i2, List<a> list) {
        if (i2 == -1) {
            this.f8567b = list;
        } else {
            this.f8568c.put(Integer.valueOf(i2), list);
        }
    }

    public final boolean b(g gVar) {
        g gVar2 = this.f8566a;
        return gVar2 != null && gVar2.b() == gVar.b() && this.f8566a.a() == gVar.a() && this.f8566a.c() == gVar.c() && this.f8566a.d() == gVar.d();
    }

    public final void c(int i2) {
        List<a> listA = a(i2);
        if (this.f8566a == null || listA == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - ((this.f8566a.b() * 86400) * 1000);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        Iterator<a> it = listA.iterator();
        while (it.hasNext()) {
            if (it.next().g() < timeInMillis) {
                it.remove();
            }
        }
    }

    public final List<a> a(int i2) {
        if (i2 == -1) {
            return this.f8567b;
        }
        return this.f8568c.get(Integer.valueOf(i2));
    }

    public final void a(g gVar) {
        this.f8566a = gVar;
    }

    private g a() {
        return this.f8566a;
    }

    public final d b(int i2) {
        List<a> list;
        if (i2 == -1) {
            list = this.f8567b;
        } else {
            list = this.f8568c.get(Integer.valueOf(i2));
        }
        if (list == null || list.size() < this.f8566a.d()) {
            return null;
        }
        double d2 = 0.0d;
        String strD = "";
        for (a aVar : list) {
            double dF = aVar.f();
            if (dF > d2) {
                strD = aVar.d();
                d2 = dF;
            }
        }
        return new d(d2, strD);
    }

    public final void a(a aVar) {
        if (this.f8566a == null) {
            return;
        }
        List<a> list = this.f8567b;
        if (list != null) {
            a(list, aVar);
        }
        List<a> list2 = this.f8568c.get(Integer.valueOf(aVar.a()));
        if (list2 != null) {
            a(list2, aVar);
        }
    }

    private void a(List<a> list, a aVar) {
        Iterator<a> it = list.iterator();
        int i2 = 0;
        while (true) {
            if (it.hasNext()) {
                if (TextUtils.equals(it.next().b(), aVar.b())) {
                    list.set(i2, aVar);
                    break;
                }
                i2++;
            } else {
                list.add(0, aVar);
                break;
            }
        }
        while (list.size() > this.f8566a.c()) {
            list.remove(list.size() - 1);
        }
    }
}
