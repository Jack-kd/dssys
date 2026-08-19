package w1;

import java.lang.reflect.Method;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f52816a = new f();

    /* renamed from: b, reason: collision with root package name */
    public static final a f52817b = new a(null, null, null);

    /* renamed from: c, reason: collision with root package name */
    public static a f52818c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Method f52819a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f52820b;

        /* renamed from: c, reason: collision with root package name */
        public final Method f52821c;

        public a(Method method, Method method2, Method method3) {
            this.f52819a = method;
            this.f52820b = method2;
            this.f52821c = method3;
        }
    }

    public final a a(BaseContinuationImpl baseContinuationImpl) {
        try {
            a aVar = new a(Class.class.getDeclaredMethod("getModule", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
            f52818c = aVar;
            return aVar;
        } catch (Exception unused) {
            a aVar2 = f52817b;
            f52818c = aVar2;
            return aVar2;
        }
    }

    public final String b(BaseContinuationImpl continuation) {
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        j.e(continuation, "continuation");
        a aVarA = f52818c;
        if (aVarA == null) {
            aVarA = a(continuation);
        }
        if (aVarA != f52817b && (method = aVarA.f52819a) != null && (objInvoke = method.invoke(continuation.getClass(), null)) != null && (method2 = aVarA.f52820b) != null && (objInvoke2 = method2.invoke(objInvoke, null)) != null) {
            Method method3 = aVarA.f52821c;
            Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
            if (objInvoke3 instanceof String) {
                return (String) objInvoke3;
            }
        }
        return null;
    }
}
