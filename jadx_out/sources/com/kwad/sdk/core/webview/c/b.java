package com.kwad.sdk.core.webview.c;

import androidx.annotation.Nullable;
import com.kwad.sdk.utils.ac;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b implements com.kwad.sdk.core.b {
    public String bcX;
    public String bcY;
    public String data;

    @Override // com.kwad.sdk.core.b
    public final void parseJson(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.bcX = jSONObject.optString(com.umeng.ccg.a.f49772z);
        this.data = jSONObject.optString("data");
        this.bcY = jSONObject.optString("callback");
    }

    @Override // com.kwad.sdk.core.b
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, com.umeng.ccg.a.f49772z, this.bcX);
        ac.putValue(jSONObject, "data", this.data);
        ac.putValue(jSONObject, "callback", this.bcY);
        return jSONObject;
    }
}
