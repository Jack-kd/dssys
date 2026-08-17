package kotlin.text;

/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final String f51479a;

    /* renamed from: b, reason: collision with root package name */
    public final E1.d f51480b;

    public i(String value, E1.d range) {
        kotlin.jvm.internal.j.e(value, "value");
        kotlin.jvm.internal.j.e(range, "range");
        this.f51479a = value;
        this.f51480b = range;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return kotlin.jvm.internal.j.a(this.f51479a, iVar.f51479a) && kotlin.jvm.internal.j.a(this.f51480b, iVar.f51480b);
    }

    public int hashCode() {
        return (this.f51479a.hashCode() * 31) + this.f51480b.hashCode();
    }

    public String toString() {
        return "MatchGroup(value=" + this.f51479a + ", range=" + this.f51480b + ')';
    }
}
