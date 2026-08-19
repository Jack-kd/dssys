package androidx.browser.customtabs;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Handler f810b;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f810b.post(runnable);
    }
}
