package kotlinx.coroutines.internal;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class D {

    /* renamed from: a, reason: collision with root package name */
    public static final int f51755a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f51755a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
