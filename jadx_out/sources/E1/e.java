package E1;

import kotlin.jvm.internal.j;

/* loaded from: classes5.dex */
public abstract class e {
    public static final void a(boolean z2, Number step) {
        j.e(step, "step");
        if (z2) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }
}
