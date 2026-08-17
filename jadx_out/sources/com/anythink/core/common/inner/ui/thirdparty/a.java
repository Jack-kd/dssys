package com.anythink.core.common.inner.ui.thirdparty;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.TextView;
import com.anythink.core.common.v.a.f;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private Timer f5270a;

    /* renamed from: b, reason: collision with root package name */
    private long f5271b;

    /* renamed from: c, reason: collision with root package name */
    private InterfaceC0059a f5272c;

    /* renamed from: d, reason: collision with root package name */
    private View f5273d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f5274e;

    /* renamed from: f, reason: collision with root package name */
    private f.b f5275f = new f.b(1);

    /* renamed from: g, reason: collision with root package name */
    private String f5276g;

    /* renamed from: com.anythink.core.common.inner.ui.thirdparty.a$a, reason: collision with other inner class name */
    public interface InterfaceC0059a {
        void a(int i2);
    }

    public a(Context context, View view, long j2, InterfaceC0059a interfaceC0059a) {
        this.f5276g = "";
        this.f5273d = view;
        TextView textView = new TextView(context);
        textView.setHeight(a(context, 24.0f));
        textView.setGravity(17);
        textView.setPadding(a(context, 14.0f), 0, a(context, 11.0f), 0);
        textView.setTextColor(Color.parseColor("#FFFFFF"));
        textView.setTextSize(1, 12.0f);
        int color = Color.parseColor("#99000000");
        float fA = a(context, 20.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(fA);
        textView.setBackground(gradientDrawable);
        this.f5274e = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.thirdparty.a.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                a.a(a.this, 2);
            }
        });
        this.f5272c = interfaceC0059a;
        this.f5271b = j2;
        this.f5276g = Locale.getDefault().getLanguage().equals("zh") ? "跳过" : "Skip";
    }

    public static /* synthetic */ long b(a aVar, long j2) {
        long j3 = aVar.f5271b - j2;
        aVar.f5271b = j3;
        return j3;
    }

    private static boolean d() {
        return Locale.getDefault().getLanguage().equals("zh");
    }

    private static TextView a(Context context) {
        TextView textView = new TextView(context);
        textView.setHeight(a(context, 24.0f));
        textView.setGravity(17);
        textView.setPadding(a(context, 14.0f), 0, a(context, 11.0f), 0);
        textView.setTextColor(Color.parseColor("#FFFFFF"));
        textView.setTextSize(1, 12.0f);
        int color = Color.parseColor("#99000000");
        float fA = a(context, 20.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(fA);
        textView.setBackground(gradientDrawable);
        return textView;
    }

    private void c() {
        Timer timer = this.f5270a;
        if (timer != null) {
            timer.cancel();
            this.f5270a = null;
        }
    }

    public final void b() {
        if (this.f5270a == null) {
            Timer timer = new Timer();
            this.f5270a = timer;
            timer.schedule(new TimerTask() { // from class: com.anythink.core.common.inner.ui.thirdparty.a.2

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ long f5278a = 1000;

                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    a.this.f5273d.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.thirdparty.a.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (a.this.f5273d.getParent() != null && (a.this.f5273d.getParent() instanceof View) && a.this.f5275f.a((View) a.this.f5273d.getParent(), a.this.f5273d, 80, 0)) {
                                if (a.this.f5271b <= 0) {
                                    a.a(a.this, 3);
                                } else {
                                    a aVar = a.this;
                                    a.a(aVar, aVar.f5271b);
                                }
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                a.b(a.this, anonymousClass2.f5278a);
                            }
                        }
                    });
                }
            }, 1000L, 1000L);
            this.f5273d.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.thirdparty.a.3

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ long f5281a = 1000;

                @Override // java.lang.Runnable
                public final void run() {
                    a aVar = a.this;
                    a.a(aVar, aVar.f5271b);
                    a.b(a.this, this.f5281a);
                }
            });
        }
    }

    public final TextView a() {
        return this.f5274e;
    }

    private void a(long j2) {
        int i2 = (int) (j2 / 1000);
        TextView textView = this.f5274e;
        if (textView != null) {
            textView.setText(i2 + "s | " + this.f5276g);
        }
    }

    private void a(int i2) {
        InterfaceC0059a interfaceC0059a = this.f5272c;
        if (interfaceC0059a != null) {
            interfaceC0059a.a(i2);
        }
        TextView textView = this.f5274e;
        if (textView != null) {
            textView.setVisibility(8);
        }
        Timer timer = this.f5270a;
        if (timer != null) {
            timer.cancel();
            this.f5270a = null;
        }
    }

    private static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static /* synthetic */ void a(a aVar, int i2) {
        InterfaceC0059a interfaceC0059a = aVar.f5272c;
        if (interfaceC0059a != null) {
            interfaceC0059a.a(i2);
        }
        TextView textView = aVar.f5274e;
        if (textView != null) {
            textView.setVisibility(8);
        }
        Timer timer = aVar.f5270a;
        if (timer != null) {
            timer.cancel();
            aVar.f5270a = null;
        }
    }

    public static /* synthetic */ void a(a aVar, long j2) {
        int i2 = (int) (j2 / 1000);
        TextView textView = aVar.f5274e;
        if (textView != null) {
            textView.setText(i2 + "s | " + aVar.f5276g);
        }
    }
}
