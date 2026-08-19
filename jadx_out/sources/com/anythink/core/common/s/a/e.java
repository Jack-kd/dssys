package com.anythink.core.common.s.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
final class e {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, b> f7572a = Collections.synchronizedMap(new HashMap());

    /* renamed from: com.anythink.core.common.s.a.e$1, reason: invalid class name */
    public class AnonymousClass1 extends b {
        public AnonymousClass1(String str, a aVar) {
            super(str, aVar);
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f7575c.a(this.f7576d);
            } finally {
                e.this.f7572a.remove(this.f7574b);
            }
        }
    }

    public interface a {
        void a(AtomicBoolean atomicBoolean);
    }

    public static abstract class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        final String f7574b;

        /* renamed from: c, reason: collision with root package name */
        final a f7575c;

        /* renamed from: d, reason: collision with root package name */
        AtomicBoolean f7576d = new AtomicBoolean();

        public b(String str, a aVar) {
            this.f7574b = str;
            this.f7575c = aVar;
        }
    }

    private b b(String str, a aVar) {
        return new AnonymousClass1(str, aVar);
    }

    public final boolean a() {
        return !this.f7572a.isEmpty();
    }

    public final boolean a(String str) {
        b bVar = this.f7572a.get(str);
        if (bVar == null) {
            return false;
        }
        bVar.f7576d.set(true);
        return true;
    }

    public final void a(String str, a aVar) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(str, aVar);
        this.f7572a.put(str, anonymousClass1);
        h.b().execute(anonymousClass1);
    }
}
