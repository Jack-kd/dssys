package com.kwad.library.b.c;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.utils.ab;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes4.dex */
public class c {
    private static final String CLAZZ_NAME = "com.kwad.library.b.c.c";
    private static final ThreadLocal<a> sAutoUnWrapModelTL = new ThreadLocal<>();
    private static final List<String> sAutoUnWrapStackList = new ArrayList();
    private static final Map<String, WeakReference<Context>> sResContextCache = new HashMap();

    public static class a {
        private WeakReference<Context> aDW;
        private int aDX;
        private StackTraceElement[] aDY;
        private int aDZ;
        private long aEa;

        private a() {
            this.aDW = new WeakReference<>(null);
            this.aDX = 0;
            this.aDY = null;
            this.aDZ = 0;
        }

        public static /* synthetic */ int c(a aVar) {
            int i2 = aVar.aDX;
            aVar.aDX = i2 + 1;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.aDW = new WeakReference<>(null);
            this.aDX = 0;
            this.aDY = null;
            this.aDZ = 0;
            this.aEa = 0L;
        }

        public static /* synthetic */ int g(a aVar) {
            int i2 = aVar.aDZ;
            aVar.aDZ = i2 + 1;
            return i2;
        }

        public /* synthetic */ a(byte b3) {
            this();
        }
    }

    @Nullable
    private static Context a(String str, Context context) {
        WeakReference<Context> weakReference = sResContextCache.get(str + System.identityHashCode(context));
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private static boolean b(String str, Context context) {
        ThreadLocal<a> threadLocal = sAutoUnWrapModelTL;
        a aVar = threadLocal.get();
        byte b3 = 0;
        if (aVar == null) {
            threadLocal.set(new a(b3));
        } else if (aVar.aDW.get() != context || Math.abs(System.currentTimeMillis() - aVar.aEa) >= 150) {
            aVar.clear();
            aVar.aDW = new WeakReference(context);
            aVar.aEa = System.currentTimeMillis();
        } else {
            a.c(aVar);
            if (aVar.aDX >= (context instanceof Application ? 15 : 5) && a(str, context, aVar)) {
                aVar.clear();
                return true;
            }
        }
        return false;
    }

    private static Context bc(Context context) {
        return context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Context bd(Context context) {
        return ((d) context).getDelegatedContext();
    }

    private static boolean be(Context context) {
        return context instanceof d;
    }

    public static Application c(Application application, String str) {
        Objects.toString(application);
        if (application == null) {
            return null;
        }
        com.kwad.library.b.a aVarCv = cv(str);
        Objects.toString(aVarCv);
        if (aVarCv == null || !aVarCv.isLoaded() || (application instanceof d) || b(str, application)) {
            return application;
        }
        try {
            return new com.kwad.library.b.c.a(application, str);
        } catch (Throwable th) {
            th.getMessage();
            th.printStackTrace();
            return null;
        }
    }

    private static com.kwad.library.b.a cv(String str) {
        return com.kwad.library.solder.a.a.n(null, str);
    }

    private static List<String> getAutoUnWrapStackList() {
        List<String> list = sAutoUnWrapStackList;
        if (list.isEmpty()) {
            list.add("com.sensorsdata.analytics.android.sdk");
        }
        return list;
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

    @NonNull
    public static Context m(Context context, String str) {
        if (context == null) {
            return null;
        }
        com.kwad.library.b.a aVarCv = cv(str);
        if (aVarCv == null || !aVarCv.isLoaded() || (context instanceof d) || b(str, context)) {
            return context;
        }
        Context contextA = a(str, context);
        if (contextA != null) {
            return contextA;
        }
        Context eVar = context instanceof ContextThemeWrapper ? new e((ContextThemeWrapper) context, str) : context instanceof androidx.appcompat.view.ContextThemeWrapper ? new f((androidx.appcompat.view.ContextThemeWrapper) context, str) : context instanceof ContextWrapper ? new g(context, str) : new g(context, str);
        a(str, context, eVar);
        return eVar;
    }

    public static Context unwrapContextIfNeed(Context context) {
        if (be(context)) {
            context = bd(context);
        }
        if (!be(context)) {
            return context;
        }
        for (int i2 = 0; i2 < 10; i2++) {
            context = bd(context);
            if (!be(context)) {
                return context;
            }
        }
        return context;
    }

    public static Object wrapSystemService(Object obj, String str, Context context) {
        if (!"layout_inflater".equals(str) || !(obj instanceof LayoutInflater)) {
            return obj;
        }
        LayoutInflater layoutInflater = (LayoutInflater) obj;
        return layoutInflater.getContext() instanceof d ? layoutInflater : layoutInflater.cloneInContext(context);
    }

    private static void a(String str, Context context, Context context2) {
        sResContextCache.put(str + System.identityHashCode(context), new WeakReference<>(context2));
    }

    private static boolean a(String str, Context context, a aVar) {
        Context contextA = a(str, context);
        String name = contextA != null ? contextA.getClass().getName() : "";
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (!Arrays.equals(stackTrace, aVar.aDY)) {
            if (aVar.aDY != null) {
                aVar.clear();
                return false;
            }
            aVar.aDY = stackTrace;
            int i2 = 0;
            int i3 = 0;
            while (i2 < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i2];
                String className = stackTraceElement.getClassName();
                Iterator<String> it = getAutoUnWrapStackList().iterator();
                while (it.hasNext()) {
                    if (className.contains(it.next())) {
                        return true;
                    }
                }
                String methodName = stackTraceElement.getMethodName();
                i2++;
                if (i2 < stackTrace.length && CLAZZ_NAME.equals(className) && "wrapContextIfNeed".equals(methodName)) {
                    StackTraceElement stackTraceElement2 = stackTrace[i2];
                    if (TextUtils.equals(name, stackTraceElement2.getClassName()) && "getBaseContext".equals(stackTraceElement2.getMethodName()) && (i3 = i3 + 1) >= 5) {
                        return true;
                    }
                }
            }
            return false;
        }
        a.g(aVar);
        aVar.aDY = stackTrace;
        return aVar.aDZ >= 5;
    }

    public static LayoutInflater a(LayoutInflater layoutInflater, String str) {
        com.kwad.library.b.a aVarCv = cv(str);
        if (aVarCv == null || !aVarCv.isLoaded()) {
            return layoutInflater;
        }
        Context context = layoutInflater.getContext();
        if (context instanceof d) {
            return layoutInflater;
        }
        Context contextM = m(context, str);
        return contextM instanceof d ? layoutInflater.cloneInContext(contextM) : layoutInflater;
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

    public static Resources a(Resources resources, String str) {
        com.kwad.library.b.a aVarCv = cv(str);
        if (aVarCv != null && aVarCv.isLoaded()) {
            Resources resources2 = aVarCv.getResources();
            Objects.toString(resources2);
            return resources2 != null ? resources2 : resources;
        }
        Objects.toString(aVarCv);
        return resources;
    }

    public static Resources.Theme a(Resources.Theme theme, Resources.Theme theme2, int i2, String str) {
        Resources resources;
        com.kwad.library.b.a aVarCv = cv(str);
        if (aVarCv == null || !aVarCv.isLoaded() || (resources = aVarCv.getResources()) == null) {
            return theme;
        }
        if (theme2 != null) {
            return theme2;
        }
        Resources.Theme themeNewTheme = resources.newTheme();
        themeNewTheme.applyStyle(i2, true);
        return themeNewTheme;
    }

    public static ClassLoader a(ClassLoader classLoader, String str) {
        com.kwad.library.b.a.b bVarDG;
        com.kwad.library.b.a aVarCv = cv(str);
        return (aVarCv == null || !aVarCv.isLoaded() || (bVarDG = aVarCv.DG()) == null) ? classLoader : bVarDG;
    }
}
