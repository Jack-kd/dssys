package com.byazt.sa;

import android.app.Application;
import android.content.Context;
import com.byazt.dw.j;
import com.byazt.ik.w;
import com.byazt.kc.AbsServerManager;
import com.byazt.kj.hp;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;

@hp(hp = {0, 1, 1981, 229})
/* loaded from: classes3.dex */
public class MainServerManager extends AbsServerManager {
    @Override // com.byazt.kc.AbsServerManager, android.content.ContentProvider
    public boolean onCreate() {
        Context applicationContext = getContext().getApplicationContext();
        TTAppContextHolder.setContext(applicationContext);
        if (!w.hp() && (applicationContext instanceof Application)) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(j.instance().getActivityLifecycleCallback());
        }
        return super.onCreate();
    }
}
