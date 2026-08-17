package com.byazt.raq;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public interface ec extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long hp(jx jxVar, long j2) throws IOException;

    sz hp();
}
