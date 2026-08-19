package com.bykv.vk.component.ttvideo.player;

import java.io.Closeable;
import java.io.IOException;

@Keep
/* loaded from: classes3.dex */
public interface IMediaDataSource extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @Keep
    void close() throws IOException;

    @Keep
    long getSize() throws IOException;

    @Keep
    int readAt(long j2, byte[] bArr, int i2, int i3) throws IOException;
}
