package com.smartdigimkt.sdk.api.format;

import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public interface IMyOfferAdManager {
    boolean checkOffersOutOfCap(Context context, String str);

    String getDefaultOfferId(Context context, String str);

    String getOutOfCapOfferIds(Context context);

    void preloadTopOnOffer(Context context, String str, JSONObject jSONObject);
}
