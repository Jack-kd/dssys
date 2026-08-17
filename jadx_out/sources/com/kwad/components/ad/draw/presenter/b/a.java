package com.kwad.components.ad.draw.presenter.b;

import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class a {
    private InterfaceC0463a eY;

    @Nullable
    private b eZ;
    private boolean fa = false;
    private AdTemplate mAdTemplate;

    /* renamed from: com.kwad.components.ad.draw.presenter.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0463a {
        void bb();
    }

    public interface b {
        boolean bc();
    }

    public a(AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
    }

    @MainThread
    public final void a(InterfaceC0463a interfaceC0463a) {
        this.eY = interfaceC0463a;
    }

    public final void ba() {
        InterfaceC0463a interfaceC0463a;
        if (this.fa) {
            return;
        }
        this.fa = true;
        if (e.eO(this.mAdTemplate).status == 1 || e.eO(this.mAdTemplate).status == 2 || e.eO(this.mAdTemplate).status == 3) {
            return;
        }
        b bVar = this.eZ;
        if ((bVar == null || !bVar.bc()) && (interfaceC0463a = this.eY) != null) {
            interfaceC0463a.bb();
        }
    }

    @MainThread
    public final void a(b bVar) {
        this.eZ = bVar;
    }
}
