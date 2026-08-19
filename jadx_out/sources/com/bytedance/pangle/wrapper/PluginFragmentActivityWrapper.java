package com.bytedance.pangle.wrapper;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.Keep;
import androidx.fragment.app.FragmentActivity;
import androidx.view.Lifecycle;
import androidx.view.LifecycleRegistry;
import com.byazt.ik.a;
import com.byazt.lc.q;
import com.byazt.ye.hp;
import com.bytedance.pangle.PluginContext;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Field;

@Keep
/* loaded from: classes3.dex */
public class PluginFragmentActivityWrapper extends GenerateFragmentActivityWrapper {
    public boolean hasInit = true;

    public PluginFragmentActivityWrapper(Activity activity, PluginContext pluginContext) throws NoSuchFieldException, SecurityException, IllegalArgumentException {
        FragmentActivity fragmentActivity = (FragmentActivity) activity;
        this.mOriginActivity = fragmentActivity;
        this.pluginContext = pluginContext;
        if (!fragmentActivity.isDestroyed()) {
            Zeus.getAppApplication().registerActivityLifecycleCallbacks(new hp() { // from class: com.bytedance.pangle.wrapper.PluginFragmentActivityWrapper.1
                @Override // com.byazt.ye.hp, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity2) {
                    super.onActivityDestroyed(activity2);
                    if (activity2 == PluginFragmentActivityWrapper.this.mOriginActivity) {
                        Zeus.getAppApplication().unregisterActivityLifecycleCallbacks(this);
                    }
                }
            });
        }
        try {
            FieldUtils.writeField(this, "mBase", pluginContext);
            if (!q.hp()) {
                FieldUtils.writeField(FieldUtils.getField(ContextWrapper.class, "mBase"), this, pluginContext);
            }
        } catch (IllegalAccessException e2) {
            a.hp(e2);
        }
        try {
            FieldUtils.writeField(this, "mApplication", activity.getApplication());
        } catch (IllegalAccessException e3) {
            a.hp(e3);
        }
        com.byazt.lc.hp.hp(this, activity);
    }

    @Override // com.bytedance.pangle.wrapper.GenerateFragmentActivityWrapper, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, androidx.view.LifecycleOwner
    public Lifecycle getLifecycle() {
        if (!this.hasInit) {
            try {
                LifecycleRegistry lifecycleRegistry = new LifecycleRegistry(this);
                try {
                    Field declaredField = LifecycleRegistry.class.getDeclaredField("mEnforceMainThread");
                    declaredField.setAccessible(true);
                    declaredField.set(lifecycleRegistry, Boolean.FALSE);
                } catch (Throwable unused) {
                }
                return lifecycleRegistry;
            } catch (Throwable unused2) {
            }
        }
        return super.getLifecycle();
    }

    public Activity getOriginActivity() {
        return this.mOriginActivity;
    }
}
