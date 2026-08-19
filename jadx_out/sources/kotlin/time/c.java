package kotlin.time;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f51494a = false;

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal[] f51495b;

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i2 = 0; i2 < 4; i2++) {
            threadLocalArr[i2] = new ThreadLocal();
        }
        f51495b = threadLocalArr;
    }

    public static final boolean a() {
        return f51494a;
    }
}
