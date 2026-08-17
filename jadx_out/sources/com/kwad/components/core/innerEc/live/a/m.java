package com.kwad.components.core.innerEc.live.a;

import android.content.Context;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.core.webview.tachikoma.b.w;

/* loaded from: classes4.dex */
public final class m extends w {

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {

        /* renamed from: x, reason: collision with root package name */
        public double f31467x;

        /* renamed from: y, reason: collision with root package name */
        public double f31468y;

        public a(double d2, double d3) {
            this.f31467x = d2;
            this.f31468y = d3;
        }
    }

    @Override // com.kwad.components.core.webview.tachikoma.b.w
    public final void a(com.kwad.sdk.core.b bVar) {
        super.a(bVar);
        com.kwad.sdk.core.d.c.d("JsHandlerRegisterDoubleClickEvent", "jky setData callback: " + this.atX);
        com.kwad.sdk.core.d.c.d("JsHandlerRegisterDoubleClickEvent", "jky setData " + bVar.toJson().toString());
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerDoubleClickEvent";
    }

    public static a a(Context context, float f2, float f3) {
        return new a(com.kwad.sdk.c.a.a.px2dip(context, f2), com.kwad.sdk.c.a.a.px2dip(context, f3));
    }
}
