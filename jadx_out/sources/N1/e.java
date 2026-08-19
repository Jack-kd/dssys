package N1;

/* loaded from: classes5.dex */
public interface e {
    public static final e M2 = new a();
    public static final e N2 = new b();
    public static final e O2 = new c();
    public static final e P2 = new d();
    public static final e Q2 = new C0007e();

    public static class a implements e {
        public String toString() {
            return "UNAUTHENTICATED";
        }
    }

    public static class b implements e {
        public String toString() {
            return "NOT CHECKED";
        }
    }

    public static class c implements e {
        public String toString() {
            return "CHALLENGE";
        }
    }

    public static class d implements e {
        public String toString() {
            return "FAILURE";
        }
    }

    /* renamed from: N1.e$e, reason: collision with other inner class name */
    public static class C0007e implements e {
        public String toString() {
            return "SEND_SUCCESS";
        }
    }
}
