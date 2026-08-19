package com.byazt.ktf;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, 959, 34})
/* loaded from: classes.dex */
public class l {
    public static Boolean hp;

    private static boolean hp() {
        if (hp == null) {
            try {
                MediationConstant.BiddingLossReason biddingLossReason = MediationConstant.BiddingLossReason.LOW_PRICE;
                hp = Boolean.TRUE;
            } catch (Throwable unused) {
                hp = Boolean.FALSE;
            }
        }
        return hp.booleanValue();
    }

    public static Object hp(int i2) {
        if (!hp()) {
            return Integer.valueOf(i2);
        }
        try {
            if (i2 == 1) {
                return MediationConstant.BiddingLossReason.LOW_PRICE;
            }
            if (i2 == 2) {
                return MediationConstant.BiddingLossReason.TIME_OUT;
            }
            if (i2 == 3) {
                return MediationConstant.BiddingLossReason.NO_AD;
            }
            if (i2 == 4) {
                return MediationConstant.BiddingLossReason.AD_DATA_ERROR;
            }
            if (i2 != 10001) {
                return null;
            }
            return MediationConstant.BiddingLossReason.OTHER;
        } catch (Throwable unused) {
            return null;
        }
    }
}
