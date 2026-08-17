package com.sigmob.sdk.downloader.core.listener.assist;

import com.sigmob.sdk.downloader.core.listener.assist.e;
import com.sigmob.sdk.downloader.f;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public class a implements d, e.b<b> {

    /* renamed from: a, reason: collision with root package name */
    private final e<b> f37606a;

    /* renamed from: b, reason: collision with root package name */
    private InterfaceC0773a f37607b;

    /* renamed from: com.sigmob.sdk.downloader.core.listener.assist.a$a, reason: collision with other inner class name */
    public interface InterfaceC0773a {
        void a(f fVar, int i2, long j2, long j3);

        void a(f fVar, long j2, long j3);

        void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, b bVar);

        void a(f fVar, com.sigmob.sdk.downloader.core.cause.b bVar);

        void a(f fVar, b bVar);
    }

    public static class b implements e.a {

        /* renamed from: a, reason: collision with root package name */
        final int f37608a;

        /* renamed from: b, reason: collision with root package name */
        Boolean f37609b;

        /* renamed from: c, reason: collision with root package name */
        Boolean f37610c;

        /* renamed from: d, reason: collision with root package name */
        volatile Boolean f37611d;

        /* renamed from: e, reason: collision with root package name */
        int f37612e;

        /* renamed from: f, reason: collision with root package name */
        long f37613f;

        /* renamed from: g, reason: collision with root package name */
        final AtomicLong f37614g = new AtomicLong();

        public b(int i2) {
            this.f37608a = i2;
        }

        public long a() {
            return this.f37613f;
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public int b() {
            return this.f37608a;
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.a
        public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
            this.f37612e = cVar.g();
            this.f37613f = cVar.j();
            this.f37614g.set(cVar.i());
            if (this.f37609b == null) {
                this.f37609b = Boolean.FALSE;
            }
            if (this.f37610c == null) {
                this.f37610c = Boolean.valueOf(this.f37614g.get() > 0);
            }
            if (this.f37611d == null) {
                this.f37611d = Boolean.TRUE;
            }
        }
    }

    public a() {
        this.f37606a = new e<>(this);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public b b(int i2) {
        return new b(i2);
    }

    public a(e<b> eVar) {
        this.f37606a = eVar;
    }

    public void a(InterfaceC0773a interfaceC0773a) {
        this.f37607b = interfaceC0773a;
    }

    public void b(f fVar) {
        b bVar = (b) this.f37606a.b(fVar, fVar.y());
        if (bVar == null) {
            return;
        }
        Boolean bool = Boolean.TRUE;
        if (bool.equals(bVar.f37610c) && bool.equals(bVar.f37611d)) {
            bVar.f37611d = Boolean.FALSE;
        }
        InterfaceC0773a interfaceC0773a = this.f37607b;
        if (interfaceC0773a != null) {
            interfaceC0773a.a(fVar, bVar.f37612e, bVar.f37614g.get(), bVar.f37613f);
        }
    }

    public void a(f fVar) {
        b bVar = (b) this.f37606a.a(fVar, null);
        InterfaceC0773a interfaceC0773a = this.f37607b;
        if (interfaceC0773a != null) {
            interfaceC0773a.a(fVar, bVar);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean z2) {
        this.f37606a.b(z2);
    }

    public void a(f fVar, long j2) {
        b bVar = (b) this.f37606a.b(fVar, fVar.y());
        if (bVar == null) {
            return;
        }
        bVar.f37614g.addAndGet(j2);
        InterfaceC0773a interfaceC0773a = this.f37607b;
        if (interfaceC0773a != null) {
            interfaceC0773a.a(fVar, bVar.f37614g.get(), bVar.f37613f);
        }
    }

    public void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        b bVar = (b) this.f37606a.b(fVar, cVar);
        if (bVar == null) {
            return;
        }
        bVar.a(cVar);
        Boolean bool = Boolean.TRUE;
        bVar.f37609b = bool;
        bVar.f37610c = bool;
        bVar.f37611d = bool;
    }

    public void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
        InterfaceC0773a interfaceC0773a;
        b bVar2 = (b) this.f37606a.b(fVar, cVar);
        if (bVar2 == null) {
            return;
        }
        bVar2.a(cVar);
        if (bVar2.f37609b.booleanValue() && (interfaceC0773a = this.f37607b) != null) {
            interfaceC0773a.a(fVar, bVar);
        }
        Boolean bool = Boolean.TRUE;
        bVar2.f37609b = bool;
        bVar2.f37610c = Boolean.FALSE;
        bVar2.f37611d = bool;
    }

    public void a(f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        b bVar = (b) this.f37606a.c(fVar, fVar.y());
        InterfaceC0773a interfaceC0773a = this.f37607b;
        if (interfaceC0773a != null) {
            interfaceC0773a.a(fVar, aVar, exc, bVar);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean z2) {
        this.f37606a.a(z2);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f37606a.a();
    }
}
