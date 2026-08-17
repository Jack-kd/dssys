package E1;

import kotlin.collections.B;

/* loaded from: classes5.dex */
public class b implements Iterable, B1.a {

    /* renamed from: e, reason: collision with root package name */
    public static final a f56e = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public final int f57b;

    /* renamed from: c, reason: collision with root package name */
    public final int f58c;

    /* renamed from: d, reason: collision with root package name */
    public final int f59d;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final b a(int i2, int i3, int i4) {
            return new b(i2, i3, i4);
        }

        public a() {
        }
    }

    public b(int i2, int i3, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i4 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f57b = i2;
        this.f58c = x1.c.b(i2, i3, i4);
        this.f59d = i4;
    }

    public final int a() {
        return this.f57b;
    }

    public final int b() {
        return this.f58c;
    }

    public final int d() {
        return this.f59d;
    }

    @Override // java.lang.Iterable
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public B iterator() {
        return new c(this.f57b, this.f58c, this.f59d);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (isEmpty() && ((b) obj).isEmpty()) {
            return true;
        }
        b bVar = (b) obj;
        return this.f57b == bVar.f57b && this.f58c == bVar.f58c && this.f59d == bVar.f59d;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f57b * 31) + this.f58c) * 31) + this.f59d;
    }

    public boolean isEmpty() {
        return this.f59d > 0 ? this.f57b > this.f58c : this.f57b < this.f58c;
    }

    public String toString() {
        StringBuilder sb;
        int i2;
        if (this.f59d > 0) {
            sb = new StringBuilder();
            sb.append(this.f57b);
            sb.append("..");
            sb.append(this.f58c);
            sb.append(" step ");
            i2 = this.f59d;
        } else {
            sb = new StringBuilder();
            sb.append(this.f57b);
            sb.append(" downTo ");
            sb.append(this.f58c);
            sb.append(" step ");
            i2 = -this.f59d;
        }
        sb.append(i2);
        return sb.toString();
    }
}
