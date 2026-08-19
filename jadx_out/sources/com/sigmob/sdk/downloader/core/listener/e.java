package com.sigmob.sdk.downloader.core.listener;

import com.sigmob.sdk.downloader.core.listener.assist.b;
import com.sigmob.sdk.downloader.core.listener.assist.c;
import com.sigmob.sdk.downloader.core.listener.assist.e;

/* loaded from: classes4.dex */
public abstract class e extends d implements c.a {

    public static class a implements e.b<c.b> {
        private a() {
        }

        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c.b b(int i2) {
            return new c.b(i2);
        }
    }

    public e() {
        this(new com.sigmob.sdk.downloader.core.listener.assist.c());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.InterfaceC0774b
    public final void a(com.sigmob.sdk.downloader.f fVar, int i2, com.sigmob.sdk.downloader.core.breakpoint.a aVar) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.InterfaceC0774b
    public final void d(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
    }

    private e(com.sigmob.sdk.downloader.core.listener.assist.c cVar) {
        super(new com.sigmob.sdk.downloader.core.listener.assist.b(new a()));
        cVar.a(this);
        a(cVar);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.InterfaceC0774b
    public final void a(com.sigmob.sdk.downloader.f fVar, long j2) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.InterfaceC0774b
    public final void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, boolean z2, b.c cVar2) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.b.InterfaceC0774b
    public final void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc, b.c cVar) {
    }
}
