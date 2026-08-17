package com.kwad.sdk.core.videocache.a;

/* loaded from: classes4.dex */
public final class g extends e {
    private final long maxSize;

    public g(long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.maxSize = j2;
    }

    @Override // com.kwad.sdk.core.videocache.a.e
    public final boolean aQ(long j2) {
        return j2 <= this.maxSize;
    }
}
