package com.byazt.pn;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 741, 38})
/* loaded from: classes3.dex */
public final class j {
    public static final ThreadLocal<DateFormat> hp = new ThreadLocal<DateFormat>() { // from class: com.byazt.pn.j.1
        @Override // java.lang.ThreadLocal
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(com.byazt.ru.jx.eb);
            return simpleDateFormat;
        }
    };

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f24457l = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
    public static final DateFormat[] jx = new DateFormat[15];

    public static Date hp(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = hp.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return date;
        }
        String[] strArr = f24457l;
        synchronized (strArr) {
            try {
                int length = strArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    DateFormat[] dateFormatArr = jx;
                    DateFormat simpleDateFormat = dateFormatArr[i2];
                    if (simpleDateFormat == null) {
                        simpleDateFormat = new SimpleDateFormat(f24457l[i2], Locale.US);
                        simpleDateFormat.setTimeZone(com.byazt.ru.jx.eb);
                        dateFormatArr[i2] = simpleDateFormat;
                    }
                    parsePosition.setIndex(0);
                    Date date2 = simpleDateFormat.parse(str, parsePosition);
                    if (parsePosition.getIndex() != 0) {
                        return date2;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String hp(Date date) {
        return hp.get().format(date);
    }
}
