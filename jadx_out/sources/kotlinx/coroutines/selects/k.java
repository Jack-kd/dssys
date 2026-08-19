package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.internal.B;

/* loaded from: classes5.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final Function3 f51880a = a.f51886b;

    /* renamed from: b, reason: collision with root package name */
    public static final B f51881b = new B("STATE_REG");

    /* renamed from: c, reason: collision with root package name */
    public static final B f51882c = new B("STATE_COMPLETED");

    /* renamed from: d, reason: collision with root package name */
    public static final B f51883d = new B("STATE_CANCELLED");

    /* renamed from: e, reason: collision with root package name */
    public static final B f51884e = new B("NO_RESULT");

    /* renamed from: f, reason: collision with root package name */
    public static final B f51885f = new B("PARAM_CLAUSE_0");

    public static final class a implements Function3 {

        /* renamed from: b, reason: collision with root package name */
        public static final a f51886b = new a();

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    }

    public static final TrySelectDetailedResult a(int i2) {
        if (i2 == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i2 == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i2 == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i2 == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i2).toString());
    }

    public static final B i() {
        return f51885f;
    }

    public static final boolean j(InterfaceC1687l interfaceC1687l, Function3 function3) {
        Object objD = interfaceC1687l.D(kotlin.j.f51397a, null, function3);
        if (objD == null) {
            return false;
        }
        interfaceC1687l.t(objD);
        return true;
    }
}
