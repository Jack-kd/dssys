package kotlinx.coroutines;

import java.io.Closeable;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractC1686k0;

/* renamed from: kotlinx.coroutines.k0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1686k0 extends H implements Closeable, AutoCloseable {

    /* renamed from: b, reason: collision with root package name */
    public static final a f51816b = new a(null);

    /* renamed from: kotlinx.coroutines.k0$a */
    public static final class a extends kotlin.coroutines.b {
        public /* synthetic */ a(kotlin.jvm.internal.f fVar) {
            this();
        }

        public static final AbstractC1686k0 d(i.b bVar) {
            if (bVar instanceof AbstractC1686k0) {
                return (AbstractC1686k0) bVar;
            }
            return null;
        }

        public a() {
            super(H.Key, new Function1() { // from class: kotlinx.coroutines.j0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AbstractC1686k0.a.d((i.b) obj);
                }
            });
        }
    }
}
