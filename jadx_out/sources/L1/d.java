package L1;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* loaded from: classes5.dex */
public interface d extends Cloneable {

    public interface a {
    }

    boolean A0(d dVar);

    boolean B0();

    d C0();

    byte[] a0();

    int b0(int i2, d dVar);

    d buffer();

    void c0(int i2, byte b3);

    void clear();

    int d0(int i2, byte[] bArr, int i3, int i4);

    int e0(InputStream inputStream, int i2);

    int f0();

    int g0(int i2, byte[] bArr, int i3, int i4);

    byte get();

    d get(int i2);

    int getIndex();

    d h0(int i2, int i3);

    String i0();

    boolean isReadOnly();

    String j0(Charset charset);

    byte k0(int i2);

    void l0();

    int length();

    int m0(d dVar);

    int n0();

    void o0(int i2);

    byte[] p0();

    byte peek();

    void put(byte b3);

    void q0(int i2);

    int r0(byte[] bArr);

    boolean s0();

    int skip(int i2);

    String toString(String str);

    void u0();

    d v0();

    int w0();

    void writeTo(OutputStream outputStream);

    int x0();

    boolean y0();

    void z0(int i2);
}
