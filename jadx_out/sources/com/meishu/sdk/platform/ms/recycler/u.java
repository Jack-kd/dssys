package com.meishu.sdk.platform.ms.recycler;

import android.view.View;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.ReflectUtil;

/* loaded from: classes4.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public boolean f33088a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f33089b;

    public u(View view) {
        Class<?> cls;
        this.f33088a = false;
        this.f33089b = Boolean.FALSE;
        if (view == null) {
            return;
        }
        try {
            if ("androidx.viewpager2.widget.ViewPager2$RecyclerViewImpl".equals(view.getClass().getName()) && (cls = ReflectUtil.getClass("androidx.viewpager2.widget.ViewPager2")) != null && "androidx.viewpager2.widget.ViewPager2".equals(view.getParent().getClass().getName())) {
                this.f33088a = true;
                this.f33089b = (Boolean) ReflectUtil.getValue(cls, "mUserInputEnabled", view.getParent());
                LogUtil.dev("u", "orientation:" + ((Integer) ReflectUtil.invokeMethod(ReflectUtil.getMethod(cls, "getOrientation", new Class[0]), view.getParent(), new Object[0])) + " mUserInputEnabled:" + this.f33089b);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean a() {
        return Boolean.TRUE.equals(this.f33089b);
    }
}
