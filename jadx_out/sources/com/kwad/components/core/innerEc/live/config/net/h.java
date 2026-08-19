package com.kwad.components.core.innerEc.live.config.net;

import java.util.Map;
import org.json.JSONException;

/* loaded from: classes4.dex */
public final class h extends com.kwad.components.core.innerEc.b.a {
    public h(com.kwad.components.core.innerEc.live.base.b bVar, Map<String, String> map) throws JSONException {
        super(map);
        putBody("liveParam", bVar);
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return com.kwad.sdk.i.Fj();
    }
}
