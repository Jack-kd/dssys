package z1;

import kotlin.random.Random;
import y1.AbstractC1804a;

/* renamed from: z1.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1807a extends AbstractC1804a {

    /* renamed from: z1.a$a, reason: collision with other inner class name */
    public static final class C0892a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0892a f52834a = new C0892a();

        /* renamed from: b, reason: collision with root package name */
        public static final Integer f52835b;

        static {
            Object obj;
            Integer num = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            Integer num2 = obj instanceof Integer ? (Integer) obj : null;
            if (num2 != null && num2.intValue() > 0) {
                num = num2;
            }
            f52835b = num;
        }
    }

    /* renamed from: z1.a$b */
    public static final class b implements kotlin.time.a {
    }

    /* renamed from: z1.a$c */
    public static final class c implements kotlin.time.a {
    }

    @Override // x1.AbstractC1800a
    public Random b() {
        return d(34) ? new D1.a() : super.b();
    }

    @Override // x1.AbstractC1800a
    public kotlin.time.a c() {
        return d(26) ? new b() : new c();
    }

    public final boolean d(int i2) {
        Integer num = C0892a.f52835b;
        return num == null || num.intValue() >= i2;
    }
}
