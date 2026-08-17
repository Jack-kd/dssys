package com.kwad.sdk.core.network.idc.a;

/* loaded from: classes4.dex */
public final class a {
    private final long aUr;
    private volatile boolean aUs = false;

    public a(long j2, boolean z2) {
        this.aUr = j2;
    }

    public final boolean Ms() {
        return this.aUs;
    }

    public final long Mt() {
        return this.aUr;
    }

    public final a bF(boolean z2) {
        this.aUs = true;
        return this;
    }
}
