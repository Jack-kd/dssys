package kotlin;

/* loaded from: classes5.dex */
public final class h implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public static final a f51376c = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public final long f51377b;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public a() {
        }
    }

    public /* synthetic */ h(long j2) {
        this.f51377b = j2;
    }

    public static final /* synthetic */ h a(long j2) {
        return new h(j2);
    }

    public static long b(long j2) {
        return j2;
    }

    public static boolean c(long j2, Object obj) {
        return (obj instanceof h) && j2 == ((h) obj).f();
    }

    public static int d(long j2) {
        return Long.hashCode(j2);
    }

    public static String e(long j2) {
        return k.b(j2, 10);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return k.a(f(), ((h) obj).f());
    }

    public boolean equals(Object obj) {
        return c(this.f51377b, obj);
    }

    public final /* synthetic */ long f() {
        return this.f51377b;
    }

    public int hashCode() {
        return d(this.f51377b);
    }

    public String toString() {
        return e(this.f51377b);
    }
}
