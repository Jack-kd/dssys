package com.fl.saas.adx.base.bidding;

import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public interface C2SBiddingECPM {
    static int getC2SBiddingECPM(Object... objArr) {
        C2SBiddingECPM c2SBiddingECPM;
        try {
            if (objArr.length == 0) {
                LogcatUtil.e("FLSDK-C2SBiddingECPM", "C2S Bid Ad but ad Object is empty");
                return 0;
            }
            StringBuffer stringBuffer = new StringBuffer("C2S Bid Ad but all fail:");
            int length = objArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    c2SBiddingECPM = null;
                    break;
                }
                Object obj = objArr[i2];
                if (obj instanceof C2SBiddingECPM) {
                    c2SBiddingECPM = (C2SBiddingECPM) obj;
                    break;
                }
                if (obj != null) {
                    stringBuffer.append(obj.getClass().getSimpleName());
                    stringBuffer.append(";");
                }
                i2++;
            }
            if (c2SBiddingECPM != null) {
                return c2SBiddingECPM.getC2SBiddingECPM();
            }
            LogcatUtil.e("FLSDK-C2SBiddingECPM", "C2S Bid Ad but ad Object is null");
            LogcatUtil.e("FLSDK-C2SBiddingECPM", stringBuffer.toString());
            return 0;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return 0;
        }
    }

    int getC2SBiddingECPM();
}
