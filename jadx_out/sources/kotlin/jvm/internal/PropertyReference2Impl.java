package kotlin.jvm.internal;

import kotlin.SinceKotlin;

/* loaded from: classes5.dex */
public class PropertyReference2Impl extends PropertyReference2 {
    public PropertyReference2Impl(kotlin.reflect.e eVar, String str, String str2) {
        super(((c) eVar).c(), str, str2, !(eVar instanceof kotlin.reflect.c) ? 1 : 0);
    }

    @Override // kotlin.jvm.internal.PropertyReference2
    public Object get(Object obj, Object obj2) {
        getGetter();
        throw null;
    }

    @SinceKotlin(version = "1.4")
    public PropertyReference2Impl(Class cls, String str, String str2, int i2) {
        super(cls, str, str2, i2);
    }
}
