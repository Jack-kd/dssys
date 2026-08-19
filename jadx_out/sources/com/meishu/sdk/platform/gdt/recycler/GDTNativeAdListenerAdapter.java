package com.meishu.sdk.platform.gdt.recycler;

import com.meishu.sdk.activity.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.gdt.GDTPlatformError;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class GDTNativeAdListenerAdapter implements NativeADUnifiedListener {
    private static final String TAG = "GDTNativeAdListenerAdapter";
    private GDTRecyclerAdWrapper adWrapper;

    public GDTNativeAdListenerAdapter(GDTRecyclerAdWrapper gDTRecyclerAdWrapper) {
        this.adWrapper = gDTRecyclerAdWrapper;
    }

    @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
    public void onADLoaded(List<NativeUnifiedADData> list) {
        if (list == null || this.adWrapper.getLoaderListener() == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeUnifiedADData nativeUnifiedADData : list) {
            this.adWrapper.getSdkAdInfo().setEcpm(String.valueOf(nativeUnifiedADData.getECPM()));
            arrayList.add(new GDTNativeUnifiedAdData(this.adWrapper, nativeUnifiedADData));
        }
        this.adWrapper.getLoaderListener().onAdLoaded(arrayList);
    }

    @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
    public void onNoAD(AdError adError) {
        StringBuilder sbA = a.a("onNoAD, code: ");
        sbA.append(adError.getErrorCode());
        sbA.append(", msg: ");
        sbA.append(adError.getErrorMsg());
        LogUtil.e(TAG, sbA.toString());
        new GDTPlatformError(adError, this.adWrapper.getSdkAdInfo()).post(this.adWrapper.getLoaderListener());
    }
}
