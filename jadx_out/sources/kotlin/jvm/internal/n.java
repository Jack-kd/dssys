package kotlin.jvm.internal;

/* loaded from: classes5.dex */
public class n {
    public kotlin.reflect.f a(FunctionReference functionReference) {
        return functionReference;
    }

    public kotlin.reflect.c b(Class cls) {
        return new d(cls);
    }

    public kotlin.reflect.e c(Class cls, String str) {
        return new l(cls, str);
    }

    public kotlin.reflect.h d(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    public kotlin.reflect.i e(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    public kotlin.reflect.j f(MutablePropertyReference2 mutablePropertyReference2) {
        return mutablePropertyReference2;
    }

    public kotlin.reflect.l g(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    public kotlin.reflect.m h(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public kotlin.reflect.n i(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }

    public String j(h hVar) {
        String string = hVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String k(Lambda lambda) {
        return j(lambda);
    }
}
