package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.DelayKt;

/* loaded from: classes5.dex */
public final class OnTimeout {

    /* renamed from: a, reason: collision with root package name */
    public final long f51854a;

    public static final class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i f51855b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ OnTimeout f51856c;

        public a(i iVar, OnTimeout onTimeout) {
            this.f51855b = iVar;
            this.f51856c = onTimeout;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f51855b.f(this.f51856c, kotlin.j.f51397a);
        }
    }

    public OnTimeout(long j2) {
        this.f51854a = j2;
    }

    public final d b() {
        OnTimeout$selectClause$1 onTimeout$selectClause$1 = OnTimeout$selectClause$1.INSTANCE;
        kotlin.jvm.internal.j.c(onTimeout$selectClause$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new e(this, (Function3) p.c(onTimeout$selectClause$1, 3), null, 4, null);
    }

    public final void c(i iVar, Object obj) {
        if (this.f51854a <= 0) {
            iVar.d(kotlin.j.f51397a);
            return;
        }
        a aVar = new a(iVar, this);
        kotlin.jvm.internal.j.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        SelectImplementation selectImplementation = (SelectImplementation) iVar;
        kotlin.coroutines.i context = selectImplementation.getContext();
        selectImplementation.e(DelayKt.c(context).f(this.f51854a, aVar, context));
    }
}
