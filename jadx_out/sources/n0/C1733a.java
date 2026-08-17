package n0;

import android.app.Activity;
import androidx.arch.core.util.Function;
import java.lang.ref.WeakReference;

/* renamed from: n0.a, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1733a implements Function {
    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return (Activity) ((WeakReference) obj).get();
    }
}
