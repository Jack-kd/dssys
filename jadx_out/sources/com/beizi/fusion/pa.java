package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public abstract class pa extends gb {

    /* renamed from: c, reason: collision with root package name */
    private String f15647c;

    public pa(Context context, boolean z2) {
        super(context, z2);
        this.f15647c = "101,1001";
    }

    public void a(String str) {
        this.f15647c = str;
    }

    @Override // com.beizi.fusion.gb
    public s5 a(fm fmVar, String str, ua uaVar) {
        s5 s5VarA = super.a(fmVar, str, uaVar);
        if (s5VarA == null) {
            return super.a(fmVar, str, uaVar);
        }
        s5VarA.a("Accept-Encrypt", this.f15647c);
        return s5VarA;
    }
}
