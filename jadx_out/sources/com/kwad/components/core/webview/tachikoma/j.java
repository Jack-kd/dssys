package com.kwad.components.core.webview.tachikoma;

import android.widget.FrameLayout;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.kwad.components.core.webview.jshandler.a;
import com.kwad.components.core.webview.jshandler.ae;
import com.kwad.components.core.webview.jshandler.az;
import com.kwad.components.core.webview.tachikoma.b.o;
import com.kwad.components.core.webview.tachikoma.b.p;
import com.kwad.components.core.webview.tachikoma.c.n;
import com.kwad.components.core.webview.tachikoma.c.u;
import com.kwad.sdk.commercial.model.WebCloseStatus;
import com.kwad.sdk.components.t;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public interface j {
    void a(a.C0563a c0563a);

    void a(ae.a aVar);

    void a(az azVar);

    void a(TKRenderFailReason tKRenderFailReason);

    void a(o oVar);

    void a(p pVar);

    void a(n nVar);

    void a(u uVar);

    void a(WebCloseStatus webCloseStatus);

    void a(t tVar, com.kwad.sdk.core.webview.b bVar);

    void a(@Nullable com.kwad.sdk.core.webview.d.b.a aVar);

    @MainThread
    void aE();

    void aF();

    void aG();

    void g(AdTemplate adTemplate);

    String getRegisterViewKey();

    FrameLayout getTKContainer();

    String getTKReaderScene();

    String getTkTemplateId();

    com.kwad.sdk.widget.g getTouchCoordsView();
}
