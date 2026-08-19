package com.kwad.components.core.innerEc.live.h;

import com.kwad.components.core.innerEc.live.base.b;
import com.kwad.sdk.i;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes4.dex */
public final class a extends com.kwad.components.core.innerEc.b.a {
    public a(b bVar, Map<String, String> map) throws JSONException {
        super(map);
        putBody("liveParam", bVar);
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return i.Fk();
    }
}
