package kotlinx.coroutines.internal;

/* loaded from: classes5.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final LockFreeLinkedListNode f51810a;

    public v(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f51810a = lockFreeLinkedListNode;
    }

    public String toString() {
        return "Removed[" + this.f51810a + ']';
    }
}
