package com.meishu.sdk.meishu_ad.splash;

import android.content.Context;
import android.view.View;
import com.meishu.sdk.R;
import com.meishu.sdk.core.utils.m;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static int f32529a;

    public static int a(Context context) {
        if (context == null) {
            return 12;
        }
        try {
            if (f32529a <= 0) {
                f32529a = m.a(context);
            }
            return (int) ((f32529a * 1.8d) / 100.0d);
        } catch (Exception unused) {
            return (int) (context.getResources().getDisplayMetrics().density * 12.0f);
        }
    }

    public static int b(Context context) {
        if (context == null) {
            return 12;
        }
        try {
            return ((int) (context.getResources().getDisplayMetrics().widthPixels * 3.6d)) / 100;
        } catch (Exception unused) {
            return (int) (context.getResources().getDisplayMetrics().density * 12.0f);
        }
    }

    public static int c(Context context) {
        if (context == null) {
            return 12;
        }
        try {
            return (context.getResources().getDisplayMetrics().widthPixels * 10) / 100;
        } catch (Exception unused) {
            return (int) (context.getResources().getDisplayMetrics().density * 24.0f);
        }
    }

    public static int a(MeishuSplashRootView meishuSplashRootView) {
        View viewFindViewById;
        if (meishuSplashRootView != null) {
            try {
                viewFindViewById = meishuSplashRootView.findViewById(R.id.ms_skipView);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            viewFindViewById = null;
        }
        int iB = (viewFindViewById == null || viewFindViewById.getMeasuredWidth() <= 0) ? 0 : (int) m.b(meishuSplashRootView.getContext(), viewFindViewById.getMeasuredWidth());
        if (iB <= 0) {
            return 36;
        }
        return iB;
    }
}
