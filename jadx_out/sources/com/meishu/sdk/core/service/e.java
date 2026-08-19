package com.meishu.sdk.core.service;

import android.app.Activity;

/* loaded from: classes4.dex */
public interface e {
    void onActivityDestroyed(Activity activity);

    void onActivityPause(Activity activity);

    void onActivityResume(Activity activity);

    boolean onAppStateUpdate(boolean z2);
}
