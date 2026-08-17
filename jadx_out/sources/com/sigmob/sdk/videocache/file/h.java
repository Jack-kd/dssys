package com.sigmob.sdk.videocache.file;

import java.io.File;

/* loaded from: classes4.dex */
public class h extends e {

    /* renamed from: a, reason: collision with root package name */
    private final long f38904a;

    public h(long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f38904a = j2;
    }

    @Override // com.sigmob.sdk.videocache.file.e
    public boolean a(File file, long j2, int i2) {
        return j2 <= this.f38904a;
    }
}
