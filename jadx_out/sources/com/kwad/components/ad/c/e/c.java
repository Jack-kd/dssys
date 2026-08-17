package com.kwad.components.ad.c.e;

import android.app.Activity;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.kwad.components.core.webview.jshandler.a;
import com.kwad.components.core.webview.jshandler.az;
import com.kwad.components.core.webview.tachikoma.b.o;
import com.kwad.components.core.webview.tachikoma.b.p;
import com.kwad.components.core.webview.tachikoma.c.n;
import com.kwad.components.core.webview.tachikoma.c.u;
import com.kwad.components.core.webview.tachikoma.j;
import com.kwad.sdk.commercial.model.WebCloseStatus;
import com.kwad.sdk.components.t;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.widget.g;

/* loaded from: classes4.dex */
public abstract class c extends com.kwad.components.ad.c.d.a implements j {
    private b ds;
    private boolean dt = false;

    public void a(az azVar) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void aF() {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void aG() {
    }

    @Override // com.kwad.components.ad.c.d.a, com.kwad.sdk.mvp.Presenter
    public void ay() {
        super.ay();
        b bVar = new b(getContext(), -1, -1);
        this.ds = bVar;
        bVar.a((Activity) null, this.cS.mAdResultData, this);
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void g(AdTemplate adTemplate) {
        this.cS.b(adTemplate);
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public String getRegisterViewKey() {
        return null;
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public g getTouchCoordsView() {
        return null;
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public void onUnbind() {
        super.onUnbind();
        this.ds.kV();
    }

    public void a(o oVar) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void a(p pVar) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void a(n nVar) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void a(u uVar) {
    }

    public void a(WebCloseStatus webCloseStatus) {
    }

    public void a(t tVar, com.kwad.sdk.core.webview.b bVar) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void a(@Nullable com.kwad.sdk.core.webview.d.b.a aVar) {
    }

    @Override // com.kwad.components.core.webview.tachikoma.j
    public final void a(a.C0563a c0563a) {
        String str = c0563a.aps;
        str.getClass();
        if (!str.equals("adShowCallback")) {
            if (str.equals("adShowErrorCallback")) {
                this.cS.c(0, "onMediaPlayError");
            }
        } else {
            this.cS.aa();
            com.kwad.components.ad.c.c.c.b(this.cS.mAdTemplate, 2, 2);
            if (this.dt) {
                return;
            }
            this.dt = true;
            com.kwad.components.ad.c.c.c.a(this.cS.mAdTemplate, SystemClock.elapsedRealtime() - this.cS.bU, 2, 2);
        }
    }
}
