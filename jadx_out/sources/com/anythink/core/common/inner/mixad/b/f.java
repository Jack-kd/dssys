package com.anythink.core.common.inner.mixad.b;

import android.app.Activity;
import com.anythink.core.common.l.e.a.a;
import com.anythink.core.common.l.f.a.a;

/* loaded from: classes2.dex */
public final class f extends a implements com.anythink.core.common.l.c.a.e {

    /* renamed from: b, reason: collision with root package name */
    private com.anythink.core.common.l.f.a.a f4695b;

    @Override // com.anythink.core.common.l.c.a.e
    public final void a(Activity activity, com.anythink.core.basead.b.c cVar, a.InterfaceC0065a interfaceC0065a) {
        com.anythink.core.common.l.f.a.a aVar = this.f4695b;
        if (aVar != null) {
            aVar.a(activity, cVar, interfaceC0065a);
        }
    }

    @Override // com.anythink.core.common.l.c.a.e
    public final void a(Activity activity, com.anythink.core.basead.b.c cVar, a.InterfaceC0064a interfaceC0064a) {
        com.anythink.core.common.l.e.a.a aVar = this.f4691a;
        if (aVar != null) {
            aVar.a(activity, cVar, interfaceC0064a);
        }
    }

    @Override // com.anythink.core.common.l.c.a.e
    public final void a(com.anythink.core.common.l.f.a.a aVar) {
        this.f4695b = aVar;
    }
}
