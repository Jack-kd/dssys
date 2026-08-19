package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.lance.ApkBean;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class si {

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ pi f16241a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f16242b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ mi f16243c;

        public a(pi piVar, View view, mi miVar) {
            this.f16241a = piVar;
            this.f16242b = view;
            this.f16243c = miVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16241a.a(this.f16242b, this.f16243c)) {
                this.f16242b.setTag(R.string.beizi_native_tag, new WeakReference(this.f16241a));
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ pi f16244a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f16245b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f16246c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ mi f16247d;

        public b(pi piVar, View view, List list, mi miVar) {
            this.f16244a = piVar;
            this.f16245b = view;
            this.f16246c = list;
            this.f16247d = miVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16244a.a(this.f16245b, this.f16246c, this.f16247d)) {
                this.f16245b.setTag(R.string.beizi_native_tag, new WeakReference(this.f16244a));
            }
        }
    }

    public class c implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f16248a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f16249b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f16250c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f16251d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f16252e;

        public c(Context context, String str, String str2, String str3, String str4) {
            this.f16248a = context;
            this.f16249b = str;
            this.f16250c = str2;
            this.f16251d = str3;
            this.f16252e = str4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent(this.f16248a, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", this.f16249b);
                intent.putExtra("privacy_content_key", this.f16250c);
                intent.putExtra("permission_content_key", this.f16251d);
                intent.putExtra("intro_content_key", this.f16252e);
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                this.f16248a.startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public static void a(pi piVar, View view, mi miVar) {
        if (!a(piVar) || view == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new a(piVar, view, miVar));
    }

    public static void a(pi piVar, View view, List list, mi miVar) {
        if (!a(piVar) || view == null || list == null || list.isEmpty()) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new b(piVar, view, list, miVar));
    }

    public static void a(pi piVar, View view, String str, String str2, String str3, String str4, int i2) {
        try {
            view.getContext();
            View rootView = view.getRootView();
            if (rootView != null) {
                rootView.getContext();
            }
        } catch (Exception unused) {
        }
    }

    public static boolean a(pi piVar) {
        return (piVar == null || piVar.f()) ? false : true;
    }

    public static FrameLayout a(View view, pi piVar) {
        try {
            if (view.getTag(R.drawable.beizi_button_close_background) != null && (view.getTag(R.drawable.beizi_button_close_background) instanceof FrameLayout)) {
                eq.a((FrameLayout) view.getTag(R.drawable.beizi_button_close_background));
                return (FrameLayout) view.getTag(R.drawable.beizi_button_close_background);
            }
            view.getContext();
            eq.a(view);
            FrameLayout frameLayout = new FrameLayout(view.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1, 17));
            LinearLayout linearLayout = new LinearLayout(view.getContext());
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(view.getContext(), piVar.n());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new FrameLayout.LayoutParams(-2, -2, 17));
            View viewA = eq.a(view.getContext(), piVar.a());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new FrameLayout.LayoutParams(-2, -2, 17));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = eq.a(view.getContext(), 20.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
            view.setTag(R.drawable.beizi_button_close_background, frameLayout);
            return frameLayout;
        } catch (Exception unused) {
            return null;
        }
    }

    public static FrameLayout a(Context context, Bitmap bitmap, pi piVar) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(0);
        imageView.setImageBitmap(bitmap);
        return a(imageView, piVar);
    }

    public static View a(Context context, pi piVar) {
        if (context != null && piVar != null) {
            try {
                ApkBean apkBeanP = piVar.p();
                if (apkBeanP == null) {
                    return null;
                }
                String apkName = apkBeanP.getApkName();
                String appDeveloper = apkBeanP.getAppDeveloper();
                String appVersion = apkBeanP.getAppVersion();
                String appPermissionsUrl = apkBeanP.getAppPermissionsUrl();
                String appPermissionsDesc = apkBeanP.getAppPermissionsDesc();
                if (!TextUtils.isEmpty(appPermissionsUrl)) {
                    appPermissionsDesc = appPermissionsUrl;
                }
                String appPrivacyUrl = apkBeanP.getAppPrivacyUrl();
                String appintro = apkBeanP.getAppintro();
                TextView textView = new TextView(context);
                textView.setText(Html.fromHtml("应用名称：" + apkName + " | 开发者：" + appDeveloper + " | 应用版本：" + appVersion + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
                textView.setTextSize(2, 6.0f);
                textView.setTextColor(Color.parseColor("#999999"));
                textView.setShadowLayer(1.0f, 1.0f, 1.0f, Color.parseColor("#333333"));
                textView.setPadding(10, 10, 10, 10);
                textView.setOnClickListener(new c(context, apkName, appPrivacyUrl, appPermissionsDesc, appintro));
                return textView;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
