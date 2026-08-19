package com.sigmob.sdk.downloader.core.listener;

import com.sigmob.sdk.downloader.core.listener.assist.b;
import com.sigmob.sdk.downloader.core.listener.assist.e;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class d implements com.sigmob.sdk.downloader.c, b.InterfaceC0774b, com.sigmob.sdk.downloader.core.listener.assist.d {

    /* renamed from: a, reason: collision with root package name */
    final com.sigmob.sdk.downloader.core.listener.assist.b f37630a;

    public static class a implements e.b<b.c> {
        @Override // com.sigmob.sdk.downloader.core.listener.assist.e.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b.c b(int i2) {
            return new b.c(i2);
        }
    }

    public d() {
        this(new com.sigmob.sdk.downloader.core.listener.assist.b(new a()));
    }

    public void a(b.a aVar) {
        this.f37630a.a(aVar);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void b(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
        this.f37630a.a(fVar, i2, j2);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void c(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
        this.f37630a.a(fVar, i2);
    }

    public d(com.sigmob.sdk.downloader.core.listener.assist.b bVar) {
        this.f37630a = bVar;
        bVar.a(this);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean z2) {
        this.f37630a.b(z2);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, Map<String, List<String>> map) {
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        this.f37630a.a(fVar, cVar, true);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
        this.f37630a.a(fVar, cVar, false);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        this.f37630a.a(fVar, aVar, exc);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, Map<String, List<String>> map) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean z2) {
        this.f37630a.a(z2);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f37630a.a();
    }
}
