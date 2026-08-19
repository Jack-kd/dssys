package Q1;

import javax.servlet.DispatcherType;
import org.eclipse.jetty.util.component.e;

/* loaded from: classes5.dex */
public abstract class a implements e {

    /* renamed from: Q1.a$a, reason: collision with other inner class name */
    public static /* synthetic */ class C0010a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f489a;

        static {
            int[] iArr = new int[DispatcherType.values().length];
            f489a = iArr;
            try {
                iArr[DispatcherType.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f489a[DispatcherType.ASYNC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f489a[DispatcherType.FORWARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f489a[DispatcherType.INCLUDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f489a[DispatcherType.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static int a(DispatcherType dispatcherType) {
        int i2 = C0010a.f489a[dispatcherType.ordinal()];
        if (i2 == 1) {
            return 1;
        }
        int i3 = 2;
        if (i2 == 2) {
            return 16;
        }
        if (i2 != 3) {
            i3 = 4;
            if (i2 != 4) {
                if (i2 == 5) {
                    return 8;
                }
                throw new IllegalArgumentException(dispatcherType.toString());
            }
        }
        return i3;
    }
}
