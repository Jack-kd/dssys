package com.kwad.framework.filedownloader.e;

import java.io.Closeable;

/* loaded from: classes4.dex */
public interface a extends Closeable {
    void Du();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void seek(long j2);

    void setLength(long j2);

    void write(byte[] bArr, int i2, int i3);
}
