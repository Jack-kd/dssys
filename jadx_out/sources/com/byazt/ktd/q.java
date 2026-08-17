package com.byazt.ktd;

import android.view.View;
import android.widget.AbsListView;
import androidx.recyclerview.widget.RecyclerView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.lang.reflect.Method;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 150})
/* loaded from: classes.dex */
public final class q {
    public static volatile Class<?> hp;

    /* renamed from: j, reason: collision with root package name */
    public static boolean f22167j;
    public static Method jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile Class<?> f22168l;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22169w;

    public static void hp(JSONObject jSONObject, View view, int i2) {
        if (jSONObject == null || view == null) {
            return;
        }
        int i3 = 0;
        View view2 = view;
        while (view2 != null) {
            int i4 = i3 + 1;
            if (i3 >= i2) {
                return;
            }
            try {
                String name = view2.getClass().getName();
                if (hp(view2)) {
                    jSONObject.put("list_component_type", name);
                    jSONObject.put("adapter_position", hp(view2, l(view2, view)));
                    return;
                } else if (view2 instanceof AbsListView) {
                    jSONObject.put("list_component_type", name);
                    jSONObject.put("adapter_position", ((AbsListView) view2).getPositionForView(view));
                    return;
                } else {
                    Object parent = view2.getParent();
                    view2 = parent instanceof View ? (View) parent : null;
                    i3 = i4;
                }
            } catch (Throwable unused) {
                return;
            }
        }
    }

    private static View l(Object obj, View view) {
        if (obj != null && view != null) {
            View view2 = view;
            while (view2 != null) {
                Object parent = view2.getParent();
                if (parent == obj) {
                    return view2;
                }
                view2 = parent instanceof View ? (View) parent : null;
            }
        }
        return view;
    }

    private static boolean hp(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Class<?> cls = hp;
            Class<?> cls2 = RecyclerView.class;
            if (cls == null) {
                try {
                    int i2 = RecyclerView.HORIZONTAL;
                    try {
                        hp = cls2;
                    } catch (Throwable unused) {
                    }
                    cls = cls2;
                } catch (Throwable unused2) {
                }
            }
            if (cls != null && cls.isInstance(obj)) {
                return true;
            }
            Class<?> cls3 = f22168l;
            if (cls3 == null) {
                try {
                    int i3 = RecyclerView.HORIZONTAL;
                    try {
                        f22168l = cls2;
                    } catch (Throwable unused3) {
                    }
                } catch (Throwable unused4) {
                }
            } else {
                cls2 = cls3;
            }
            if (cls2 != null && cls2.isInstance(obj)) {
                return true;
            }
            obj.getClass().getMethod("getChildAdapterPosition", View.class);
            return true;
        } catch (Throwable unused5) {
            return false;
        }
    }

    private static Integer hp(Object obj, View view) {
        if (!f22167j && !f22169w) {
            try {
                try {
                    jx = obj.getClass().getMethod("getChildAdapterPosition", View.class);
                } catch (NoSuchMethodException unused) {
                    f22169w = true;
                }
            } finally {
                f22167j = true;
            }
        }
        Method method = jx;
        if (method != null && !f22169w) {
            try {
                Object objInvoke = method.invoke(obj, view);
                if (objInvoke instanceof Integer) {
                    return (Integer) objInvoke;
                }
            } catch (Throwable unused2) {
                f22169w = true;
                jx = null;
            }
        }
        return null;
    }
}
