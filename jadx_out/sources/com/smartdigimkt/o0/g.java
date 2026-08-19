package com.smartdigimkt.o0;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class g {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f42196c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a, reason: collision with root package name */
    public int f42197a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f42198b = -1;

    public final boolean a(String str) throws NumberFormatException {
        Matcher matcher = f42196c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i2 = Integer.parseInt(matcher.group(1), 16);
            int i3 = Integer.parseInt(matcher.group(2), 16);
            if (i2 <= 0 && i3 <= 0) {
                return false;
            }
            this.f42197a = i2;
            this.f42198b = i3;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
