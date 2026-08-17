package com.sigmob.sdk.downloader.core.exception;

import java.io.IOException;

/* loaded from: classes4.dex */
public class i extends IOException {

    /* renamed from: a, reason: collision with root package name */
    private final int f37555a;

    public i(int i2, long j2) {
        super("Response code can't handled on internal " + i2 + " with current offset " + j2);
        this.f37555a = i2;
    }

    public int a() {
        return this.f37555a;
    }
}
