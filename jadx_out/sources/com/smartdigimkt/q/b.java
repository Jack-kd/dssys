package com.smartdigimkt.q;

import com.smartdigimkt.odopt.api.ATOaidBindHandler;
import com.smartdigimkt.t.f;

/* loaded from: classes5.dex */
public final class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f42613a;

    public b(c cVar) {
        this.f42613a = cVar;
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str, boolean z2) {
        a aVar = this.f42613a.f42614a;
        if (aVar != null) {
            aVar.a(str, z2);
        }
    }

    @Override // com.smartdigimkt.q.a
    public final void a(String str) {
        f.a(5, str);
        c cVar = this.f42613a;
        ATOaidBindHandler.handleInitOaidBind(cVar.f42615b, cVar.f42614a);
    }
}
