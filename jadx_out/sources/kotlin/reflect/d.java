package kotlin.reflect;

/* loaded from: classes5.dex */
public abstract class d {
    public static final Object a(c cVar, Object obj) {
        kotlin.jvm.internal.j.e(cVar, "<this>");
        if (cVar.b(obj)) {
            kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.cast");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + cVar.a());
    }
}
