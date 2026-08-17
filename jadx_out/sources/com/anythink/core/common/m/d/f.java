package com.anythink.core.common.m.d;

import com.anythink.core.common.d.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: d, reason: collision with root package name */
    public static final int f5724d = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final int f5725e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f5726f = 6;

    /* renamed from: g, reason: collision with root package name */
    public static final int f5727g = 10;

    /* renamed from: h, reason: collision with root package name */
    public static final int f5728h = 9;

    /* renamed from: i, reason: collision with root package name */
    public static final int f5729i = 2;

    /* renamed from: j, reason: collision with root package name */
    public static final int f5730j = 3;

    /* renamed from: k, reason: collision with root package name */
    public static final int f5731k = 4;

    /* renamed from: l, reason: collision with root package name */
    protected int f5732l;

    /* renamed from: m, reason: collision with root package name */
    protected String f5733m;

    public interface a {
        void a(Object obj);

        void a(Throwable th);
    }

    public abstract int a();

    public final void a(int i2, String str) {
        this.f5732l = i2;
        this.f5733m = str;
    }

    public com.anythink.core.common.m.b.h a_() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
        if (bVarB != null) {
            return new com.anythink.core.common.m.b.h(bVarB.y(), bVarB.z());
        }
        return null;
    }

    public abstract int b();

    public abstract byte[] c();

    public abstract boolean d();

    public void e() {
    }

    public int f() {
        return 0;
    }

    public final JSONObject h() {
        return com.anythink.core.common.m.f.a(f());
    }

    public final JSONObject i() {
        return com.anythink.core.common.m.f.b(f());
    }

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

    public final void a(a aVar) {
        g.a().a(this, aVar);
    }
}
