package com.kwad.sdk.core.b.a;

import com.kwad.sdk.internal.api.NativeAdExtraDataImpl;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class iz implements com.kwad.sdk.core.d<NativeAdExtraDataImpl> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((NativeAdExtraDataImpl) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((NativeAdExtraDataImpl) bVar, jSONObject);
    }

    private static void a(NativeAdExtraDataImpl nativeAdExtraDataImpl, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        nativeAdExtraDataImpl.enableShake = jSONObject.optBoolean("enableShake");
        nativeAdExtraDataImpl.enableRotate = jSONObject.optBoolean("enableRotate");
        nativeAdExtraDataImpl.showLiveStatus = jSONObject.optInt("showLiveStatus");
        nativeAdExtraDataImpl.showLiveStyle = jSONObject.optInt("showLiveStyle");
    }

    private static JSONObject b(NativeAdExtraDataImpl nativeAdExtraDataImpl, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = nativeAdExtraDataImpl.enableShake;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enableShake", z2);
        }
        boolean z3 = nativeAdExtraDataImpl.enableRotate;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enableRotate", z3);
        }
        int i2 = nativeAdExtraDataImpl.showLiveStatus;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showLiveStatus", i2);
        }
        int i3 = nativeAdExtraDataImpl.showLiveStyle;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showLiveStyle", i3);
        }
        return jSONObject;
    }
}
