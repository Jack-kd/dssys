package com.anythink.core.common.inner.e;

import com.anythink.core.common.a.b;
import com.anythink.core.common.u.c;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4667a = "b";

    /* renamed from: b, reason: collision with root package name */
    private Map<String, AbstractC0055b> f4668b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final b f4669a = new b(0);

        private a() {
        }
    }

    /* renamed from: com.anythink.core.common.inner.e.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0055b implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private Map<String, Object> f4670a;

        /* renamed from: b, reason: collision with root package name */
        private int f4671b;

        /* renamed from: c, reason: collision with root package name */
        private volatile boolean f4672c = false;

        public AbstractC0055b() {
        }

        public abstract void a();

        public abstract void a(com.anythink.core.common.inner.b.a aVar);

        public abstract void a(e eVar);

        public abstract void a(boolean z2);

        public abstract void b();

        public abstract void b(e eVar);

        public abstract void c();

        public void d() {
            if (this.f4672c) {
                return;
            }
            this.f4672c = true;
            Map<String, Object> map = this.f4670a;
            if (map != null) {
                map.put(b.C0047b.f2179a, Integer.valueOf(this.f4671b));
            }
        }

        public final int e() {
            return this.f4671b;
        }

        public final void a(int i2) {
            this.f4671b = i2;
        }

        private AbstractC0055b(Map<String, Object> map, final String str) {
            this.f4670a = map;
            com.anythink.core.common.u.c.a().a(str, new c.a() { // from class: com.anythink.core.common.inner.e.b.b.1
                @Override // com.anythink.core.common.u.c.a
                public final void a(String str2) {
                    if (!str.equals(str2) || AbstractC0055b.this.f4672c) {
                        return;
                    }
                    AbstractC0055b.this.a(3);
                    AbstractC0055b.this.d();
                }
            });
        }
    }

    public /* synthetic */ b(byte b3) {
        this();
    }

    public static b a() {
        return a.f4669a;
    }

    public final void b(String str) {
        this.f4668b.remove(str);
    }

    private b() {
        this.f4668b = new HashMap(2);
    }

    public final void a(String str, AbstractC0055b abstractC0055b) {
        this.f4668b.put(str, abstractC0055b);
    }

    public final AbstractC0055b a(String str) {
        return this.f4668b.get(str);
    }
}
