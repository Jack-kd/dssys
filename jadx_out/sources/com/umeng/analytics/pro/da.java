package com.umeng.analytics.pro;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes5.dex */
public class da {

    /* renamed from: a, reason: collision with root package name */
    private static final String f49158a = "yyyy-MM-dd HH:mm";

    public static int a() {
        int i2 = Calendar.getInstance().get(7);
        if (i2 == 1) {
            return 7;
        }
        return i2 - 1;
    }

    public static int b() {
        return Calendar.getInstance().get(11);
    }

    public static long a(String str) throws ParseException {
        if (str != null && !str.isEmpty()) {
            try {
                Date date = new SimpleDateFormat(f49158a, Locale.getDefault()).parse(str);
                if (date != null) {
                    return date.getTime();
                }
            } catch (ParseException e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    public static String a(long j2) {
        return new SimpleDateFormat(f49158a, Locale.getDefault()).format(new Date(j2));
    }
}
