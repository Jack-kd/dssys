package com.sigmob.sdk.downloader.core.interceptor;

import com.sigmob.sdk.downloader.core.interceptor.c;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class b implements c.b {

    /* renamed from: a, reason: collision with root package name */
    private final InputStream f37598a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f37599b;

    /* renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.d f37600c;

    /* renamed from: d, reason: collision with root package name */
    private final int f37601d;

    /* renamed from: e, reason: collision with root package name */
    private final f f37602e;

    /* renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.a f37603f = g.j().b();

    public b(int i2, InputStream inputStream, com.sigmob.sdk.downloader.core.file.d dVar, f fVar) {
        this.f37601d = i2;
        this.f37598a = inputStream;
        this.f37599b = new byte[fVar.o()];
        this.f37600c = dVar;
        this.f37602e = fVar;
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.b
    public long b(com.sigmob.sdk.downloader.core.download.f fVar) throws IOException {
        if (fVar.f().k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f37551a;
        }
        g.j().g().b(fVar.c());
        int i2 = this.f37598a.read(this.f37599b);
        if (i2 == -1) {
            return i2;
        }
        this.f37600c.a(this.f37601d, this.f37599b, i2);
        long j2 = i2;
        fVar.b(j2);
        if (this.f37603f.a(this.f37602e)) {
            fVar.j();
        }
        return j2;
    }
}
