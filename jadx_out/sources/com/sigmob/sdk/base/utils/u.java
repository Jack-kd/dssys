package com.sigmob.sdk.base.utils;

import android.os.SystemClock;
import android.view.MotionEvent;
import com.czhj.sdk.logger.SigmobLogger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes4.dex */
public class u {
    public static Long[] a(String str, MotionEvent motionEvent) {
        if (motionEvent == null) {
            return null;
        }
        long downTime = motionEvent.getDownTime();
        long eventTime = motionEvent.getEventTime();
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.uptimeMillis();
        long j2 = downTime + jCurrentTimeMillis;
        long j3 = eventTime + jCurrentTimeMillis;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        SigmobLogger.d(str, "convertAndLogMotionEventTimes: downTimeAbsolute = " + j2 + ", downTimeFormatted = " + simpleDateFormat.format(new Date(j2)) + ", eventTimeAbsolute = " + j3 + ", eventTimeFormatted = " + simpleDateFormat.format(new Date(j3)), new Object[0]);
        return new Long[]{Long.valueOf(j2), Long.valueOf(j3)};
    }
}
