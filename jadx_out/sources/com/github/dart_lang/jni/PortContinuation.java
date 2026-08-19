package com.github.dart_lang.jni;

import kotlin.coroutines.e;
import kotlin.coroutines.i;
import kotlinx.coroutines.X;

/* loaded from: classes3.dex */
public class PortContinuation<T> implements e {
    private final long port;

    static {
        System.loadLibrary("dartjni");
    }

    public PortContinuation(long j2) {
        this.port = j2;
    }

    private native void _resumeWith(long j2, Object obj);

    @Override // kotlin.coroutines.e
    public i getContext() {
        return X.b();
    }

    @Override // kotlin.coroutines.e
    public void resumeWith(Object obj) {
        _resumeWith(this.port, obj);
    }
}
