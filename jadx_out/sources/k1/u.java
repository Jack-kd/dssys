package k1;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes5.dex */
public final class u implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "Verbanr");
    }
}
