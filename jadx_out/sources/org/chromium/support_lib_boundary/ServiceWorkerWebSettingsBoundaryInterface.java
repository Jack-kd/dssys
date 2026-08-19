package org.chromium.support_lib_boundary;

import org.jspecify.annotations.NullMarked;

@NullMarked
/* loaded from: classes5.dex */
public interface ServiceWorkerWebSettingsBoundaryInterface {
    boolean getAllowContentAccess();

    boolean getAllowFileAccess();

    boolean getBlockNetworkLoads();

    int getCacheMode();

    boolean getIncludeCookiesOnIntercept();

    void setAllowContentAccess(boolean z2);

    void setAllowFileAccess(boolean z2);

    void setBlockNetworkLoads(boolean z2);

    void setCacheMode(int i2);

    void setIncludeCookiesOnIntercept(boolean z2);
}
