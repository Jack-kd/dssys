package com.beizi.fusion;

import java.util.Calendar;

/* loaded from: classes2.dex */
public abstract class n6 {
    public static long a(int i2) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -i2);
            return calendar.getTimeInMillis();
        } catch (Exception e2) {
            rm.a(e2);
            return 0L;
        }
    }

    public static boolean a(long j2, int i2) {
        return System.currentTimeMillis() - j2 < ((long) i2) * 86400000;
    }
}
