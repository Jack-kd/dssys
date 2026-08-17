package kotlin.jvm.internal;

/* loaded from: classes5.dex */
public final class l implements c {

    /* renamed from: b, reason: collision with root package name */
    public final Class f51404b;

    /* renamed from: c, reason: collision with root package name */
    public final String f51405c;

    public l(Class jClass, String moduleName) {
        j.e(jClass, "jClass");
        j.e(moduleName, "moduleName");
        this.f51404b = jClass;
        this.f51405c = moduleName;
    }

    @Override // kotlin.jvm.internal.c
    public Class c() {
        return this.f51404b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof l) && j.a(c(), ((l) obj).c());
    }

    public int hashCode() {
        return c().hashCode();
    }

    public String toString() {
        return c().toString() + " (Kotlin reflection is not available)";
    }
}
