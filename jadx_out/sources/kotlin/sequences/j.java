package kotlin.sequences;

import java.util.Iterator;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;

/* loaded from: classes5.dex */
public abstract class j {

    public static final class a implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Function2 f51437a;

        public a(Function2 function2) {
            this.f51437a = function2;
        }

        @Override // kotlin.sequences.g
        public Iterator iterator() {
            return j.a(this.f51437a);
        }
    }

    public static Iterator a(Function2 block) {
        kotlin.jvm.internal.j.e(block, "block");
        h hVar = new h();
        hVar.h(IntrinsicsKt__IntrinsicsJvmKt.a(block, hVar, hVar));
        return hVar;
    }

    public static g b(Function2 block) {
        kotlin.jvm.internal.j.e(block, "block");
        return new a(block);
    }
}
