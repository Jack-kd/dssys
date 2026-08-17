package com.meishu.sdk.meishu_ad.lifecycle;

import android.app.Activity;
import android.app.FragmentManager;
import androidx.fragment.app.FragmentActivity;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public String f32296a = c.class.getName();

    /* renamed from: b, reason: collision with root package name */
    public Activity f32297b;

    public void a(d dVar) {
        try {
            Activity activity = this.f32297b;
            if (activity == null) {
                LogUtil.e(this.f32296a, "setLifecycleListener: ", new Exception("View Context非Activity"));
                return;
            }
            if (!(activity instanceof FragmentActivity)) {
                int i2 = a.f32292b;
                FragmentManager fragmentManager = activity.getFragmentManager();
                a aVar = (a) fragmentManager.findFragmentByTag("LifecycleFragment");
                if (aVar == null && !activity.isFinishing()) {
                    aVar = new a();
                    fragmentManager.beginTransaction().add(aVar, "LifecycleFragment").commitAllowingStateLoss();
                }
                if (aVar != null) {
                    aVar.f32293a = dVar;
                    return;
                }
                return;
            }
            FragmentActivity fragmentActivity = (FragmentActivity) activity;
            int i3 = b.f32294b;
            androidx.fragment.app.FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
            b bVar = (b) supportFragmentManager.findFragmentByTag("LifecycleFragment_V4");
            if (bVar == null && !fragmentActivity.isFinishing()) {
                bVar = new b();
                supportFragmentManager.beginTransaction().add(bVar, "LifecycleFragment_V4").commitAllowingStateLoss();
            }
            if (bVar != null) {
                bVar.f32295a = dVar;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
