package com.kwad.components.core.offline.b.a;

import com.kwad.components.offline.api.core.api.IAsync;
import com.kwad.sdk.utils.by;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
final class b implements IAsync {
    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void execute(Runnable runnable) {
        com.kwad.sdk.utils.i.execute(runnable);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void runOnDefaultExecutor(Runnable runnable) {
        com.kwad.sdk.utils.i.execute(runnable);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void runOnUiThread(Runnable runnable) {
        by.runOnUiThread(runnable);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void runOnUiThreadDelay(Runnable runnable, long j2) {
        by.runOnUiThreadDelay(runnable, j2);
    }

    @Override // com.kwad.components.offline.api.core.api.IAsync
    public final void schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
        com.kwad.sdk.utils.i.schedule(runnable, j2, timeUnit);
    }
}
