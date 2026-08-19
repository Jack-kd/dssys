package h1;

/* loaded from: classes5.dex */
public interface p {

    public class a implements l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ C1444k f50775a;

        public a(C1444k c1444k) {
            this.f50775a = c1444k;
        }

        @Override // h1.l
        public int a() {
            return this.f50775a.f50753c;
        }

        @Override // h1.l
        public boolean b() {
            return this.f50775a.F();
        }
    }

    static p a(String str, int i2, int i3) {
        return i2 == 1 ? new t(str, i3) : new r(str, i2, i3);
    }

    default void b(C1444k c1444k, Runnable runnable) {
        c(new m(c1444k == null ? null : new a(c1444k), runnable));
    }

    void c(m mVar);

    void d();

    void start();
}
