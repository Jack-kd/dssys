package com.kwad.sdk.core.b.a;

import com.beizi.fusion.asnp.adn.ad.model.impl.db.AdvertCacheDBModel;
import com.kwad.components.ad.splashscreen.SplashPreloadManager;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class kl implements com.kwad.sdk.core.d<SplashPreloadManager.PreLoadItem> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((SplashPreloadManager.PreLoadItem) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((SplashPreloadManager.PreLoadItem) bVar, jSONObject);
    }

    private static void a(SplashPreloadManager.PreLoadItem preLoadItem, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        preLoadItem.cacheTime = jSONObject.optLong(AdvertCacheDBModel.COLUMN_CACHE_TIME);
        preLoadItem.expiredTime = jSONObject.optLong("expiredTime");
        preLoadItem.preloadId = jSONObject.optString("preloadId");
        if (JSONObject.NULL.toString().equals(preLoadItem.preloadId)) {
            preLoadItem.preloadId = "";
        }
        preLoadItem.materialType = jSONObject.optInt("materialType");
    }

    private static JSONObject b(SplashPreloadManager.PreLoadItem preLoadItem, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = preLoadItem.cacheTime;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, AdvertCacheDBModel.COLUMN_CACHE_TIME, j2);
        }
        long j3 = preLoadItem.expiredTime;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "expiredTime", j3);
        }
        String str = preLoadItem.preloadId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "preloadId", preLoadItem.preloadId);
        }
        int i2 = preLoadItem.materialType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "materialType", i2);
        }
        return jSONObject;
    }
}
