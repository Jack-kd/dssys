package com.kwad.sdk.wrapper;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ab;

/* loaded from: classes4.dex */
public final class m {
    private static Application buj;

    public static void E(Context context, boolean z2) {
        try {
            context.getSharedPreferences("kssdk_api_pref", 0).edit().putBoolean("useContextClassLoader", z2).apply();
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
    }

    private static boolean Ya() {
        if (f.XT().Wn()) {
            return true;
        }
        ServiceProvider.reportSdkCaughtException(new RuntimeException("please init KSPlugin"));
        return false;
    }

    public static Application Yb() {
        Ya();
        Application applicationYc = Yc();
        if (j.XY()) {
            buj = (Application) j.wrapContextIfNeed(applicationYc);
        }
        return buj;
    }

    private static Application Yc() {
        Application application = buj;
        if (application != null) {
            return application;
        }
        Context contextUd = ServiceProvider.Ud();
        if (contextUd instanceof Application) {
            Application application2 = (Application) contextUd;
            buj = application2;
            return application2;
        }
        Context applicationContext = contextUd.getApplicationContext();
        if (applicationContext instanceof Application) {
            Application application3 = (Application) applicationContext;
            buj = application3;
            return application3;
        }
        Context contextEM = be(applicationContext) ? j.eM(applicationContext) : k.be(applicationContext) ? k.eM(applicationContext) : contextUd.getApplicationContext();
        if (contextEM instanceof Application) {
            buj = (Application) contextEM;
        } else {
            Application application4 = com.kwad.sdk.core.c.b.LW().getApplication();
            if (application4 != null) {
                buj = application4;
            } else if (contextEM instanceof ContextWrapper) {
                Context baseContext = ((ContextWrapper) contextEM).getBaseContext();
                if (baseContext != null) {
                    baseContext = baseContext.getApplicationContext();
                }
                if (baseContext instanceof Application) {
                    buj = (Application) baseContext;
                }
            }
        }
        if (buj == null) {
            buj = Yd();
        }
        Application applicationER = eR(buj);
        buj = applicationER;
        return applicationER;
    }

    private static Application Yd() {
        Application application = (Application) ab.a("android.app.ActivityThread", "currentApplication", new Object[0]);
        return application != null ? application : (Application) ab.a("android.app.AppGlobals", "getInitialApplication", new Object[0]);
    }

    public static boolean Ye() {
        return ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fu() || f.XT().XU();
    }

    public static View a(Context context, @LayoutRes int i2, @Nullable ViewGroup viewGroup, boolean z2) {
        LayoutInflater layoutInflaterEU;
        try {
            layoutInflaterEU = eU(context);
            try {
                return layoutInflaterEU.inflate(i2, viewGroup, z2);
            } catch (RuntimeException e2) {
                e = e2;
                throw WrapperException.createFromInflater(layoutInflaterEU, e);
            }
        } catch (RuntimeException e3) {
            e = e3;
            layoutInflaterEU = null;
        }
    }

    private static Context bc(Context context) {
        return context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : context;
    }

    private static boolean be(Context context) {
        return context instanceof b;
    }

    public static void d(Application application) {
        if (buj == null) {
            buj = application;
        }
    }

    @NonNull
    private static Context eO(Context context) {
        if (j.XY() && !be(context)) {
            ServiceProvider.reportSdkCaughtException(new RuntimeException("expect KSContext in external --context:" + context.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx()));
            return context;
        }
        if (!j.XY() && !k.be(context)) {
            ServiceProvider.reportSdkCaughtException(new RuntimeException("expect ResContext in external --context:" + context.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx()));
        }
        return context;
    }

    @NonNull
    public static Context eP(Context context) {
        if (Ya() && Ye() && !eS(context)) {
            return eQ(be(context) ? j.eL(context) : k.unwrapContextIfNeed(context));
        }
        return context;
    }

    private static Context eQ(Context context) {
        if (!k.be(context) && !(context instanceof b)) {
            return context;
        }
        ServiceProvider.reportSdkCaughtException(new RuntimeException("expect normalContext --context:" + context.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx()));
        return context;
    }

    private static Application eR(Context context) {
        if (context instanceof Application) {
            return (Application) context;
        }
        ServiceProvider.reportSdkCaughtException(new RuntimeException("expect normalContext --context:" + context.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx() + "--isExternal:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fu() + "--isInnerDex:" + f.XT().XU()));
        return null;
    }

    public static boolean eS(Context context) {
        return (be(context) || k.be(context)) ? false : true;
    }

    public static Context eT(Context context) {
        try {
            if (k.be(context)) {
                context = k.bd(context);
            }
            if (context instanceof b) {
                context = ((b) context).getDelegatedContext();
            }
            if (eS(context)) {
                return context;
            }
            for (int i2 = 0; i2 < 5; i2++) {
                if (k.be(context)) {
                    context = k.bd(context);
                }
                if (context instanceof b) {
                    context = ((b) context).getDelegatedContext();
                }
                if (eS(context)) {
                    return context;
                }
            }
            return context;
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
            return context;
        }
    }

    public static LayoutInflater eU(Context context) {
        Context contextWrapContextIfNeed = wrapContextIfNeed(context);
        if (!k.be(contextWrapContextIfNeed)) {
            return LayoutInflater.from(contextWrapContextIfNeed);
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(contextWrapContextIfNeed);
        a(layoutInflaterFrom);
        return layoutInflaterFrom;
    }

    @Nullable
    public static Activity getActivityFromContext(@Nullable Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        Context contextEP = eP(context);
        if (contextEP instanceof Activity) {
            return (Activity) contextEP;
        }
        com.kwad.sdk.core.c.b.LW();
        return com.kwad.sdk.core.c.b.getCurrentActivity();
    }

    public static int getThemeResId(Context context) {
        if (!(context instanceof ContextThemeWrapper)) {
            if (context instanceof androidx.appcompat.view.ContextThemeWrapper) {
                return ((androidx.appcompat.view.ContextThemeWrapper) context).getThemeResId();
            }
            return 0;
        }
        Object objA = ab.a((Object) context, "android.view.ContextThemeWrapper", "getThemeResId");
        if (objA != null) {
            return ((Integer) objA).intValue();
        }
        return 0;
    }

    public static View inflate(Context context, @LayoutRes int i2, @Nullable ViewGroup viewGroup) {
        LayoutInflater layoutInflaterEU;
        try {
            layoutInflaterEU = eU(context);
            try {
                return eU(context).inflate(i2, viewGroup);
            } catch (RuntimeException e2) {
                e = e2;
                throw WrapperException.createFromInflater(layoutInflaterEU, e);
            }
        } catch (RuntimeException e3) {
            e = e3;
            layoutInflaterEU = null;
        }
    }

    public static void u(Activity activity) {
        k.onDestroy(activity);
    }

    @NonNull
    public static Context wrapContextIfNeed(Context context) {
        if (Ya() && Ye()) {
            return eO(j.XY() ? j.wrapContextIfNeed(context) : k.wrapContextIfNeed(context));
        }
        return context;
    }

    public static LayoutInflater a(Context context, Context context2) {
        LayoutInflater layoutInflaterCloneInContext = LayoutInflater.from(bc(context)).cloneInContext(context2);
        a(layoutInflaterCloneInContext);
        return layoutInflaterCloneInContext;
    }

    private static void a(LayoutInflater layoutInflater) {
        ab.a(layoutInflater, "mFactory", (Object) null);
        ab.a(layoutInflater, "mFactory2", (Object) null);
    }
}
