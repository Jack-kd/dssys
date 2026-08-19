package com.byazt.ja;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, 38})
/* loaded from: classes.dex */
public class j implements Function<SparseArray<Object>, Object> {
    private final IMediationSplashRequestInfo hp;

    public j(IMediationSplashRequestInfo iMediationSplashRequestInfo) {
        this.hp = iMediationSplashRequestInfo;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        String adnName = "";
        switch (com.byazt.xi.jx.hp(sparseArray).l().intValue(-99999987)) {
            case 267001:
                IMediationSplashRequestInfo iMediationSplashRequestInfo = this.hp;
                if (iMediationSplashRequestInfo != null && iMediationSplashRequestInfo.getAdnName() != null) {
                    adnName = this.hp.getAdnName();
                }
                return String.valueOf(adnName);
            case 267002:
                IMediationSplashRequestInfo iMediationSplashRequestInfo2 = this.hp;
                if (iMediationSplashRequestInfo2 != null && iMediationSplashRequestInfo2.getAdnSlotId() != null) {
                    adnName = this.hp.getAdnSlotId();
                }
                return String.valueOf(adnName);
            case 267003:
                IMediationSplashRequestInfo iMediationSplashRequestInfo3 = this.hp;
                if (iMediationSplashRequestInfo3 != null && iMediationSplashRequestInfo3.getAppId() != null) {
                    adnName = this.hp.getAppId();
                }
                return String.valueOf(adnName);
            case 267004:
                IMediationSplashRequestInfo iMediationSplashRequestInfo4 = this.hp;
                if (iMediationSplashRequestInfo4 != null && iMediationSplashRequestInfo4.getAppkey() != null) {
                    adnName = this.hp.getAppkey();
                }
                return String.valueOf(adnName);
            default:
                return null;
        }
    }
}
