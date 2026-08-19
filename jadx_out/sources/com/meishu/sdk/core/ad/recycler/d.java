package com.meishu.sdk.core.ad.recycler;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.heytap.msp.mobad.api.params.NativeAdvanceContainer;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.ReflectUtil;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static ArrayList<Class<? extends ViewGroup>> f31504a;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        ArrayList<Class<? extends ViewGroup>> arrayList = new ArrayList<>();
        f31504a = arrayList;
        arrayList.add(TouchAdContainer.class);
        if (AdSdk.getGDTVersionName() != null) {
            f31504a.add(NativeAdContainer.class);
        }
        if (AdSdk.getOPPOVersionName() != null) {
            f31504a.add(NativeAdvanceContainer.class);
        }
        try {
            Class<?> cls = ReflectUtil.getClass("com.zj.zjsdk.api.v2.nativead.ZJNativeAdContainer");
            if (cls != null) {
                f31504a.add(cls);
            }
        } catch (Throwable unused) {
        }
    }

    public static ViewGroup a(ViewGroup viewGroup) {
        ViewGroup viewGroupA;
        Object tag = viewGroup.getTag(R.id.ms_ad_container_tag_recycler);
        if (tag != null && tag.equals("meishu_ad_container_tag_recycler")) {
            return viewGroup;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof ViewGroup) && (viewGroupA = a((ViewGroup) childAt)) != null) {
                return viewGroupA;
            }
        }
        return null;
    }

    public static void b(ViewGroup viewGroup) {
        ViewGroup viewGroup2 = null;
        ViewGroup viewGroup3 = viewGroup;
        while (viewGroup3 != null) {
            ViewParent parent = viewGroup3.getParent();
            if (!(parent instanceof ViewGroup)) {
                break;
            }
            viewGroup3 = (ViewGroup) parent;
            ArrayList<Class<? extends ViewGroup>> arrayList = f31504a;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    Class<? extends ViewGroup> cls = arrayList.get(i2);
                    i2++;
                    if (cls.isInstance(viewGroup3)) {
                        viewGroup2 = viewGroup3;
                        break;
                    }
                }
            }
        }
        if (viewGroup2 != null) {
            ViewParent parent2 = viewGroup2.getParent();
            if (parent2 instanceof ViewGroup) {
                ViewGroup viewGroup4 = (ViewGroup) parent2;
                int iIndexOfChild = viewGroup4.indexOfChild(viewGroup2);
                if (viewGroup.getParent() instanceof ViewGroup) {
                    ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
                }
                viewGroup4.removeView(viewGroup2);
                viewGroup4.addView(viewGroup, iIndexOfChild, viewGroup2.getLayoutParams());
            }
        }
    }

    public static ViewGroup[] a(ViewGroup viewGroup, Class cls, Class cls2) {
        ViewGroup[] viewGroupArr = {null, null};
        ViewGroup viewGroupA = a(viewGroup);
        if (viewGroupA == null) {
            viewGroupArr[0] = viewGroup;
            viewGroup.setTag(R.id.ms_ad_container_tag_recycler, "meishu_ad_container_tag_recycler");
        } else {
            viewGroupArr[0] = viewGroupA;
            Object tag = viewGroupA.getTag(R.id.ms_ad_container_class_recycler);
            if (tag != null && tag.equals(cls)) {
                ViewGroup viewGroup2 = viewGroupA;
                int i2 = 1;
                while (true) {
                    if (viewGroup2 == null || i2 >= 20) {
                        break;
                    }
                    i2++;
                    if (cls2.isInstance(viewGroup2)) {
                        viewGroupArr[1] = viewGroup2;
                        break;
                    }
                    if (viewGroup2.getParent() instanceof ViewGroup) {
                        viewGroup2 = (ViewGroup) viewGroup2.getParent();
                    }
                }
            }
            if (viewGroupArr[1] == null) {
                b(viewGroupA);
            }
        }
        viewGroupArr[0].setTag(R.id.ms_ad_container_class_recycler, cls);
        return viewGroupArr;
    }
}
