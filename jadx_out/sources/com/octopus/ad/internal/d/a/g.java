package com.octopus.ad.internal.d.a;

import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public class g extends e {

    /* renamed from: a, reason: collision with root package name */
    private final long f34653a;

    public g(long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f34653a = j2;
    }

    @Override // com.octopus.ad.internal.d.a.e, com.octopus.ad.internal.d.a.a
    public /* bridge */ /* synthetic */ void a(File file) throws IOException {
        super.a(file);
    }

    @Override // com.octopus.ad.internal.d.a.e
    public boolean a(File file, long j2, int i2) {
        return j2 <= this.f34653a;
    }
}
