package org.eclipse.jetty.util;

import java.io.ByteArrayOutputStream;

/* loaded from: classes5.dex */
public class f extends ByteArrayOutputStream {
    public f() {
    }

    public byte[] b() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public void c(int i2) {
        ((ByteArrayOutputStream) this).count = i2;
    }

    public int getCount() {
        return ((ByteArrayOutputStream) this).count;
    }

    public f(int i2) {
        super(i2);
    }
}
