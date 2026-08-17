package com.sigmob.sdk.downloader.core.listener.assist;

import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.listener.assist.b.c;
import com.sigmob.sdk.downloader.core.listener.assist.e;
import com.sigmob.sdk.downloader.f;

/* loaded from: classes4.dex */
public class b<T extends c> implements d {

    /* renamed from: a, reason: collision with root package name */
    InterfaceC0774b f37615a;

    /* renamed from: b, reason: collision with root package name */
    private a f37616b;

    /* renamed from: c, reason: collision with root package name */
    private final e<T> f37617c;

    public interface a {
        boolean a(f fVar, int i2, long j2, c cVar);

        boolean a(f fVar, int i2, c cVar);

        boolean a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, boolean z2, c cVar2);

        boolean a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, c cVar);
    }

    /* renamed from: com.sigmob.sdk.downloader.core.listener.assist.b$b, reason: collision with other inner class name */
    public interface InterfaceC0774b {
        void a(f fVar, int i2, com.sigmob.sdk.downloader.core.breakpoint.a aVar);

        void a(f fVar, long j2);

        void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, boolean z2, c cVar2);

        void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, c cVar);

        void d(f fVar, int i2, long j2);
    }

    public static class c implements e.a {

        /* renamed from: a, reason: collision with root package name */
        com.sigmob.sdk.downloader.core.breakpoint.c f37618a;

        /* renamed from: b, reason: collision with root package name */
        long f37619b;

        /* renamed from: c, reason: collision with root package name */
        SparseArray<Long> f37620c;

        /* renamed from: d, reason: collision with root package name */
        private final int f37621d;

        public c(int i2) {
            this.f37621d = i2;
        }

        public long a(int i2) {
            return this.f37620c.get(i2).longValue();
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public int b() {
            return this.f37621d;
        }

        public long c() {
            return this.f37619b;
        }

        public SparseArray<Long> d() {
            return this.f37620c.clone();
        }

        public com.sigmob.sdk.downloader.core.breakpoint.c e() {
            return this.f37618a;
        }

        public SparseArray<Long> a() {
            return this.f37620c;
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            this.f37618a = cVar;
            this.f37619b = cVar.i();
            SparseArray<Long> sparseArray = new SparseArray<>();
            int iG = cVar.g();
            for (int i2 = 0; i2 < iG; i2++) {
                sparseArray.put(i2, Long.valueOf(cVar.b(i2).a()));
            }
            this.f37620c = sparseArray;
        }
    }

    public b(e.b<T> bVar) {
        this.f37617c = new e<>(bVar);
    }

    public void a(a aVar) {
        this.f37616b = aVar;
    }

    public a b() {
        return this.f37616b;
    }

    public b(e<T> eVar) {
        this.f37617c = eVar;
    }

    public void a(InterfaceC0774b interfaceC0774b) {
        this.f37615a = interfaceC0774b;
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean z2) {
        this.f37617c.b(z2);
    }

    public void a(f fVar, int i2) {
        InterfaceC0774b interfaceC0774b;
        c cVar = (c) this.f37617c.b(fVar, fVar.y());
        if (cVar == null) {
            return;
        }
        a aVar = this.f37616b;
        if ((aVar == null || !aVar.a(fVar, i2, cVar)) && (interfaceC0774b = this.f37615a) != null) {
            interfaceC0774b.a(fVar, i2, cVar.f37618a.b(i2));
        }
    }

    public void a(f fVar, int i2, long j2) {
        InterfaceC0774b interfaceC0774b;
        c cVar = (c) this.f37617c.b(fVar, fVar.y());
        if (cVar == null) {
            return;
        }
        long jLongValue = cVar.f37620c.get(i2).longValue() + j2;
        cVar.f37620c.put(i2, Long.valueOf(jLongValue));
        cVar.f37619b += j2;
        a aVar = this.f37616b;
        if ((aVar == null || !aVar.a(fVar, i2, j2, cVar)) && (interfaceC0774b = this.f37615a) != null) {
            interfaceC0774b.d(fVar, i2, jLongValue);
            this.f37615a.a(fVar, cVar.f37619b);
        }
    }

    public void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, boolean z2) {
        InterfaceC0774b interfaceC0774b;
        c cVar2 = (c) this.f37617c.a(fVar, cVar);
        a aVar = this.f37616b;
        if ((aVar == null || !aVar.a(fVar, cVar, z2, cVar2)) && (interfaceC0774b = this.f37615a) != null) {
            interfaceC0774b.a(fVar, cVar, z2, cVar2);
        }
    }

    public synchronized void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        c cVar = (c) this.f37617c.c(fVar, fVar.y());
        a aVar2 = this.f37616b;
        if (aVar2 == null || !aVar2.a(fVar, aVar, exc, cVar)) {
            InterfaceC0774b interfaceC0774b = this.f37615a;
            if (interfaceC0774b != null) {
                interfaceC0774b.a(fVar, aVar, exc, cVar);
            }
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean z2) {
        this.f37617c.a(z2);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f37617c.a();
    }
}
