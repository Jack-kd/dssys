package kotlin.coroutines;

import kotlin.coroutines.f;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public interface i {

    public static final class a {
        public static i b(i iVar, i context) {
            j.e(context, "context");
            return context == EmptyCoroutineContext.INSTANCE ? iVar : (i) context.fold(iVar, new Function2() { // from class: kotlin.coroutines.h
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return i.a.c((i) obj, (i.b) obj2);
                }
            });
        }

        public static i c(i acc, b element) {
            j.e(acc, "acc");
            j.e(element, "element");
            i iVarMinusKey = acc.minusKey(element.getKey());
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
            if (iVarMinusKey == emptyCoroutineContext) {
                return element;
            }
            f.b bVar = f.R2;
            f fVar = (f) iVarMinusKey.get(bVar);
            if (fVar == null) {
                return new CombinedContext(iVarMinusKey, element);
            }
            i iVarMinusKey2 = iVarMinusKey.minusKey(bVar);
            return iVarMinusKey2 == emptyCoroutineContext ? new CombinedContext(element, fVar) : new CombinedContext(new CombinedContext(iVarMinusKey2, element), fVar);
        }
    }

    public interface b extends i {

        public static final class a {
            public static Object a(b bVar, Object obj, Function2 operation) {
                j.e(operation, "operation");
                return operation.invoke(obj, bVar);
            }

            public static b b(b bVar, c key) {
                j.e(key, "key");
                if (!j.a(bVar.getKey(), key)) {
                    return null;
                }
                j.c(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static i c(b bVar, c key) {
                j.e(key, "key");
                return j.a(bVar.getKey(), key) ? EmptyCoroutineContext.INSTANCE : bVar;
            }

            public static i d(b bVar, i context) {
                j.e(context, "context");
                return a.b(bVar, context);
            }
        }

        @Override // kotlin.coroutines.i
        b get(c cVar);

        c getKey();
    }

    public interface c {
    }

    Object fold(Object obj, Function2 function2);

    b get(c cVar);

    i minusKey(c cVar);

    i plus(i iVar);
}
