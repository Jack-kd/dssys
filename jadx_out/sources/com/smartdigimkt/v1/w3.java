package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.MraidEndCardView;

/* loaded from: classes5.dex */
public final class w3 implements u3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidEndCardView f44639a;

    public w3(MraidEndCardView mraidEndCardView) {
        this.f44639a = mraidEndCardView;
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a(String str) {
        x3 x3Var = this.f44639a.f43496f;
        if (x3Var != null) {
            String str2 = BaseScreenATView.TAG;
            BaseScreenATView baseScreenATView = ((w0) x3Var).f44635a;
            baseScreenATView.f43217c.f41821l = str;
            baseScreenATView.a(1, 13);
        }
    }

    @Override // com.smartdigimkt.v1.u3
    public final void b() {
        x3 x3Var = this.f44639a.f43496f;
        if (x3Var != null) {
            w0 w0Var = (w0) x3Var;
            BaseScreenATView baseScreenATView = w0Var.f44635a;
            if (3 == baseScreenATView.f43264E) {
                com.smartdigimkt.m3.c cVar = baseScreenATView.f43217c;
                if (cVar.f41823n == 1 && cVar.g()) {
                    return;
                }
                w0Var.f44635a.a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, com.anythink.core.common.inner.b.b.f4579V));
                w0Var.f44635a.c(5);
            }
        }
    }

    @Override // com.smartdigimkt.v1.u3
    public final void c() {
        x3 x3Var = this.f44639a.f43496f;
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a() {
        x3 x3Var = this.f44639a.f43496f;
        if (x3Var != null) {
            w0 w0Var = (w0) x3Var;
            BaseScreenATView baseScreenATView = w0Var.f44635a;
            if (3 != baseScreenATView.f43264E || com.smartdigimkt.z.z.h(baseScreenATView.f43217c, baseScreenATView.f43216b)) {
                return;
            }
            BaseScreenATView baseScreenATView2 = w0Var.f44635a;
            baseScreenATView2.a(Math.max(0, baseScreenATView2.f43216b.f41644r.f41892S), new p0(baseScreenATView2));
        }
    }
}
