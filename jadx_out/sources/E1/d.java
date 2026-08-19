package E1;

/* loaded from: classes5.dex */
public final class d extends b implements E1.a {

    /* renamed from: f, reason: collision with root package name */
    public static final a f64f = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public static final d f65g = new d(1, 0);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final d a() {
            return d.f65g;
        }

        public a() {
        }
    }

    public d(int i2, int i3) {
        super(i2, i3, 1);
    }

    @Override // E1.b
    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        if (isEmpty() && ((d) obj).isEmpty()) {
            return true;
        }
        d dVar = (d) obj;
        return a() == dVar.a() && b() == dVar.b();
    }

    public boolean g(int i2) {
        return a() <= i2 && i2 <= b();
    }

    @Override // E1.a
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public Integer getEndInclusive() {
        return Integer.valueOf(b());
    }

    @Override // E1.b
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (a() * 31) + b();
    }

    @Override // E1.a
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Integer getStart() {
        return Integer.valueOf(a());
    }

    @Override // E1.b
    public boolean isEmpty() {
        return a() > b();
    }

    @Override // E1.b
    public String toString() {
        return a() + ".." + b();
    }
}
