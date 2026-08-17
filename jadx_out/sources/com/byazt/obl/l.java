package com.byazt.obl;

import java.nio.ByteBuffer;

@com.byazt.kj.hp(hp = {0, 1, 1927, 34})
/* loaded from: classes3.dex */
public class l {
    public final long hp;

    /* renamed from: j, reason: collision with root package name */
    public final long f23930j;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final long f23931l;

    /* renamed from: w, reason: collision with root package name */
    public final ByteBuffer f23932w;

    public l(long j2, long j3, int i2, long j4, ByteBuffer byteBuffer) {
        this.hp = j2;
        this.f23931l = j3;
        this.jx = i2;
        this.f23930j = j4;
        this.f23932w = byteBuffer;
    }

    public long hp() {
        return this.hp;
    }

    public long j() {
        return this.f23930j;
    }

    public int jx() {
        return this.jx;
    }

    public long l() {
        return this.f23931l;
    }

    public ByteBuffer w() {
        return this.f23932w;
    }
}
