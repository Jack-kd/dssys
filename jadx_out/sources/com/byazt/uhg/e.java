package com.byazt.uhg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 45})
/* loaded from: classes3.dex */
public final class e {
    public static final Pattern hp = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: l, reason: collision with root package name */
    public static final Pattern f26176l = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a, reason: collision with root package name */
    public final String f26177a;

    /* renamed from: j, reason: collision with root package name */
    public final String f26178j;
    public final String jx;

    /* renamed from: w, reason: collision with root package name */
    public final String f26179w;

    public e(String str, String str2, String str3, String str4) {
        this.jx = str;
        this.f26178j = str2;
        this.f26179w = str3;
        this.f26177a = str4;
    }

    public static e hp(String str) {
        Matcher matcher = hp.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String strGroup = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = strGroup.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f26176l.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            if ("charset".equalsIgnoreCase(matcher2.group(1))) {
                String strGroup2 = matcher2.group(2);
                if (strGroup2 == null) {
                    strGroup2 = matcher2.group(3);
                } else if (strGroup2.startsWith("'") && strGroup2.endsWith("'") && strGroup2.length() > 2) {
                    strGroup2 = strGroup2.substring(1, strGroup2.length() - 1);
                }
                if (str2 != null && !str2.equalsIgnoreCase(strGroup2)) {
                    return null;
                }
                str2 = strGroup2;
            }
        }
        return new e(str, lowerCase, lowerCase2, str2);
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && ((e) obj).jx.equals(this.jx);
    }

    public int hashCode() {
        return this.jx.hashCode();
    }

    public Charset jx() {
        return hp((Charset) null);
    }

    public String l() {
        return this.f26179w;
    }

    public String toString() {
        return this.jx;
    }

    public String hp() {
        return this.f26178j;
    }

    public Charset hp(Charset charset) {
        try {
            String str = this.f26177a;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
