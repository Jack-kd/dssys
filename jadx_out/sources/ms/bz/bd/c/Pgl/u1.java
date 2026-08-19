package ms.bz.bd.c.Pgl;

/* loaded from: classes5.dex */
public final class u1 {
    private static volatile u1 hp;

    /* renamed from: l, reason: collision with root package name */
    private Throwable f52018l = null;

    private u1() {
    }

    public static u1 hp() {
        if (hp == null) {
            synchronized (u1.class) {
                try {
                    if (hp == null) {
                        hp = new u1();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public final synchronized Throwable l() {
        return this.f52018l;
    }
}
