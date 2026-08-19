package kotlin.jvm.internal;

/* loaded from: classes5.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static final n f51406a;

    /* renamed from: b, reason: collision with root package name */
    public static final kotlin.reflect.c[] f51407b;

    static {
        n nVar = null;
        try {
            nVar = (n) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (nVar == null) {
            nVar = new n();
        }
        f51406a = nVar;
        f51407b = new kotlin.reflect.c[0];
    }

    public static kotlin.reflect.f a(FunctionReference functionReference) {
        return f51406a.a(functionReference);
    }

    public static kotlin.reflect.c b(Class cls) {
        return f51406a.b(cls);
    }

    public static kotlin.reflect.e c(Class cls) {
        return f51406a.c(cls, "");
    }

    public static kotlin.reflect.h d(MutablePropertyReference0 mutablePropertyReference0) {
        return f51406a.d(mutablePropertyReference0);
    }

    public static kotlin.reflect.i e(MutablePropertyReference1 mutablePropertyReference1) {
        return f51406a.e(mutablePropertyReference1);
    }

    public static kotlin.reflect.j f(MutablePropertyReference2 mutablePropertyReference2) {
        return f51406a.f(mutablePropertyReference2);
    }

    public static kotlin.reflect.l g(PropertyReference0 propertyReference0) {
        return f51406a.g(propertyReference0);
    }

    public static kotlin.reflect.m h(PropertyReference1 propertyReference1) {
        return f51406a.h(propertyReference1);
    }

    public static kotlin.reflect.n i(PropertyReference2 propertyReference2) {
        return f51406a.i(propertyReference2);
    }

    public static String j(h hVar) {
        return f51406a.j(hVar);
    }

    public static String k(Lambda lambda) {
        return f51406a.k(lambda);
    }
}
