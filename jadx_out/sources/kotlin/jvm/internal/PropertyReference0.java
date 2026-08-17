package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.k;
import kotlin.reflect.l;

/* loaded from: classes5.dex */
public abstract class PropertyReference0 extends PropertyReference implements kotlin.reflect.l {
    public PropertyReference0() {
    }

    @Override // kotlin.jvm.internal.CallableReference
    public kotlin.reflect.b computeReflected() {
        return m.g(this);
    }

    public abstract /* synthetic */ Object get();

    @Override // kotlin.reflect.l
    @SinceKotlin(version = "1.1")
    public Object getDelegate() {
        return ((kotlin.reflect.l) getReflected()).getDelegate();
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public /* bridge */ /* synthetic */ k.a getGetter() {
        getGetter();
        return null;
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }

    @SinceKotlin(version = "1.1")
    public PropertyReference0(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public l.a getGetter() {
        ((kotlin.reflect.l) getReflected()).getGetter();
        return null;
    }

    @SinceKotlin(version = "1.4")
    public PropertyReference0(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }
}
