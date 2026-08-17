package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.k;
import kotlin.reflect.m;

/* loaded from: classes5.dex */
public abstract class PropertyReference1 extends PropertyReference implements kotlin.reflect.m {
    public PropertyReference1() {
    }

    @Override // kotlin.jvm.internal.CallableReference
    public kotlin.reflect.b computeReflected() {
        return m.h(this);
    }

    public abstract /* synthetic */ Object get(Object obj);

    @Override // kotlin.reflect.m
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((kotlin.reflect.m) getReflected()).getDelegate(obj);
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public /* bridge */ /* synthetic */ k.a getGetter() {
        getGetter();
        return null;
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }

    @SinceKotlin(version = "1.1")
    public PropertyReference1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public m.a getGetter() {
        ((kotlin.reflect.m) getReflected()).getGetter();
        return null;
    }

    @SinceKotlin(version = "1.4")
    public PropertyReference1(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }
}
