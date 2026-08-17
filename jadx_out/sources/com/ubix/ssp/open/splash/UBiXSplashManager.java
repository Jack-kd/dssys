package com.ubix.ssp.open.splash;

import android.content.Context;
import android.view.ViewGroup;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;
import java.util.HashMap;

/* loaded from: classes5.dex */
public interface UBiXSplashManager {
    void destroy();

    String getBiddingToken();

    ParamsReview getParamsReview();

    long getPrice();

    String getRequestId();

    boolean isValid();

    void loadAd();

    void loadBiddingAd(String str);

    void loadSplashAd(Context context, String str, UBiXSplashAdListener uBiXSplashAdListener);

    void lossNotice(UBiXAdLossInfo uBiXAdLossInfo);

    void setExtraInfo(HashMap<String, String> map);

    void setMaxTimeout(int i2);

    void setSkipTime(int i2);

    void showAd(ViewGroup viewGroup);

    void winNotice(long j2);
}
