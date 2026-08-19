package com.bytedance.pangle;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.annotation.Keep;
import androidx.annotation.RequiresApi;
import androidx.appcompat.view.ContextThemeWrapper;
import com.byazt.anq.l;
import com.byazt.ik.a;
import com.byazt.vw.hp;
import com.byazt.ye.eb;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;

@Keep
/* loaded from: classes3.dex */
public class PluginContext extends eb {
    public static Class<?> sContextThemeWrapperClass;
    public LayoutInflater mInflater;
    public boolean mIsHostApplicationContext;
    public Context mOriginContext;
    public Configuration mOverrideConfiguration;
    public Plugin mPlugin;

    static {
        try {
            sContextThemeWrapperClass = ContextThemeWrapper.class;
        } catch (Throwable unused) {
        }
    }

    public PluginContext() {
    }

    public static Context getContextWithoutTheme(Context context) {
        if (context instanceof android.view.ContextThemeWrapper) {
            return getContextWithoutTheme(((android.view.ContextThemeWrapper) context).getBaseContext());
        }
        Class<?> cls = sContextThemeWrapperClass;
        return (cls == null || !cls.isInstance(context)) ? context : getContextWithoutTheme(((ContextThemeWrapper) context).getBaseContext());
    }

    @RequiresApi(api = 17)
    private Resources getResourcesInternal() {
        return this.mPlugin.mResources;
    }

    public static int getThemeResourceId(Context context) {
        if (context instanceof android.view.ContextThemeWrapper) {
            try {
                return ((Integer) FieldUtils.readField(context, "mThemeResource")).intValue();
            } catch (Throwable unused) {
            }
        }
        Class<?> cls = sContextThemeWrapperClass;
        if (cls == null || !cls.isInstance(context)) {
            return 0;
        }
        return ((ContextThemeWrapper) context).getThemeResId();
    }

    @Override // android.view.ContextThemeWrapper
    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.mPlugin.mResources != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.mOverrideConfiguration != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.mOverrideConfiguration = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context createConfigurationContext(Configuration configuration) {
        Context contextCreateConfigurationContext = super.createConfigurationContext(configuration);
        try {
            try {
                FieldUtils.writeField(contextCreateConfigurationContext, "mResources", this.mPlugin.mResources);
                return contextCreateConfigurationContext;
            } catch (Throwable th) {
                a.hp(th);
                return contextCreateConfigurationContext;
            }
        } catch (Throwable unused) {
            hp.hp(contextCreateConfigurationContext.getClass(), "mResources").set(contextCreateConfigurationContext, this.mPlugin.mResources);
            return contextCreateConfigurationContext;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        Context context = this.mOriginContext;
        return context instanceof PluginApplicationWrapper ? context : ZeusTransformUtils.wrapperContext(context.getApplicationContext(), this.mPlugin.mPkgName);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ApplicationInfo getApplicationInfo() {
        return this.mPlugin.mHostApplicationInfoHookSomeField;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.mPlugin.mResources.getAssets();
    }

    @Override // android.content.ContextWrapper
    public Context getBaseContext() {
        Context baseContext = super.getBaseContext();
        return baseContext instanceof ContextWrapper ? ((ContextWrapper) baseContext).getBaseContext() : baseContext;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return this.mPlugin.mClassLoader;
    }

    public Configuration getOverrideConfiguration() {
        return this.mOverrideConfiguration;
    }

    public String getPluginPackageName() {
        return this.mPlugin.mPkgName;
    }

    @Override // com.byazt.ye.eb
    public String getPluginPkg() {
        return this.mPlugin.mPkgName;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.mPlugin.mResources;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            Context context = this.mOriginContext;
            return context != null ? context.getSystemService(str) : getBaseContext().getSystemService(str);
        }
        if (this.mInflater == null) {
            LayoutInflater layoutInflaterCloneInContext = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            this.mInflater = layoutInflaterCloneInContext;
            l.hp(layoutInflaterCloneInContext);
        }
        return this.mInflater;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void registerComponentCallbacks(ComponentCallbacks componentCallbacks) {
        if (this.mIsHostApplicationContext) {
            this.mOriginContext.registerComponentCallbacks(componentCallbacks);
        } else {
            super.registerComponentCallbacks(componentCallbacks);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterComponentCallbacks(ComponentCallbacks componentCallbacks) {
        if (this.mIsHostApplicationContext) {
            this.mOriginContext.unregisterComponentCallbacks(componentCallbacks);
        } else {
            super.unregisterComponentCallbacks(componentCallbacks);
        }
    }

    public PluginContext(Context context, Plugin plugin, boolean z2) {
        super(getContextWithoutTheme(context), getThemeResourceId(context));
        this.mPlugin = plugin;
        this.mOriginContext = context;
        this.mIsHostApplicationContext = z2;
    }
}
