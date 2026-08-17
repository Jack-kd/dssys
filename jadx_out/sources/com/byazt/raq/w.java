package com.byazt.raq;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public interface w extends ec, ReadableByteChannel {
    InputStream a();

    int e() throws IOException;

    byte[] eb(long j2) throws IOException;

    short gu() throws IOException;

    long hp(byte b3) throws IOException;

    String hp(Charset charset) throws IOException;

    void hp(long j2) throws IOException;

    void hp(byte[] bArr) throws IOException;

    boolean hp(long j2, a aVar) throws IOException;

    int jl() throws IOException;

    a jx(long j2) throws IOException;

    @Deprecated
    jx jx();

    short q() throws IOException;

    byte s() throws IOException;

    void s(long j2) throws IOException;

    String u() throws IOException;

    String w(long j2) throws IOException;

    boolean w() throws IOException;

    byte[] xs() throws IOException;

    long zy() throws IOException;
}
