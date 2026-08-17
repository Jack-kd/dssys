package com.fl.saas.adx.base.manager.api;

import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdLoadEvent;

/* loaded from: classes3.dex */
public interface FailedLoader extends AdLoadEvent {
    boolean isFailedCallBack();

    void onAdFailed(FLError fLError);
}
