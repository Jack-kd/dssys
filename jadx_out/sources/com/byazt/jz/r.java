package com.byazt.jz;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import java.util.HashSet;

@com.byazt.kj.hp(hp = {0, 1, 40, 572})
/* loaded from: classes.dex */
public class r {
    public static int hp = -1;
    public static final HashSet<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public static final HashSet<String> f21938l;

    static {
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("HUAWEI C8812");
        hashSet.add("HUAWEI C8812E");
        hashSet.add("HUAWEI C8825D");
        hashSet.add("HUAWEI U8825D");
        hashSet.add("HUAWEI C8950D");
        hashSet.add("HUAWEI U8950D");
        f21938l = hashSet;
        HashSet<String> hashSet2 = new HashSet<>();
        hashSet2.add("ZTE V955");
        hashSet2.add("ZTE N881E");
        hashSet2.add("ZTE N881F");
        hashSet2.add("ZTE N880G");
        hashSet2.add("ZTE N880F");
        hashSet2.add("ZTE V889F");
        jx = hashSet2;
    }

    public static void hp(final Context context, final com.byazt.ikh.j jVar) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.r.1
            @Override // java.lang.Runnable
            public void run() {
                r.l(context, jVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(com.byazt.ikh.j jVar) {
        if (jVar == null) {
            return;
        }
        jVar.setWebChromeClient(null);
        jVar.setWebViewClient(null);
        View view = jVar.getView();
        ViewParent parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(view);
        }
        jVar.removeAllViews();
        try {
            jVar.destroy();
        } catch (Throwable unused) {
        }
    }

    public static void hp(final com.byazt.ikh.j jVar) {
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.jz.r.2
            @Override // java.lang.Runnable
            public void run() {
                r.jx(jVar);
            }
        });
    }

    public static void l(Context context, com.byazt.ikh.j jVar) {
        if (context == null || jVar == null || !(context instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) context;
        if (activity.isFinishing()) {
            try {
                jVar.loadUrl(com.anythink.core.common.res.d.f7446a);
                if (hp > 0) {
                    View rootView = jVar.getView().getRootView();
                    if (rootView instanceof ViewGroup) {
                        View childAt = ((ViewGroup) rootView).getChildAt(0);
                        childAt.setDrawingCacheEnabled(true);
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
                        childAt.setDrawingCacheEnabled(false);
                        ImageView imageView = new ImageView(activity);
                        imageView.setImageBitmap(bitmapCreateBitmap);
                        imageView.setVisibility(0);
                        ((ViewGroup) rootView).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }
}
