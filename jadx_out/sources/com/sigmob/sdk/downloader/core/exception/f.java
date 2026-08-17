package com.sigmob.sdk.downloader.core.exception;

import java.io.IOException;

/* loaded from: classes4.dex */
public class f extends IOException {

    /* renamed from: a, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.cause.b f37554a;

    public f(com.sigmob.sdk.downloader.core.cause.b bVar) {
        super("Resume failed because of " + bVar);
        this.f37554a = bVar;
    }

    public com.sigmob.sdk.downloader.core.cause.b a() {
        return this.f37554a;
    }
}
