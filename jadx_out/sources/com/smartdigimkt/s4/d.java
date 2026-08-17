package com.smartdigimkt.s4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public int f43140a;

    /* renamed from: b, reason: collision with root package name */
    public String f43141b;

    public abstract int a();

    public abstract void a(int i2, String str, String str2);

    public final void a(c cVar) {
        if (e.f43142c == null) {
            synchronized (e.class) {
                try {
                    if (e.f43142c == null) {
                        e.f43142c = new e();
                    }
                } finally {
                }
            }
        }
        e.f43142c.a(this, cVar);
    }

    public abstract byte[] b();

    public static byte[] a(String str) throws IOException {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes("utf-8"));
            gZIPOutputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }
}
