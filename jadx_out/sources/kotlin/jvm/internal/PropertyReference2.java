package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.k;
import kotlin.reflect.n;

/* loaded from: classes5.dex */
public abstract class PropertyReference2 extends PropertyReference implements kotlin.reflect.n {
    public PropertyReference2() {
    }

    @Override // kotlin.jvm.internal.CallableReference
    public kotlin.reflect.b computeReflected() {
        return m.i(this);
    }

    public abstract /* synthetic */ Object get(Object obj, Object obj2);

    @Override // kotlin.reflect.n
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj, Object obj2) {
        return ((kotlin.reflect.n) getReflected()).getDelegate(obj, obj2);
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public /* bridge */ /* synthetic */ k.a getGetter() {
        getGetter();
        return null;
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    @SinceKotlin(version = "1.4")
    public PropertyReference2(Class cls, String str, String str2, int i2) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public n.a getGetter() {
        ((kotlin.reflect.n) getReflected()).getGetter();
        return null;
    }
}
