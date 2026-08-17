package com.sigmob.sdk.videocache;

import java.io.ByteArrayInputStream;

/* loaded from: classes4.dex */
public class b implements t {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f38883a;

    /* renamed from: b, reason: collision with root package name */
    private ByteArrayInputStream f38884b;

    public b(byte[] bArr) {
        this.f38883a = bArr;
    }

    @Override // com.sigmob.sdk.videocache.t
    public int a(byte[] bArr) throws p {
        return this.f38884b.read(bArr, 0, bArr.length);
    }

    @Override // com.sigmob.sdk.videocache.t
    public void b() throws p {
    }

    @Override // com.sigmob.sdk.videocache.t
    public String c() throws p {
        return null;
    }

    @Override // com.sigmob.sdk.videocache.t
    public u d() {
        return null;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.sourcestorage.c e() {
        return null;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.headers.b f() {
        return null;
    }

    @Override // com.sigmob.sdk.videocache.t
    public String g() {
        return null;
    }

    @Override // com.sigmob.sdk.videocache.t
    public long a() throws p {
        return this.f38883a.length;
    }

    @Override // com.sigmob.sdk.videocache.t
    public void a(long j2) throws p {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.f38883a);
        this.f38884b = byteArrayInputStream;
        byteArrayInputStream.skip(j2);
    }
}
