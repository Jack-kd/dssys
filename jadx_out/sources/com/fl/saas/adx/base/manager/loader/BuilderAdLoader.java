package com.fl.saas.adx.base.manager.loader;

import androidx.annotation.NonNull;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.manager.api.ManagerLoader;

/* loaded from: classes3.dex */
public class BuilderAdLoader<T extends AdapterAPI> extends BaseLoader<T> {
    public BuilderAdLoader(@NonNull AdType adType, @NonNull ManagerLoader<T> managerLoader) {
        super(managerLoader, adType.getPos());
    }
}
