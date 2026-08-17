package com.sigmob.sdk.videocache;

import java.io.ByteArrayInputStream;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private volatile byte[] f38881a;

    /* renamed from: b, reason: collision with root package name */
    private volatile boolean f38882b;

    public a() {
        this(new byte[0]);
    }

    @Override // com.sigmob.sdk.videocache.c
    public int a(byte[] bArr, long j2, int i2) throws p {
        if (j2 >= this.f38881a.length) {
            return -1;
        }
        if (j2 <= 2147483647L) {
            return new ByteArrayInputStream(this.f38881a).read(bArr, (int) j2, i2);
        }
        throw new IllegalArgumentException("Too long offset for memory cache " + j2);
    }

    @Override // com.sigmob.sdk.videocache.c
    public void b() throws p {
    }

    @Override // com.sigmob.sdk.videocache.c
    public void c() {
        this.f38882b = true;
    }

    @Override // com.sigmob.sdk.videocache.c
    public boolean d() {
        return this.f38882b;
    }

    public a(byte[] bArr) {
        this.f38881a = (byte[]) n.a(bArr);
    }

    @Override // com.sigmob.sdk.videocache.c
    public long a() throws p {
        return this.f38881a.length;
    }

    @Override // com.sigmob.sdk.videocache.c
    public void a(byte[] bArr, int i2) throws p {
        n.a(this.f38881a);
        n.a(i2 >= 0 && i2 <= bArr.length);
        byte[] bArrCopyOf = Arrays.copyOf(this.f38881a, this.f38881a.length + i2);
        System.arraycopy(bArr, 0, bArrCopyOf, this.f38881a.length, i2);
        this.f38881a = bArrCopyOf;
    }
}
