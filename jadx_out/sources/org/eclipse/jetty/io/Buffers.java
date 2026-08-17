package org.eclipse.jetty.io;

/* loaded from: classes5.dex */
public interface Buffers {

    public enum Type {
        BYTE_ARRAY,
        DIRECT,
        INDIRECT
    }

    L1.d a(int i2);

    void b(L1.d dVar);

    L1.d getBuffer();

    L1.d getHeader();
}
