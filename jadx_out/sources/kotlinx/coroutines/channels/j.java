package kotlinx.coroutines.channels;

/* loaded from: classes5.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final b f51593b = new b(null);

    /* renamed from: c, reason: collision with root package name */
    public static final c f51594c = new c();

    /* renamed from: a, reason: collision with root package name */
    public final Object f51595a;

    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f51596a;

        public a(Throwable th) {
            this.f51596a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && kotlin.jvm.internal.j.a(this.f51596a, ((a) obj).f51596a);
        }

        public int hashCode() {
            Throwable th = this.f51596a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.j.c
        public String toString() {
            return "Closed(" + this.f51596a + ')';
        }
    }

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.f fVar) {
            this();
        }

        public final Object a(Throwable th) {
            return j.c(new a(th));
        }

        public final Object b() {
            return j.c(j.f51594c);
        }

        public final Object c(Object obj) {
            return j.c(obj);
        }

        public b() {
        }
    }

    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    public /* synthetic */ j(Object obj) {
        this.f51595a = obj;
    }

    public static final /* synthetic */ j b(Object obj) {
        return new j(obj);
    }

    public static Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof j) && kotlin.jvm.internal.j.a(obj, ((j) obj2).k());
    }

    public static final Throwable e(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.f51596a;
        }
        return null;
    }

    public static final Object f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj instanceof a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    public static String j(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f51595a, obj);
    }

    public int hashCode() {
        return g(this.f51595a);
    }

    public final /* synthetic */ Object k() {
        return this.f51595a;
    }

    public String toString() {
        return j(this.f51595a);
    }
}
