package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class n extends k {

    public static final class a implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Iterator f51440a;

        public a(Iterator it) {
            this.f51440a = it;
        }

        @Override // kotlin.sequences.g
        public Iterator iterator() {
            return this.f51440a;
        }
    }

    public static g e(Iterator it) {
        kotlin.jvm.internal.j.e(it, "<this>");
        return f(new a(it));
    }

    public static final g f(g gVar) {
        kotlin.jvm.internal.j.e(gVar, "<this>");
        return gVar instanceof kotlin.sequences.a ? gVar : new kotlin.sequences.a(gVar);
    }

    public static g g(final Object obj, Function1 nextFunction) {
        kotlin.jvm.internal.j.e(nextFunction, "nextFunction");
        return obj == null ? d.f51420a : new f(new Function0() { // from class: kotlin.sequences.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n.k(obj);
            }
        }, nextFunction);
    }

    public static g h(final Function0 nextFunction) {
        kotlin.jvm.internal.j.e(nextFunction, "nextFunction");
        return f(new f(nextFunction, new Function1() { // from class: kotlin.sequences.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n.j(nextFunction, obj);
            }
        }));
    }

    public static g i(Function0 seedFunction, Function1 nextFunction) {
        kotlin.jvm.internal.j.e(seedFunction, "seedFunction");
        kotlin.jvm.internal.j.e(nextFunction, "nextFunction");
        return new f(seedFunction, nextFunction);
    }

    public static final Object j(Function0 function0, Object it) {
        kotlin.jvm.internal.j.e(it, "it");
        return function0.invoke();
    }

    public static final Object k(Object obj) {
        return obj;
    }
}
