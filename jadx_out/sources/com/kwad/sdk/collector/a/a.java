package com.kwad.sdk.collector.a;

import com.kwad.components.offline.api.BuildConfig;
import com.kwad.sdk.core.network.d;
import com.kwad.sdk.i;
import com.kwad.sdk.utils.ac;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a extends d {
    private C0596a aJh;

    /* renamed from: com.kwad.sdk.collector.a.a$a, reason: collision with other inner class name */
    public static class C0596a {
        private List<String> aJi;

        public C0596a(List<String> list) {
            this.aJi = list;
        }

        public final JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            ac.putValue(jSONObject, "packageName", this.aJi);
            return jSONObject;
        }
    }

    public a(List<String> list) {
        C0596a c0596a = new C0596a(list);
        this.aJh = c0596a;
        putBody("targetAppInfo", c0596a.toJson());
        putBody("sdkVersion", BuildConfig.VERSION_NAME);
        putBody("sdkVersionCode", BuildConfig.VERSION_CODE);
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return i.EU();
    }
}
