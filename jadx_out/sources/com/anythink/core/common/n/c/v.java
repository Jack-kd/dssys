package com.anythink.core.common.n.c;

import java.io.Closeable;
import java.io.Flushable;

/* loaded from: classes2.dex */
public interface v extends Closeable, Flushable {
    x a();

    void a(c cVar, long j2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();
}
