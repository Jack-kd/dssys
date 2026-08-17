package com.smartdigimkt.y0;

import com.smartdigimkt.a1.t;
import com.smartdigimkt.j0.f0;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final int f45163a;

    /* renamed from: b, reason: collision with root package name */
    public final f0[] f45164b;

    /* renamed from: c, reason: collision with root package name */
    public final k f45165c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f45166d;

    public m(f0[] f0VarArr, h[] hVarArr, i iVar) {
        this.f45164b = f0VarArr;
        this.f45165c = new k(hVarArr);
        this.f45166d = iVar;
        this.f45163a = f0VarArr.length;
    }

    public final boolean a(int i2) {
        return this.f45164b[i2] != null;
    }

    public final boolean a(m mVar, int i2) {
        return mVar != null && t.a(this.f45164b[i2], mVar.f45164b[i2]) && t.a(this.f45165c.f45161b[i2], mVar.f45165c.f45161b[i2]);
    }
}
