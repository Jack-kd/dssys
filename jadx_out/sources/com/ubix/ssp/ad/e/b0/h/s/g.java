package com.ubix.ssp.ad.e.b0.h.s;

import java.io.File;

/* loaded from: classes5.dex */
public class g extends e {

    /* renamed from: b, reason: collision with root package name */
    private final long f46757b;

    public g(long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f46757b = j2;
    }

    @Override // com.ubix.ssp.ad.e.b0.h.s.e
    public boolean a(File file, long j2, int i2) {
        return j2 <= this.f46757b;
    }
}
