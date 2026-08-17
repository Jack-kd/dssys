package com.anythink.core.common.n.c;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public interface e extends w, ReadableByteChannel {
    int a(o oVar);

    int a(byte[] bArr);

    int a(byte[] bArr, int i2, int i3);

    long a(byte b3);

    long a(byte b3, long j2);

    long a(byte b3, long j2, long j3);

    long a(f fVar, long j2);

    long a(v vVar);

    String a(long j2, Charset charset);

    String a(Charset charset);

    void a(long j2);

    boolean a(long j2, f fVar);

    boolean a(long j2, f fVar, int i2);

    long b(f fVar);

    long b(f fVar, long j2);

    void b(c cVar, long j2);

    void b(byte[] bArr);

    boolean b(long j2);

    long c(f fVar);

    @Deprecated
    c c();

    c d();

    f d(long j2);

    String e(long j2);

    String f(long j2);

    boolean g();

    e h();

    byte[] h(long j2);

    InputStream i();

    void i(long j2);

    byte k();

    short l();

    int m();

    long n();

    short o();

    int p();

    long q();

    long r();

    long s();

    f t();

    String u();

    String v();

    String w();

    int x();

    byte[] y();
}
