package com.byazt.hq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes2.dex */
public final class n {
    public static final Pattern hp = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: l, reason: collision with root package name */
    public static final Pattern f20909l = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a, reason: collision with root package name */
    public final String f20910a;

    /* renamed from: j, reason: collision with root package name */
    public final String f20911j;
    public final String jx;

    /* renamed from: w, reason: collision with root package name */
    public final String f20912w;

    private n(String str, String str2, String str3, String str4) {
        this.jx = str;
        this.f20911j = str2;
        this.f20912w = str3;
        this.f20910a = str4;
    }

    public static n hp(String str) {
        Matcher matcher = hp.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String strGroup = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = strGroup.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f20909l.matcher(str);
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
        return new n(str, lowerCase, lowerCase2, str2);
    }

    public boolean equals(Object obj) {
        return (obj instanceof n) && ((n) obj).jx.equals(this.jx);
    }

    public int hashCode() {
        return this.jx.hashCode();
    }

    public Charset jx() {
        return hp((Charset) null);
    }

    public String l() {
        return this.f20912w;
    }

    public String toString() {
        return this.jx;
    }

    public String hp() {
        return this.f20911j;
    }

    public Charset hp(Charset charset) {
        try {
            String str = this.f20910a;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
