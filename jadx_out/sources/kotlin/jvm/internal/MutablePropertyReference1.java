package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.g;
import kotlin.reflect.i;
import kotlin.reflect.k;
import kotlin.reflect.m;

/* loaded from: classes5.dex */
public abstract class MutablePropertyReference1 extends MutablePropertyReference implements kotlin.reflect.i {
    public MutablePropertyReference1() {
    }

    @Override // kotlin.jvm.internal.CallableReference
    public kotlin.reflect.b computeReflected() {
        return m.e(this);
    }

    public abstract /* synthetic */ Object get(Object obj);

    @Override // kotlin.reflect.m
    @SinceKotlin(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((kotlin.reflect.i) getReflected()).getDelegate(obj);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference, kotlin.jvm.internal.PropertyReference
    public /* bridge */ /* synthetic */ k.a getGetter() {
        getGetter();
        return null;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference
    public /* bridge */ /* synthetic */ g.a getSetter() {
        getSetter();
        return null;
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }

    public abstract /* synthetic */ void set(Object obj, Object obj2);

    @SinceKotlin(version = "1.1")
    public MutablePropertyReference1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference, kotlin.jvm.internal.PropertyReference
    public m.a getGetter() {
        ((kotlin.reflect.i) getReflected()).getGetter();
        return null;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference
    public i.a getSetter() {
        ((kotlin.reflect.i) getReflected()).getSetter();
        return null;
    }

    @SinceKotlin(version = "1.4")
    public MutablePropertyReference1(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }
}
