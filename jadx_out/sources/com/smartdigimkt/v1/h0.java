package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;

/* loaded from: classes5.dex */
public final class h0 implements k4 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44487a;

    public h0(BaseScreenATView baseScreenATView) {
        this.f44487a = baseScreenATView;
    }

    @Override // com.smartdigimkt.v1.k4
    public final void a(int i2, int i3) {
        this.f44487a.a(i2, i3);
    }

    @Override // com.smartdigimkt.v1.k4
    public final boolean a() {
        com.smartdigimkt.h1.i iVar;
        BaseScreenATView baseScreenATView = this.f44487a;
        if (!com.smartdigimkt.r2.n.a(baseScreenATView.f43238x, baseScreenATView.f43216b)) {
            return false;
        }
        com.smartdigimkt.x.n nVar = baseScreenATView.f43293k0;
        if ((nVar != null && (iVar = nVar.f45052a) != null && iVar.isShowing()) || !baseScreenATView.f43281V || baseScreenATView.f43304v0) {
            return false;
        }
        this.f44487a.a(4, 5);
        return true;
    }
}
