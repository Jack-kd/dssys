package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.ShakeNativeBorderThumbView;

/* loaded from: classes5.dex */
public final class f5 implements com.smartdigimkt.i1.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v1 f44471a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ShakeNativeBorderThumbView f44472b;

    public f5(ShakeNativeBorderThumbView shakeNativeBorderThumbView, v1 v1Var) {
        this.f44472b = shakeNativeBorderThumbView;
        this.f44471a = v1Var;
    }

    @Override // com.smartdigimkt.i1.a
    public final boolean a() {
        String str = this.f44472b.f43580n;
        v1 v1Var = this.f44471a;
        if (v1Var != null) {
            return v1Var.a();
        }
        return false;
    }
}
