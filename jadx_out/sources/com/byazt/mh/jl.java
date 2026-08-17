package com.byazt.mh;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1216, 19})
/* loaded from: classes3.dex */
public class jl extends w {
    public static final int hp = w.hp("IHDR");
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23021l;

    /* renamed from: s, reason: collision with root package name */
    public byte[] f23022s = new byte[5];

    @Override // com.byazt.mh.w
    public void hp(com.byazt.dk.hp hpVar) throws IOException {
        this.f23021l = hpVar.l();
        this.jx = hpVar.l();
        byte[] bArr = this.f23022s;
        hpVar.hp(bArr, 0, bArr.length);
    }
}
