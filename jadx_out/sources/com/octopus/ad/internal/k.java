package com.octopus.ad.internal;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static k f34941a;

    /* renamed from: b, reason: collision with root package name */
    private final ArrayList<a> f34942b = new ArrayList<>();

    public interface a {
        void a(String str);
    }

    public static synchronized k a() {
        try {
            if (f34941a == null) {
                f34941a = new k();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f34941a;
    }

    public void b(a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            Iterator<a> it = this.f34942b.iterator();
            while (it.hasNext()) {
                if (it.next() == aVar) {
                    it.remove();
                }
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a(a aVar) {
        this.f34942b.add(aVar);
    }

    public void a(String str) {
        try {
            ArrayList<a> arrayList = this.f34942b;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                a aVar = arrayList.get(i2);
                i2++;
                aVar.a(str);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }
}
