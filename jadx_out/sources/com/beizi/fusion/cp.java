package com.beizi.fusion;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class cp implements dp {

    /* renamed from: a, reason: collision with root package name */
    public static final cp f13256a = new a("DOUBLE", 0);

    /* renamed from: b, reason: collision with root package name */
    public static final cp f13257b = new cp("LAZILY_PARSED_NUMBER", 1) { // from class: com.beizi.fusion.cp.b
        {
            a aVar = null;
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final cp f13258c = new cp("LONG_OR_DOUBLE", 2) { // from class: com.beizi.fusion.cp.c
        {
            a aVar = null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final cp f13259d = new cp("BIG_DECIMAL", 3) { // from class: com.beizi.fusion.cp.d
        {
            a aVar = null;
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ cp[] f13260e = a();

    public enum a extends cp {
        public a(String str, int i2) {
            super(str, i2, null);
        }
    }

    private cp(String str, int i2) {
    }

    private static /* synthetic */ cp[] a() {
        return new cp[]{f13256a, f13257b, f13258c, f13259d};
    }

    public static cp valueOf(String str) {
        return (cp) Enum.valueOf(cp.class, str);
    }

    public static cp[] values() {
        return (cp[]) f13260e.clone();
    }

    public /* synthetic */ cp(String str, int i2, a aVar) {
        this(str, i2);
    }
}
