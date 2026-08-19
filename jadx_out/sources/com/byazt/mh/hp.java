package com.byazt.mh;

import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1216, 28})
/* loaded from: classes3.dex */
public class hp extends w {
    public static final int hp = w.hp("acTL");
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23020l;

    @Override // com.byazt.mh.w
    public void hp(com.byazt.dk.hp hpVar) throws IOException {
        this.f23020l = hpVar.l();
        this.jx = hpVar.l();
    }
}
