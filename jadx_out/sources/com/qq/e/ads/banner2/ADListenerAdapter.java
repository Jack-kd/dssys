package com.qq.e.ads.banner2;

import android.text.TextUtils;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.HashMap;

/* loaded from: classes4.dex */
class ADListenerAdapter implements ADListener {

    /* renamed from: a, reason: collision with root package name */
    private final UnifiedBannerADListener f35139a;

    /* renamed from: b, reason: collision with root package name */
    private NegativeFeedbackListener f35140b;

    /* renamed from: c, reason: collision with root package name */
    private ADRewardListener f35141c;

    public ADListenerAdapter(UnifiedBannerADListener unifiedBannerADListener) {
        this.f35139a = unifiedBannerADListener;
    }

    @Override // com.qq.e.comm.adevent.ADListener
    public void onADEvent(ADEvent aDEvent) {
        if (aDEvent == null) {
            return;
        }
        int type = aDEvent.getType();
        if (type == 100) {
            UnifiedBannerADListener unifiedBannerADListener = this.f35139a;
            if (unifiedBannerADListener != null) {
                unifiedBannerADListener.onADReceive();
                return;
            }
            return;
        }
        if (type == 101) {
            UnifiedBannerADListener unifiedBannerADListener2 = this.f35139a;
            if (unifiedBannerADListener2 != null) {
                unifiedBannerADListener2.onNoAD(AdErrorConvertor.getAdError(aDEvent));
                return;
            }
            return;
        }
        if (type == 303) {
            UnifiedBannerADListener unifiedBannerADListener3 = this.f35139a;
            if (unifiedBannerADListener3 != null) {
                unifiedBannerADListener3.onADLeftApplication();
                return;
            }
            return;
        }
        if (type == 304) {
            NegativeFeedbackListener negativeFeedbackListener = this.f35140b;
            if (negativeFeedbackListener != null) {
                negativeFeedbackListener.onComplainSuccess();
                return;
            }
            return;
        }
        switch (type) {
            case 103:
                UnifiedBannerADListener unifiedBannerADListener4 = this.f35139a;
                if (unifiedBannerADListener4 != null) {
                    unifiedBannerADListener4.onADExposure();
                    break;
                }
                break;
            case 104:
                if (this.f35141c != null) {
                    HashMap map = new HashMap();
                    String str = (String) aDEvent.getParam(String.class);
                    if (str != null) {
                        map.put("transId", str);
                    }
                    String str2 = (String) aDEvent.getParam(1, String.class);
                    if (!TextUtils.isEmpty(str2)) {
                        map.put(IReward.DEV_EXT, str2);
                    }
                    this.f35141c.onReward(map);
                    break;
                }
                break;
            case 105:
                UnifiedBannerADListener unifiedBannerADListener5 = this.f35139a;
                if (unifiedBannerADListener5 != null) {
                    unifiedBannerADListener5.onADClicked();
                    break;
                }
                break;
            case 106:
                UnifiedBannerADListener unifiedBannerADListener6 = this.f35139a;
                if (unifiedBannerADListener6 != null) {
                    unifiedBannerADListener6.onADClosed();
                    break;
                }
                break;
        }
    }

    public void setAdRewardListener(ADRewardListener aDRewardListener) {
        this.f35141c = aDRewardListener;
    }

    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f35140b = negativeFeedbackListener;
    }
}
