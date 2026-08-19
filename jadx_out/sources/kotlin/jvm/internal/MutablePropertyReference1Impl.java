package kotlin.jvm.internal;

import kotlin.SinceKotlin;

/* loaded from: classes5.dex */
public class MutablePropertyReference1Impl extends MutablePropertyReference1 {
    public MutablePropertyReference1Impl(kotlin.reflect.e eVar, String str, String str2) {
        super(CallableReference.NO_RECEIVER, ((c) eVar).c(), str, str2, !(eVar instanceof kotlin.reflect.c) ? 1 : 0);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1
    public Object get(Object obj) {
        getGetter();
        throw null;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1
    public void set(Object obj, Object obj2) {
        getSetter();
        throw null;
    }

    @SinceKotlin(version = "1.4")
    public MutablePropertyReference1Impl(Class cls, String str, String str2, int i2) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    @SinceKotlin(version = "1.4")
    public MutablePropertyReference1Impl(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }
}
