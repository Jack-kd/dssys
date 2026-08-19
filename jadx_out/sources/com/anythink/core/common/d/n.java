package com.anythink.core.common.d;

import android.content.Context;
import android.view.View;
import com.anythink.core.api.ATNetworkConfirmInfo;

/* loaded from: classes2.dex */
public interface n {
    void onAdActReward(int i2);

    void onAdActRewardSuccess();

    void onAdClicked(View view);

    void onAdDislikeButtonClick();

    void onAdImpressed();

    void onAdVideoEnd();

    void onAdVideoProgress(int i2);

    void onAdVideoStart();

    void onDeeplinkCallback(boolean z2);

    void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo);
}
