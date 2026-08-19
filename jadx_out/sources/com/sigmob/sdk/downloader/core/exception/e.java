package com.sigmob.sdk.downloader.core.exception;

import java.io.IOException;

/* loaded from: classes4.dex */
public class e extends IOException {

    /* renamed from: a, reason: collision with root package name */
    private final long f37552a;

    /* renamed from: b, reason: collision with root package name */
    private final long f37553b;

    public e(long j2, long j3) {
        super("There is Free space less than Require space: " + j3 + " < " + j2);
        this.f37552a = j2;
        this.f37553b = j3;
    }

    public long a() {
        return this.f37552a;
    }

    public long b() {
        return this.f37553b;
    }
}
