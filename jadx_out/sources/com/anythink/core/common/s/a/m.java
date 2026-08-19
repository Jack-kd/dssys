package com.anythink.core.common.s.a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class m {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, a> f7628a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Object> f7629b = new ReferenceQueue<>();

    public static class a extends WeakReference<Object> {

        /* renamed from: a, reason: collision with root package name */
        private final String f7630a;

        public a(String str, Object obj, ReferenceQueue<Object> referenceQueue) {
            super(obj, referenceQueue);
            this.f7630a = str;
        }
    }

    public final synchronized Object a(String str) {
        b();
        a aVar = this.f7628a.get(str);
        if (aVar == null) {
            return null;
        }
        return aVar.get();
    }

    public final synchronized void b(String str) {
        this.f7628a.remove(str);
    }

    private void b() {
        a aVar = (a) this.f7629b.poll();
        while (aVar != null) {
            a aVar2 = this.f7628a.get(aVar.f7630a);
            if (aVar2 != null && aVar2.get() == null) {
                this.f7628a.remove(aVar.f7630a);
            }
            aVar = (a) this.f7629b.poll();
        }
    }

    public final synchronized void a(String str, Object obj) {
        a aVar;
        try {
            b();
            if (obj != null && ((aVar = this.f7628a.get(str)) == null || aVar.get() != obj)) {
                this.f7628a.put(str, new a(str, obj, this.f7629b));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        this.f7628a.clear();
        b();
    }
}
