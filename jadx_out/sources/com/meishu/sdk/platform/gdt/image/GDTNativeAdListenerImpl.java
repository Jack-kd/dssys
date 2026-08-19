package com.meishu.sdk.platform.gdt.image;

import com.meishu.sdk.activity.a;
import com.meishu.sdk.core.ad.image.b;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.gdt.GDTPlatformError;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class GDTNativeAdListenerImpl implements NativeADUnifiedListener {
    private static final String TAG = "GDTNativeADListenerImpl";
    private b imageADListener;

    public GDTNativeAdListenerImpl(b bVar) {
        this.imageADListener = bVar;
    }

    @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
    public void onADLoaded(List<NativeUnifiedADData> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<NativeUnifiedADData> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new GDTImageAdDataAdapter(it.next(), this));
            }
            this.imageADListener.onAdLoaded(arrayList);
        }
    }

    public void onAdExposure() {
        b bVar = this.imageADListener;
        if (bVar != null) {
            bVar.onAdExposure();
        }
    }

    @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
    public void onNoAD(AdError adError) {
        StringBuilder sbA = a.a("onNoAD, code: ");
        sbA.append(adError.getErrorCode());
        sbA.append(", msg: ");
        sbA.append(adError.getErrorMsg());
        LogUtil.e(TAG, sbA.toString());
        new GDTPlatformError(adError, null).post(this.imageADListener);
    }
}
