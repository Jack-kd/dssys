package com.byazt.rdt;

import java.util.Calendar;
import java.util.TimeZone;

@com.byazt.kj.hp(hp = {0, 1, 817, 34})
/* loaded from: classes3.dex */
public class l {
    public static boolean hp() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        int i2 = calendar.get(7);
        return i2 == 1 || i2 == 7;
    }

    public static boolean jx() {
        int i2 = Calendar.getInstance().get(11);
        return i2 >= 6 && i2 < 18;
    }

    public static boolean l() {
        return Calendar.getInstance().get(11) >= 18;
    }
}
