package com.sigmob.sdk.downloader.core.listener;

import com.sigmob.sdk.downloader.core.listener.assist.a;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class a implements com.sigmob.sdk.downloader.c, a.InterfaceC0773a, com.sigmob.sdk.downloader.core.listener.assist.d {

    /* renamed from: d, reason: collision with root package name */
    final com.sigmob.sdk.downloader.core.listener.assist.a f37605d;

    public a() {
        this(new com.sigmob.sdk.downloader.core.listener.assist.a());
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, int i3, Map<String, List<String>> map) {
        this.f37605d.b(fVar);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a_(com.sigmob.sdk.downloader.f fVar) {
        this.f37605d.a(fVar);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
        this.f37605d.a(fVar, j2);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void c(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
    }

    public a(com.sigmob.sdk.downloader.core.listener.assist.a aVar) {
        this.f37605d = aVar;
        aVar.a(this);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, long j2) {
    }

    @Override // com.sigmob.sdk.downloader.c
    public void b(com.sigmob.sdk.downloader.f fVar, int i2, Map<String, List<String>> map) {
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, int i2, Map<String, List<String>> map) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void b(boolean z2) {
        this.f37605d.b(z2);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        this.f37605d.a(fVar, cVar);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
        this.f37605d.a(fVar, cVar, bVar);
    }

    @Override // com.sigmob.sdk.downloader.c
    public final void a(com.sigmob.sdk.downloader.f fVar, com.sigmob.sdk.downloader.core.cause.a aVar, Exception exc) {
        this.f37605d.a(fVar, aVar, exc);
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a(com.sigmob.sdk.downloader.f fVar, Map<String, List<String>> map) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public void a(boolean z2) {
        this.f37605d.a(z2);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.d
    public boolean a() {
        return this.f37605d.a();
    }
}
