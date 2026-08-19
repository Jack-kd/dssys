package com.fl.saas.adx.base.manager.api;

import android.content.Context;
import com.fl.saas.C1207p0;
import com.fl.saas.adx.base.base.AdapterAPI;

/* loaded from: classes3.dex */
public interface ManagerLoader<S extends AdapterAPI> extends FailedLoader {
    S bindAdapter(S s2);

    Context getContext();

    C1207p0 getContextOpt();

    String getLinkId();
}
