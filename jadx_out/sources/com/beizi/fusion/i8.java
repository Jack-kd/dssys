package com.beizi.fusion;

import java.util.Objects;

/* loaded from: classes2.dex */
public class i8 {

    /* renamed from: d, reason: collision with root package name */
    public static final i8 f14443d = new i8("", "", false);

    /* renamed from: e, reason: collision with root package name */
    public static final i8 f14444e = new i8("\n", "  ", true);

    /* renamed from: a, reason: collision with root package name */
    private final String f14445a;

    /* renamed from: b, reason: collision with root package name */
    private final String f14446b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f14447c;

    private i8(String str, String str2, boolean z2) {
        Objects.requireNonNull(str, "newline == null");
        Objects.requireNonNull(str2, "indent == null");
        if (!str.matches("[\r\n]*")) {
            throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
        }
        if (!str2.matches("[ \t]*")) {
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        this.f14445a = str;
        this.f14446b = str2;
        this.f14447c = z2;
    }

    public String a() {
        return this.f14446b;
    }

    public String b() {
        return this.f14445a;
    }

    public boolean c() {
        return this.f14447c;
    }
}
