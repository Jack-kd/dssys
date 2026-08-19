package com.sigmob.sdk.videocache.file;

import java.io.File;

/* loaded from: classes4.dex */
public class g extends e {

    /* renamed from: a, reason: collision with root package name */
    private final int f38903a;

    public g(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.f38903a = i2;
    }

    @Override // com.sigmob.sdk.videocache.file.e
    public boolean a(File file, long j2, int i2) {
        return i2 <= this.f38903a;
    }
}
