package com.umeng.analytics.pro;

import com.umeng.analytics.pro.dx;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* loaded from: classes5.dex */
public class dn {

    /* renamed from: a, reason: collision with root package name */
    private final ByteArrayOutputStream f49181a;

    /* renamed from: b, reason: collision with root package name */
    private final ep f49182b;

    /* renamed from: c, reason: collision with root package name */
    private ed f49183c;

    public dn() {
        this(new dx.a());
    }

    public byte[] a(de deVar) throws dk {
        this.f49181a.reset();
        deVar.write(this.f49183c);
        return this.f49181a.toByteArray();
    }

    public String b(de deVar) throws dk {
        return new String(a(deVar));
    }

    public dn(ef efVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f49181a = byteArrayOutputStream;
        ep epVar = new ep(byteArrayOutputStream);
        this.f49182b = epVar;
        this.f49183c = efVar.a(epVar);
    }

    public String a(de deVar, String str) throws dk {
        try {
            return new String(a(deVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new dk("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }
}
