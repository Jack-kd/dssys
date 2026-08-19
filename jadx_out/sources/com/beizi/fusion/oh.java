package com.beizi.fusion;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class oh {

    /* renamed from: a, reason: collision with root package name */
    public static final oh f15432a = new a("DEFAULT", 0);

    /* renamed from: b, reason: collision with root package name */
    public static final oh f15433b = new oh("STRING", 1) { // from class: com.beizi.fusion.oh.b
        {
            a aVar = null;
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ oh[] f15434c = a();

    public enum a extends oh {
        public a(String str, int i2) {
            super(str, i2, null);
        }
    }

    private oh(String str, int i2) {
    }

    private static /* synthetic */ oh[] a() {
        return new oh[]{f15432a, f15433b};
    }

    public static oh valueOf(String str) {
        return (oh) Enum.valueOf(oh.class, str);
    }

    public static oh[] values() {
        return (oh[]) f15434c.clone();
    }

    public /* synthetic */ oh(String str, int i2, a aVar) {
        this(str, i2);
    }
}
