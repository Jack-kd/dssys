package androidx.browser.trusted;

import androidx.concurrent.futures.ResolvableFuture;

/* loaded from: classes.dex */
class FutureUtils {
    private FutureUtils() {
    }

    public static <T> M0.a immediateFailedFuture(Throwable th) {
        ResolvableFuture resolvableFutureCreate = ResolvableFuture.create();
        resolvableFutureCreate.setException(th);
        return resolvableFutureCreate;
    }
}
