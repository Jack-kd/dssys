package com.anythink.core.common.inner.mixad.d;

import android.app.Activity;
import com.anythink.core.basead.b.c;
import com.anythink.core.common.inner.ui.activity.ATMixSplashActivity;
import com.anythink.core.common.l.f.a.a;

/* loaded from: classes2.dex */
public final class a implements com.anythink.core.common.l.f.a.a {
    @Override // com.anythink.core.common.l.f.a.a
    public final void a(Activity activity, c cVar, a.InterfaceC0065a interfaceC0065a) {
        if (activity == null || cVar == null || interfaceC0065a == null) {
            return;
        }
        com.anythink.core.common.inner.mixad.a.a().a(cVar.f1636d, interfaceC0065a);
        ATMixSplashActivity.b(activity, cVar);
    }
}
