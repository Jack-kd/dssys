package com.kwad.components.core.innerEc.live.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.widget.ScrollClickView;
import com.kwad.components.core.webview.tachikoma.b.w;
import com.kwad.sdk.utils.ac;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class p extends w {

    public static final class a implements com.kwad.sdk.core.b {
        private String TO;

        @Override // com.kwad.sdk.core.b
        public final void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.TO = jSONObject.optString("swipeStatus");
        }

        @Override // com.kwad.sdk.core.b
        public final JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            ac.putValue(jSONObject, "swipeStatus", this.TO);
            return jSONObject;
        }
    }

    private void aG(String str) {
        a aVar = new a();
        aVar.TO = str;
        a(aVar);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerHorizontalSwipeListener";
    }

    public final void ry() {
        aG(ScrollClickView.DIR_LEFT);
    }

    public final void rz() {
        aG(ScrollClickView.DIR_RIGHT);
    }
}
