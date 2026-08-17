package com.meishu.sdk.platform.ms.recycler;

import com.meishu.sdk.core.ad.IAd;
import com.meishu.sdk.core.view.TouchPositionListener;
import java.sql.Timestamp;

/* loaded from: classes4.dex */
public class s {
    public static void a(IAd iAd, float f2, float f3, long j2, float f4, float f5) {
        if (iAd == null) {
            return;
        }
        try {
            Timestamp timestamp = new Timestamp(j2);
            TouchPositionListener.TouchPosition touchPosition = iAd.getTouchData().getTouchPosition();
            if (touchPosition == null) {
                touchPosition = new TouchPositionListener.TouchPosition();
                iAd.getTouchData().setTouchPosition(touchPosition);
            }
            touchPosition.setDownX((int) f2);
            touchPosition.setDownY((int) f3);
            touchPosition.setDownTime(timestamp);
            int i2 = (int) f4;
            if (i2 <= 0) {
                i2 = Integer.MIN_VALUE;
            }
            touchPosition.setUpX(i2);
            int i3 = (int) f5;
            touchPosition.setUpY(i3 > 0 ? i3 : Integer.MIN_VALUE);
            touchPosition.setUpTime(new Timestamp(System.currentTimeMillis()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
