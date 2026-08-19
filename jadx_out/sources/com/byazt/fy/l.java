package com.byazt.fy;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.Field;

@com.byazt.kj.hp(hp = {0, 1, 60, 34})
/* loaded from: classes2.dex */
public class l {
    public static Activity hp(View view) {
        if (view == null) {
            return null;
        }
        Activity activityHp = hp(view.getContext());
        if (activityHp != null) {
            return activityHp;
        }
        Object parent = view.getParent();
        if ((parent instanceof View) && (activityHp = hp((View) parent)) != null) {
            return activityHp;
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return activityHp;
        }
        Context context = rootView.getContext();
        Activity activityHp2 = hp(context);
        return activityHp2 != null ? activityHp2 : l(context);
    }

    private static Activity l(Context context) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (context != null && context.getClass().getName().contains("DecorContext")) {
            try {
                Field declaredField = context.getClass().getDeclaredField("mActivity");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(context);
                if (obj instanceof Activity) {
                    return (Activity) obj;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static Activity hp(Context context) {
        Context baseContext;
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper) || (baseContext = ((ContextWrapper) context).getBaseContext()) == null || baseContext == context) {
            return null;
        }
        return hp(baseContext);
    }
}
