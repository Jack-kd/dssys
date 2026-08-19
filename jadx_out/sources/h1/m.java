package h1;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final l f50765a;

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f50766b;

    public m(l lVar, Runnable runnable) {
        this.f50765a = lVar;
        this.f50766b = runnable;
    }

    public Integer a() {
        l lVar = this.f50765a;
        if (lVar != null) {
            return Integer.valueOf(lVar.a());
        }
        return null;
    }

    public boolean b() {
        l lVar = this.f50765a;
        return lVar != null && lVar.b();
    }
}
