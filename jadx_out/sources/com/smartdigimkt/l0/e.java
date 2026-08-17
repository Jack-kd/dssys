package com.smartdigimkt.l0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes5.dex */
public interface e {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f41474a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    ByteBuffer a();

    void a(ByteBuffer byteBuffer);

    boolean a(int i2, int i3, int i4);

    boolean b();

    int c();

    int d();

    void e();

    int f();

    void flush();

    boolean g();

    void h();
}
