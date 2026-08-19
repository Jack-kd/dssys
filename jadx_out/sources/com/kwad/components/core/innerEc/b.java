package com.kwad.components.core.innerEc;

import com.kwad.sdk.core.request.model.g;
import com.kwad.sdk.i;
import org.json.JSONException;

/* loaded from: classes4.dex */
public final class b extends com.kwad.sdk.core.network.d {
    public b(String str, String str2) throws JSONException {
        g gVarNw = g.Nw();
        gVarNw.fj(str);
        gVarNw.fl(str2);
        putBody("userInfo", gVarNw);
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return i.Fa();
    }
}
