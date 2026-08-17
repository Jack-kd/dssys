package F1;

import android.os.Looper;
import java.util.List;
import kotlinx.coroutines.B0;
import kotlinx.coroutines.internal.p;

/* loaded from: classes5.dex */
public final class a implements p {
    @Override // kotlinx.coroutines.internal.p
    public int a() {
        return 1073741823;
    }

    @Override // kotlinx.coroutines.internal.p
    public String b() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.p
    public B0 c(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new e(g.a(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }
}
