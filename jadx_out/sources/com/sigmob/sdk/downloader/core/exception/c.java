package com.sigmob.sdk.downloader.core.exception;

import java.io.IOException;

/* loaded from: classes4.dex */
public class c extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public static final c f37551a = new c() { // from class: com.sigmob.sdk.downloader.core.exception.c.1
        @Override // java.lang.Throwable
        public void printStackTrace() {
            throw new IllegalAccessError("Stack is ignored for signal");
        }
    };

    private c() {
        super("Interrupted");
    }
}
