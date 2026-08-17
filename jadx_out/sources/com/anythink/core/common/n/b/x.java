package com.anythink.core.common.n.b;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    private static final String f6960a = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";

    /* renamed from: b, reason: collision with root package name */
    private static final String f6961b = "\"([^\"]*)\"";

    /* renamed from: c, reason: collision with root package name */
    private static final Pattern f6962c = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f6963d = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: e, reason: collision with root package name */
    private final String f6964e;

    /* renamed from: f, reason: collision with root package name */
    private final String f6965f;

    /* renamed from: g, reason: collision with root package name */
    private final String f6966g;

    /* renamed from: h, reason: collision with root package name */
    private final String f6967h;

    private x(String str, String str2, String str3, String str4) {
        this.f6964e = str;
        this.f6965f = str2;
        this.f6966g = str3;
        this.f6967h = str4;
    }

    public static x a(String str) {
        Matcher matcher = f6962c.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String strGroup = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = strGroup.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f6963d.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(iEnd) + "\" for: \"" + str + '\"');
            }
            String strGroup2 = matcher2.group(1);
            if (strGroup2 != null && strGroup2.equalsIgnoreCase("charset")) {
                String strGroup3 = matcher2.group(2);
                if (strGroup3 == null) {
                    strGroup3 = matcher2.group(3);
                } else if (strGroup3.startsWith("'") && strGroup3.endsWith("'") && strGroup3.length() > 2) {
                    strGroup3 = strGroup3.substring(1, strGroup3.length() - 1);
                }
                if (str2 != null && !strGroup3.equalsIgnoreCase(str2)) {
                    throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + strGroup3 + "\" for: \"" + str + '\"');
                }
                str2 = strGroup3;
            }
        }
        return new x(str, lowerCase, lowerCase2, str2);
    }

    public static x b(String str) {
        try {
            return a(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    private Charset c() {
        return a((Charset) null);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof x) && ((x) obj).f6964e.equals(this.f6964e);
    }

    public final int hashCode() {
        return this.f6964e.hashCode();
    }

    public final String toString() {
        return this.f6964e;
    }

    private String b() {
        return this.f6966g;
    }

    public final String a() {
        return this.f6965f;
    }

    public final Charset a(Charset charset) {
        try {
            String str = this.f6967h;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
