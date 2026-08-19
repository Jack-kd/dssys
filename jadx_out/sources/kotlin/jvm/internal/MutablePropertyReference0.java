package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.g;
import kotlin.reflect.h;
import kotlin.reflect.k;
import kotlin.reflect.l;

/* loaded from: classes5.dex */
public abstract class MutablePropertyReference0 extends MutablePropertyReference implements kotlin.reflect.h {
    public MutablePropertyReference0() {
    }

    @Override // kotlin.jvm.internal.CallableReference
    public kotlin.reflect.b computeReflected() {
        return m.d(this);
    }

    public abstract /* synthetic */ Object get();

    @Override // kotlin.reflect.l
    @SinceKotlin(version = "1.1")
    public Object getDelegate() {
        return ((kotlin.reflect.h) getReflected()).getDelegate();
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

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }

    public abstract /* synthetic */ void set(Object obj);

    @SinceKotlin(version = "1.1")
    public MutablePropertyReference0(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference, kotlin.jvm.internal.PropertyReference
    public l.a getGetter() {
        ((kotlin.reflect.h) getReflected()).getGetter();
        return null;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference
    public h.a getSetter() {
        ((kotlin.reflect.h) getReflected()).getSetter();
        return null;
    }

    @SinceKotlin(version = "1.4")
    public MutablePropertyReference0(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }
}
