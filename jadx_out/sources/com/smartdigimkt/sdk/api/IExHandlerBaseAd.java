package com.smartdigimkt.sdk.api;

import android.content.Context;
import com.smartdigimkt.m3.c;

/* loaded from: classes5.dex */
public interface IExHandlerBaseAd {

    public interface DataFetchListener {
        c getBaseAdContent();

        void onStatusChanged(int i2, String str);
    }

    void addDataFetchListener(DataFetchListener dataFetchListener);

    void addDataFetchListenerV2(DataFetchListener dataFetchListener);

    void onAdxAdDestroy(Context context);

    void pause(c cVar);

    void removeDataFetchListener(DataFetchListener dataFetchListener);

    void removeDataFetchListenerV2(DataFetchListener dataFetchListener);

    void updateOfferInfoWithDataInfo(c cVar);
}
