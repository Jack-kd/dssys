package kotlin.collections;

/* loaded from: classes5.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public final int f51324a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f51325b;

    public A(int i2, Object obj) {
        this.f51324a = i2;
        this.f51325b = obj;
    }

    public final int a() {
        return this.f51324a;
    }

    public final Object b() {
        return this.f51325b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A)) {
            return false;
        }
        A a3 = (A) obj;
        return this.f51324a == a3.f51324a && kotlin.jvm.internal.j.a(this.f51325b, a3.f51325b);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.f51324a) * 31;
        Object obj = this.f51325b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.f51324a + ", value=" + this.f51325b + ')';
    }
}
