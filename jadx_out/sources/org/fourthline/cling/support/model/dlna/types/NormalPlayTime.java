package org.fourthline.cling.support.model.dlna.types;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.types.InvalidValueException;

/* loaded from: classes5.dex */
public class NormalPlayTime {
    static final Pattern pattern = Pattern.compile("^(\\d+):(\\d{1,2}):(\\d{1,2})(\\.(\\d{1,3}))?|(\\d+)(\\.(\\d{1,3}))?$", 2);
    private long milliseconds;

    /* renamed from: org.fourthline.cling.support.model.dlna.types.NormalPlayTime$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format;

        static {
            int[] iArr = new int[Format.values().length];
            $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format = iArr;
            try {
                iArr[Format.TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum Format {
        SECONDS,
        TIME
    }

    public NormalPlayTime(long j2) {
        if (j2 >= 0) {
            this.milliseconds = j2;
            return;
        }
        throw new InvalidValueException("Invalid parameter milliseconds: " + j2);
    }

    public static NormalPlayTime valueOf(String str) throws InvalidValueException {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            try {
                if (matcher.group(1) != null) {
                    return new NormalPlayTime(Long.parseLong(matcher.group(1)), Long.parseLong(matcher.group(2)), Long.parseLong(matcher.group(3)), Long.parseLong(matcher.group(5)) * ((int) Math.pow(10.0d, 3 - matcher.group(5).length())));
                }
                return new NormalPlayTime((Long.parseLong(matcher.group(6)) * 1000) + (Long.parseLong(matcher.group(8)) * ((int) Math.pow(10.0d, 3 - matcher.group(8).length()))));
            } catch (NumberFormatException unused) {
            }
        }
        throw new InvalidValueException("Can't parse NormalPlayTime: " + str);
    }

    public long getMilliseconds() {
        return this.milliseconds;
    }

    public String getString() {
        return getString(Format.SECONDS);
    }

    public void setMilliseconds(long j2) {
        if (j2 >= 0) {
            this.milliseconds = j2;
            return;
        }
        throw new InvalidValueException("Invalid parameter milliseconds: " + j2);
    }

    public String getString(Format format) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long seconds = timeUnit.toSeconds(this.milliseconds);
        long j2 = this.milliseconds % 1000;
        if (AnonymousClass1.$SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format[format.ordinal()] != 1) {
            return String.format(Locale.ROOT, "%d.%03d", Long.valueOf(seconds), Long.valueOf(j2));
        }
        long seconds2 = timeUnit.toSeconds(this.milliseconds) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(this.milliseconds));
        return String.format(Locale.ROOT, "%d:%02d:%02d.%03d", Long.valueOf(timeUnit.toHours(this.milliseconds)), Long.valueOf(timeUnit.toMinutes(this.milliseconds) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(this.milliseconds))), Long.valueOf(seconds2), Long.valueOf(j2));
    }

    public NormalPlayTime(long j2, long j3, long j4, long j5) throws InvalidValueException {
        if (j2 < 0) {
            throw new InvalidValueException("Invalid parameter hours: " + j2);
        }
        if (j3 < 0 || j3 > 59) {
            throw new InvalidValueException("Invalid parameter minutes: " + j2);
        }
        if (j4 < 0 || j4 > 59) {
            throw new InvalidValueException("Invalid parameter seconds: " + j2);
        }
        if (j5 >= 0 && j5 <= 999) {
            this.milliseconds = (((j2 * 3600) + (j3 * 60) + j4) * 1000) + j5;
            return;
        }
        throw new InvalidValueException("Invalid parameter milliseconds: " + j5);
    }
}
