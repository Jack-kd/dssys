package kotlin.text;

import java.nio.charset.Charset;

/* renamed from: kotlin.text.d, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1624d {

    /* renamed from: a, reason: collision with root package name */
    public static final C1624d f51450a = new C1624d();

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f51451b;

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f51452c;

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f51453d;

    /* renamed from: e, reason: collision with root package name */
    public static final Charset f51454e;

    /* renamed from: f, reason: collision with root package name */
    public static final Charset f51455f;

    /* renamed from: g, reason: collision with root package name */
    public static final Charset f51456g;

    /* renamed from: h, reason: collision with root package name */
    public static volatile Charset f51457h;

    /* renamed from: i, reason: collision with root package name */
    public static volatile Charset f51458i;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        kotlin.jvm.internal.j.d(charsetForName, "forName(...)");
        f51451b = charsetForName;
        Charset charsetForName2 = Charset.forName("UTF-16");
        kotlin.jvm.internal.j.d(charsetForName2, "forName(...)");
        f51452c = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16BE");
        kotlin.jvm.internal.j.d(charsetForName3, "forName(...)");
        f51453d = charsetForName3;
        Charset charsetForName4 = Charset.forName("UTF-16LE");
        kotlin.jvm.internal.j.d(charsetForName4, "forName(...)");
        f51454e = charsetForName4;
        Charset charsetForName5 = Charset.forName("US-ASCII");
        kotlin.jvm.internal.j.d(charsetForName5, "forName(...)");
        f51455f = charsetForName5;
        Charset charsetForName6 = Charset.forName("ISO-8859-1");
        kotlin.jvm.internal.j.d(charsetForName6, "forName(...)");
        f51456g = charsetForName6;
    }

    public final Charset a() {
        Charset charset = f51458i;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32BE");
        kotlin.jvm.internal.j.d(charsetForName, "forName(...)");
        f51458i = charsetForName;
        return charsetForName;
    }

    public final Charset b() {
        Charset charset = f51457h;
        if (charset != null) {
            return charset;
        }
        Charset charsetForName = Charset.forName("UTF-32LE");
        kotlin.jvm.internal.j.d(charsetForName, "forName(...)");
        f51457h = charsetForName;
        return charsetForName;
    }
}
