package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.FullScreenATView;

/* loaded from: classes5.dex */
public final class m2 implements k4 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenATView f44541a;

    public m2(FullScreenATView fullScreenATView) {
        this.f44541a = fullScreenATView;
    }

    @Override // com.smartdigimkt.v1.k4
    public final void a(int i2, int i3) {
        this.f44541a.a(i2, i3);
    }

    @Override // com.smartdigimkt.v1.k4
    public final boolean a() {
        com.smartdigimkt.h1.i iVar;
        FullScreenATView fullScreenATView = this.f44541a;
        if (!com.smartdigimkt.r2.n.a(fullScreenATView.f43238x, fullScreenATView.f43216b)) {
            return false;
        }
        com.smartdigimkt.x.n nVar = fullScreenATView.f43293k0;
        if ((nVar != null && (iVar = nVar.f45052a) != null && iVar.isShowing()) || !fullScreenATView.f43281V || fullScreenATView.f43304v0) {
            return false;
        }
        this.f44541a.a(4, 5);
        return true;
    }
}
