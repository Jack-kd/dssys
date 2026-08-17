package org.eclipse.jetty.util;

import com.byazt.rx.BaseConstants;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes5.dex */
public class h {

    /* renamed from: o, reason: collision with root package name */
    public static long f52650o = 3600;

    /* renamed from: a, reason: collision with root package name */
    public String f52651a;

    /* renamed from: b, reason: collision with root package name */
    public String f52652b;

    /* renamed from: c, reason: collision with root package name */
    public SimpleDateFormat f52653c;

    /* renamed from: d, reason: collision with root package name */
    public String f52654d;

    /* renamed from: e, reason: collision with root package name */
    public SimpleDateFormat f52655e;

    /* renamed from: f, reason: collision with root package name */
    public String f52656f;

    /* renamed from: g, reason: collision with root package name */
    public String f52657g;

    /* renamed from: h, reason: collision with root package name */
    public String f52658h;

    /* renamed from: i, reason: collision with root package name */
    public long f52659i;

    /* renamed from: j, reason: collision with root package name */
    public long f52660j;

    /* renamed from: k, reason: collision with root package name */
    public int f52661k;

    /* renamed from: l, reason: collision with root package name */
    public String f52662l;

    /* renamed from: m, reason: collision with root package name */
    public Locale f52663m;

    /* renamed from: n, reason: collision with root package name */
    public DateFormatSymbols f52664n;

    public h(String str) {
        this.f52659i = -1L;
        this.f52660j = -1L;
        this.f52661k = -1;
        this.f52662l = null;
        this.f52663m = null;
        this.f52664n = null;
        this.f52651a = str;
        e(TimeZone.getDefault());
    }

    public synchronized String a(long j2) {
        try {
            long j3 = j2 / 1000;
            long j4 = this.f52660j;
            if (j3 >= j4 && (j4 <= 0 || j3 <= f52650o + j4)) {
                if (j4 == j3) {
                    return this.f52662l;
                }
                Date date = new Date(j2);
                long j5 = j3 / 60;
                if (this.f52659i != j5) {
                    this.f52659i = j5;
                    String str = this.f52655e.format(date);
                    this.f52656f = str;
                    int iIndexOf = str.indexOf("ss");
                    this.f52657g = this.f52656f.substring(0, iIndexOf);
                    this.f52658h = this.f52656f.substring(iIndexOf + 2);
                }
                this.f52660j = j3;
                StringBuilder sb = new StringBuilder(this.f52656f.length());
                sb.append(this.f52657g);
                int i2 = (int) (j3 % 60);
                if (i2 < 10) {
                    sb.append('0');
                }
                sb.append(i2);
                sb.append(this.f52658h);
                String string = sb.toString();
                this.f52662l = string;
                return string;
            }
            return this.f52653c.format(new Date(j2));
        } catch (Throwable th) {
            throw th;
        }
    }

    public int b() {
        return this.f52661k;
    }

    public String c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f52661k = (int) (jCurrentTimeMillis % 1000);
        return a(jCurrentTimeMillis);
    }

    public final void d() {
        if (this.f52652b.indexOf("ss.SSS") >= 0) {
            throw new IllegalStateException("ms not supported");
        }
        int iIndexOf = this.f52652b.indexOf("ss");
        this.f52654d = this.f52652b.substring(0, iIndexOf) + "'ss'" + this.f52652b.substring(iIndexOf + 2);
    }

    public synchronized void e(TimeZone timeZone) {
        try {
            f(timeZone);
            if (this.f52663m != null) {
                this.f52653c = new SimpleDateFormat(this.f52652b, this.f52663m);
                this.f52655e = new SimpleDateFormat(this.f52654d, this.f52663m);
            } else if (this.f52664n != null) {
                this.f52653c = new SimpleDateFormat(this.f52652b, this.f52664n);
                this.f52655e = new SimpleDateFormat(this.f52654d, this.f52664n);
            } else {
                this.f52653c = new SimpleDateFormat(this.f52652b);
                this.f52655e = new SimpleDateFormat(this.f52654d);
            }
            this.f52653c.setTimeZone(timeZone);
            this.f52655e.setTimeZone(timeZone);
            this.f52660j = -1L;
            this.f52659i = -1L;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void f(TimeZone timeZone) {
        try {
            int iIndexOf = this.f52651a.indexOf("ZZZ");
            if (iIndexOf >= 0) {
                String strSubstring = this.f52651a.substring(0, iIndexOf);
                String strSubstring2 = this.f52651a.substring(iIndexOf + 3);
                int rawOffset = timeZone.getRawOffset();
                StringBuilder sb = new StringBuilder(this.f52651a.length() + 10);
                sb.append(strSubstring);
                sb.append("'");
                if (rawOffset >= 0) {
                    sb.append('+');
                } else {
                    rawOffset = -rawOffset;
                    sb.append('-');
                }
                int i2 = rawOffset / BaseConstants.Time.MINUTE;
                int i3 = i2 / 60;
                int i4 = i2 % 60;
                if (i3 < 10) {
                    sb.append('0');
                }
                sb.append(i3);
                if (i4 < 10) {
                    sb.append('0');
                }
                sb.append(i4);
                sb.append('\'');
                sb.append(strSubstring2);
                this.f52652b = sb.toString();
            } else {
                this.f52652b = this.f52651a;
            }
            d();
        } catch (Throwable th) {
            throw th;
        }
    }

    public h(String str, Locale locale) {
        this.f52659i = -1L;
        this.f52660j = -1L;
        this.f52661k = -1;
        this.f52662l = null;
        this.f52664n = null;
        this.f52651a = str;
        this.f52663m = locale;
        e(TimeZone.getDefault());
    }
}
