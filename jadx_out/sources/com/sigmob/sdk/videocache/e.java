package com.sigmob.sdk.videocache;

import java.io.File;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final File f38885a;

    /* renamed from: b, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.file.c f38886b;

    /* renamed from: c, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.file.a f38887c;

    /* renamed from: d, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.sourcestorage.c f38888d;

    /* renamed from: e, reason: collision with root package name */
    public final com.sigmob.sdk.videocache.headers.b f38889e;

    public e(File file, com.sigmob.sdk.videocache.file.c cVar, com.sigmob.sdk.videocache.file.a aVar, com.sigmob.sdk.videocache.sourcestorage.c cVar2, com.sigmob.sdk.videocache.headers.b bVar) {
        this.f38885a = file;
        this.f38886b = cVar;
        this.f38887c = aVar;
        this.f38888d = cVar2;
        this.f38889e = bVar;
    }

    public File a(String str) {
        return new File(this.f38885a, this.f38886b.a(str));
    }
}
