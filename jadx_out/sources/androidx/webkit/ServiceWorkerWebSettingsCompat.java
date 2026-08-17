package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;

@AnyThread
/* loaded from: classes.dex */
public abstract class ServiceWorkerWebSettingsCompat {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface CacheMode {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public ServiceWorkerWebSettingsCompat() {
    }

    public abstract boolean getAllowContentAccess();

    public abstract boolean getAllowFileAccess();

    public abstract boolean getBlockNetworkLoads();

    public abstract int getCacheMode();

    @Deprecated(forRemoval = true)
    public abstract Set<String> getRequestedWithHeaderOriginAllowList();

    public abstract boolean isIncludeCookiesOnShouldInterceptRequestEnabled();

    public abstract void setAllowContentAccess(boolean z2);

    public abstract void setAllowFileAccess(boolean z2);

    public abstract void setBlockNetworkLoads(boolean z2);

    public abstract void setCacheMode(int i2);

    public abstract void setIncludeCookiesOnShouldInterceptRequestEnabled(boolean z2);

    @Deprecated(forRemoval = true)
    public abstract void setRequestedWithHeaderOriginAllowList(Set<String> set);
}
