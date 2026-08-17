package com.beizi.fusion;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class a8 implements b8 {

    /* renamed from: a, reason: collision with root package name */
    public static final a8 f12630a = new a("IDENTITY", 0);

    /* renamed from: b, reason: collision with root package name */
    public static final a8 f12631b = new a8("UPPER_CAMEL_CASE", 1) { // from class: com.beizi.fusion.a8.b
        {
            a aVar = null;
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final a8 f12632c = new a8("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: com.beizi.fusion.a8.c
        {
            a aVar = null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final a8 f12633d = new a8("UPPER_CASE_WITH_UNDERSCORES", 3) { // from class: com.beizi.fusion.a8.d
        {
            a aVar = null;
        }
    };

    /* renamed from: e, reason: collision with root package name */
    public static final a8 f12634e = new a8("LOWER_CASE_WITH_UNDERSCORES", 4) { // from class: com.beizi.fusion.a8.e
        {
            a aVar = null;
        }
    };

    /* renamed from: f, reason: collision with root package name */
    public static final a8 f12635f = new a8("LOWER_CASE_WITH_DASHES", 5) { // from class: com.beizi.fusion.a8.f
        {
            a aVar = null;
        }
    };

    /* renamed from: g, reason: collision with root package name */
    public static final a8 f12636g = new a8("LOWER_CASE_WITH_DOTS", 6) { // from class: com.beizi.fusion.a8.g
        {
            a aVar = null;
        }
    };

    /* renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ a8[] f12637h = a();

    public enum a extends a8 {
        public a(String str, int i2) {
            super(str, i2, null);
        }
    }

    private a8(String str, int i2) {
    }

    private static /* synthetic */ a8[] a() {
        return new a8[]{f12630a, f12631b, f12632c, f12633d, f12634e, f12635f, f12636g};
    }

    public static a8 valueOf(String str) {
        return (a8) Enum.valueOf(a8.class, str);
    }

    public static a8[] values() {
        return (a8[]) f12637h.clone();
    }

    public /* synthetic */ a8(String str, int i2, a aVar) {
        this(str, i2);
    }
}
