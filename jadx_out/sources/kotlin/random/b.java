package kotlin.random;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public final class b extends kotlin.random.a {

    /* renamed from: b, reason: collision with root package name */
    public final a f51414b = new a();

    public static final class a extends ThreadLocal {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.util.Random initialValue() {
            return new java.util.Random();
        }
    }

    @Override // kotlin.random.a
    public java.util.Random getImpl() {
        Object obj = this.f51414b.get();
        j.d(obj, "get(...)");
        return (java.util.Random) obj;
    }
}
