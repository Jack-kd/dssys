package com.fl.saas;

import androidx.arch.core.util.Function;
import java.util.NoSuchElementException;
import java.util.Objects;

/* renamed from: com.fl.saas.p0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1207p0 {

    /* renamed from: b, reason: collision with root package name */
    private static final C1207p0 f30620b = new C1207p0();

    /* renamed from: a, reason: collision with root package name */
    private final Object f30621a;

    private C1207p0() {
        this.f30621a = null;
    }

    public static C1207p0 a() {
        return f30620b;
    }

    public Object b() {
        Object obj = this.f30621a;
        if (obj != null) {
            return obj;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean c() {
        return this.f30621a != null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1207p0) {
            return Objects.equals(this.f30621a, ((C1207p0) obj).f30621a);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f30621a);
    }

    public String toString() {
        Object obj = this.f30621a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }

    private C1207p0(Object obj) {
        Objects.requireNonNull(obj);
        this.f30621a = obj;
    }

    public static C1207p0 b(Object obj) {
        return obj == null ? a() : a(obj);
    }

    public C1207p0 a(InterfaceC1231x0 interfaceC1231x0) {
        Objects.requireNonNull(interfaceC1231x0);
        return (c() && !interfaceC1231x0.a(this.f30621a)) ? a() : this;
    }

    public Object c(Object obj) {
        Object obj2 = this.f30621a;
        return obj2 != null ? obj2 : obj;
    }

    public void a(B b3) {
        Object obj = this.f30621a;
        if (obj != null) {
            b3.a(obj);
        }
    }

    public Object b(InterfaceC1164b1 interfaceC1164b1) {
        Object obj = this.f30621a;
        return obj != null ? obj : interfaceC1164b1.a();
    }

    public void a(B b3, Runnable runnable) {
        Object obj = this.f30621a;
        if (obj != null) {
            b3.a(obj);
        } else {
            runnable.run();
        }
    }

    public C1207p0 a(Function function) {
        Objects.requireNonNull(function);
        return !c() ? a() : b(function.apply(this.f30621a));
    }

    public static C1207p0 a(Object obj) {
        return new C1207p0(obj);
    }

    public C1207p0 a(InterfaceC1164b1 interfaceC1164b1) {
        Objects.requireNonNull(interfaceC1164b1);
        if (c()) {
            return this;
        }
        C1207p0 c1207p0 = (C1207p0) interfaceC1164b1.a();
        Objects.requireNonNull(c1207p0);
        return c1207p0;
    }
}
