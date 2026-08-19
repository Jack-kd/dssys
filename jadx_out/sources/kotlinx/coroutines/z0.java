package kotlinx.coroutines;

/* loaded from: classes5.dex */
public abstract class z0 {

    /* renamed from: a, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51944a = new kotlinx.coroutines.internal.B("COMPLETING_ALREADY");

    /* renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51945b = new kotlinx.coroutines.internal.B("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51946c = new kotlinx.coroutines.internal.B("COMPLETING_RETRY");

    /* renamed from: d, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51947d = new kotlinx.coroutines.internal.B("TOO_LATE_TO_CANCEL");

    /* renamed from: e, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51948e = new kotlinx.coroutines.internal.B("SEALED");

    /* renamed from: f, reason: collision with root package name */
    public static final C1630c0 f51949f = new C1630c0(false);

    /* renamed from: g, reason: collision with root package name */
    public static final C1630c0 f51950g = new C1630c0(true);

    public static final Object g(Object obj) {
        return obj instanceof InterfaceC1696p0 ? new C1698q0((InterfaceC1696p0) obj) : obj;
    }

    public static final Object h(Object obj) {
        InterfaceC1696p0 interfaceC1696p0;
        C1698q0 c1698q0 = obj instanceof C1698q0 ? (C1698q0) obj : null;
        return (c1698q0 == null || (interfaceC1696p0 = c1698q0.f51828a) == null) ? obj : interfaceC1696p0;
    }
}
