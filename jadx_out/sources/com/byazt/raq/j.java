package com.byazt.raq;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes3.dex */
public interface j extends vv, WritableByteChannel {
    j eb(int i2) throws IOException;

    @Override // com.byazt.raq.vv, java.io.Flushable
    void flush() throws IOException;

    j gu(long j2) throws IOException;

    j jl(long j2) throws IOException;

    j jx(byte[] bArr) throws IOException;

    j jx(byte[] bArr, int i2, int i3) throws IOException;

    jx jx();

    j l(a aVar) throws IOException;

    j l(String str) throws IOException;

    j n() throws IOException;

    j q(int i2) throws IOException;

    j s(int i2) throws IOException;
}
