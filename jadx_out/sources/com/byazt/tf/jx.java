package com.byazt.tf;

import com.byazt.nke.a;
import com.byazt.nke.sz;

@com.byazt.kj.hp(hp = {0, 1, 2188, 30})
/* loaded from: classes3.dex */
public class jx implements a {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public sz f25763j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f25764l;

    public jx(String str, boolean z2, boolean z3, sz szVar) {
        this.hp = str;
        this.f25764l = z2;
        this.jx = z3;
        this.f25763j = szVar;
    }

    @Override // com.byazt.nke.a
    public String hp() {
        return this.hp;
    }

    @Override // com.byazt.nke.a
    public sz j() {
        return this.f25763j;
    }

    @Override // com.byazt.nke.a
    public boolean jx() {
        return this.jx;
    }

    @Override // com.byazt.nke.a
    public boolean l() {
        return this.f25764l;
    }
}
