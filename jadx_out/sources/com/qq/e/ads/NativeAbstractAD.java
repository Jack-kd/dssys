package com.qq.e.ads;

import com.qq.e.comm.pi.IBiddingLoss;
import com.qq.e.comm.util.AdError;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class NativeAbstractAD<T extends IBiddingLoss> extends AbstractAD<T> implements IBiddingLoss {

    public interface BasicADListener {
        void onNoAD(AdError adError);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(T t2) {
    }

    @Override // com.qq.e.comm.pi.IBiddingLoss
    public void sendLossNotification(Map<String, Object> map) {
        this.f35123a.sendLossNotification(map);
    }
}
