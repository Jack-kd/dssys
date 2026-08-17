package kotlinx.coroutines.internal;

import kotlin.coroutines.i;

/* loaded from: classes5.dex */
public final class K implements i.c {

    /* renamed from: b, reason: collision with root package name */
    public final ThreadLocal f51763b;

    public K(ThreadLocal threadLocal) {
        this.f51763b = threadLocal;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof K) && kotlin.jvm.internal.j.a(this.f51763b, ((K) obj).f51763b);
    }

    public int hashCode() {
        return this.f51763b.hashCode();
    }

    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f51763b + ')';
    }
}
