package com.czhj.wire;

import com.czhj.wire.WireEnum;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
final class RuntimeEnumAdapter<E extends WireEnum> extends EnumAdapter<E> {

    /* renamed from: a, reason: collision with root package name */
    private final Class<E> f29740a;

    /* renamed from: b, reason: collision with root package name */
    private Method f29741b;

    public RuntimeEnumAdapter(Class<E> cls) {
        super(cls);
        this.f29740a = cls;
    }

    private Method a() throws NoSuchMethodException, SecurityException {
        Method method = this.f29741b;
        if (method != null) {
            return method;
        }
        try {
            Method method2 = this.f29740a.getMethod("fromValue", Integer.TYPE);
            this.f29741b = method2;
            return method2;
        } catch (NoSuchMethodException e2) {
            throw new AssertionError(e2);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof RuntimeEnumAdapter) && ((RuntimeEnumAdapter) obj).f29740a == this.f29740a;
    }

    @Override // com.czhj.wire.EnumAdapter
    public E fromValue(int i2) {
        try {
            return (E) a().invoke(null, Integer.valueOf(i2));
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    public int hashCode() {
        return this.f29740a.hashCode();
    }
}
