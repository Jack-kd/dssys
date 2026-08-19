package com.byazt.ktd;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 19})
/* loaded from: classes.dex */
public final class jl {
    public static final int[] hp = new int[2];

    public static void hp(JSONObject jSONObject, View view, int i2, boolean z2) {
        if (jSONObject == null || view == null) {
            return;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                jSONObject.put("container_class", viewGroup.getClass().getName());
                jSONObject.put("container_width_height", viewGroup.getWidth() + " X " + viewGroup.getHeight());
            }
            int[] iArr = hp;
            int i3 = 0;
            iArr[0] = 0;
            iArr[1] = 0;
            view.getLocationOnScreen(iArr);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(ScrollClickView.DIR_LEFT, iArr[0]);
            jSONObject2.put("top", iArr[1]);
            jSONObject2.put(ScrollClickView.DIR_RIGHT, iArr[0] + view.getWidth());
            jSONObject2.put("bottom", iArr[1] + view.getHeight());
            jSONObject.put("screen_rect", jSONObject2.toString());
            if (!z2) {
                jSONObject.put("view_tree_path", " ");
                jSONObject.put("view_tree_path_hash", " ");
                return;
            }
            StringBuilder sb = new StringBuilder();
            View view2 = view;
            while (view2 != null) {
                int i4 = i3 + 1;
                if (i3 >= i2) {
                    break;
                }
                if (sb.length() > 0) {
                    sb.append(" > ");
                }
                sb.append(view2.getClass().getName());
                Object parent2 = view2.getParent();
                view2 = parent2 instanceof View ? (View) parent2 : null;
                i3 = i4;
            }
            if (sb.length() > 0) {
                jSONObject.put("view_tree_path", sb.toString());
                jSONObject.put("view_tree_path_hash", com.byazt.ymw.a.l(sb.toString()));
            } else {
                jSONObject.put("view_tree_path", " ");
                jSONObject.put("view_tree_path_hash", " ");
            }
            q.hp(jSONObject, view, i2);
        } catch (Throwable unused) {
        }
    }
}
