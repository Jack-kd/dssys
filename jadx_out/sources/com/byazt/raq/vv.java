package com.byazt.raq;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* loaded from: classes3.dex */
public interface vv extends Closeable, Flushable {
    void a_(jx jxVar, long j2) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    sz hp();
}
