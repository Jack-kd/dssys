package com.smartdigimkt.sdk.api;

import android.content.Context;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.s3.b;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public interface IDlHandler {
    int checkDataFetchType(c cVar, a aVar);

    void cleanExpiredInfo();

    SDMEventInterface createDataFetchListener(SDMEventInterface sDMEventInterface);

    void fillDataFetchStatus(Context context, c cVar, a aVar);

    void fillRequestDataForDl(JSONObject jSONObject);

    IExHandlerBaseAd getBaseAdHandler();

    void handleOfferClick(Context context, a aVar, c cVar, String str, String str2, Runnable runnable, b bVar);

    void onAppForegroundStatusChanged(boolean z2);

    void onApplicationBoot();

    void openDataConfirmDialog(Context context, c cVar, a aVar, com.smartdigimkt.s3.a aVar2);

    void registerMarketReceiver(c cVar);
}
