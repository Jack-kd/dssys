package com.umeng.analytics.pro;

import java.io.ByteArrayOutputStream;

/* loaded from: classes5.dex */
public class dg extends ByteArrayOutputStream {
    public dg(int i2) {
        super(i2);
    }

    public byte[] a() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int b() {
        return ((ByteArrayOutputStream) this).count;
    }

    public dg() {
    }
}
