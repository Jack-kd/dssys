package com.anythink.core.common.n.c;

import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public interface d extends v, WritableByteChannel {
    d A();

    long a(w wVar);

    d a(w wVar, long j2);

    d b(String str);

    d b(String str, int i2, int i3);

    d b(String str, int i2, int i3, Charset charset);

    d b(String str, Charset charset);

    c c();

    d c(byte[] bArr, int i2, int i3);

    d d(f fVar);

    d d(byte[] bArr);

    OutputStream e();

    d f();

    @Override // com.anythink.core.common.n.c.v, java.io.Flushable
    void flush();

    d h(int i2);

    d i(int i2);

    d j(int i2);

    d k(int i2);

    d l(int i2);

    d m(int i2);

    d n(long j2);

    d o(long j2);

    d p(long j2);

    d q(long j2);
}
