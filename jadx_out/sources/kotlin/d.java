package kotlin;

import kotlin.jvm.functions.Function0;

/* loaded from: classes5.dex */
public abstract class d {

    public static final /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51374a;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            try {
                iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51374a = iArr;
        }
    }

    public static c a(LazyThreadSafetyMode mode, Function0 initializer) {
        kotlin.jvm.internal.j.e(mode, "mode");
        kotlin.jvm.internal.j.e(initializer, "initializer");
        int i2 = a.f51374a[mode.ordinal()];
        if (i2 == 1) {
            return new SynchronizedLazyImpl(initializer, null, 2, null);
        }
        if (i2 == 2) {
            return new SafePublicationLazyImpl(initializer);
        }
        if (i2 == 3) {
            return new UnsafeLazyImpl(initializer);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static c b(Function0 initializer) {
        kotlin.jvm.internal.j.e(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }
}
