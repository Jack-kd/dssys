package com.sigmob.sdk.base.common;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.IntentActions;
import java.lang.ref.WeakReference;
import java.util.Map;

/* renamed from: com.sigmob.sdk.base.common.j, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1262j {

    /* renamed from: a, reason: collision with root package name */
    protected Context f35956a;

    /* renamed from: b, reason: collision with root package name */
    protected String f35957b;

    /* renamed from: c, reason: collision with root package name */
    protected RelativeLayout f35958c;

    /* renamed from: d, reason: collision with root package name */
    protected InterfaceC1264k f35959d;

    /* renamed from: e, reason: collision with root package name */
    protected C1256g f35960e;

    /* renamed from: f, reason: collision with root package name */
    private ImageView f35961f;

    /* renamed from: g, reason: collision with root package name */
    private RelativeLayout f35962g;

    /* renamed from: h, reason: collision with root package name */
    private final WeakReference<Activity> f35963h;

    /* renamed from: i, reason: collision with root package name */
    private a f35964i;

    /* renamed from: com.sigmob.sdk.base.common.j$a */
    public interface a {
        void onAdClicked();
    }

    public AbstractC1262j(Activity activity, String str, InterfaceC1264k interfaceC1264k) {
        this.f35956a = activity.getApplicationContext();
        this.f35963h = new WeakReference<>(activity);
        this.f35957b = str;
        this.f35959d = interfaceC1264k;
        this.f35958c = new RelativeLayout(this.f35956a);
    }

    private void a() {
        ViewGroup viewGroup;
        View childAt;
        Activity activityC = com.sigmob.sdk.b.c();
        ViewGroup viewGroupM = m();
        if (activityC == null || viewGroupM == null || (viewGroup = (ViewGroup) activityC.getWindow().findViewById(R.id.content)) == null || (childAt = viewGroup.getChildAt(0)) == null) {
            return;
        }
        com.sigmob.sdk.base.blurkit.a.a(this.f35956a);
        Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(childAt, 25);
        if (this.f35961f == null) {
            this.f35961f = new ImageView(this.f35956a);
        }
        this.f35961f.setImageBitmap(bitmapA);
    }

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public void b() {
        WindowManager.LayoutParams attributes = n().getWindow().getAttributes();
        attributes.dimAmount = 0.0f;
        n().getWindow().setAttributes(attributes);
    }

    public void c() {
        try {
            a();
            ImageView imageView = this.f35961f;
            if (imageView == null) {
                return;
            }
            this.f35958c.addView(imageView, 0, new ViewGroup.LayoutParams(-1, -1));
        } catch (Throwable unused) {
        }
    }

    public void d() {
        ImageView imageView = this.f35961f;
        if (imageView == null) {
            return;
        }
        try {
            com.sigmob.sdk.base.utils.w.a(imageView);
            this.f35961f = null;
        } catch (Throwable unused) {
        }
    }

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public void h() {
        this.f35959d = null;
        Activity activityN = n();
        if (com.sigmob.sdk.base.utils.v.b(activityN)) {
            activityN.getWindow().getDecorView().setOnApplyWindowInsetsListener(null);
        }
        if (com.sigmob.sdk.base.utils.v.b(this.f35958c)) {
            this.f35958c.removeAllViews();
        }
    }

    public abstract void i();

    public boolean j() {
        return true;
    }

    public InterfaceC1264k k() {
        return this.f35959d;
    }

    public Context l() {
        return this.f35956a;
    }

    public ViewGroup m() {
        RelativeLayout relativeLayout = this.f35962g;
        return relativeLayout == null ? this.f35958c : relativeLayout;
    }

    public Activity n() {
        Activity activityC = com.sigmob.sdk.base.utils.w.c(this.f35958c);
        if (activityC != null) {
            return activityC;
        }
        WeakReference<Activity> weakReference = this.f35963h;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public abstract void o();

    public void a(int i2, int i3, Intent intent) {
    }

    public void a(Context context, int i2, Bundle bundle) {
        C1256g c1256g;
        if (bundle == null) {
            return;
        }
        try {
            if (bundle.getBoolean(com.sigmob.sdk.base.n.f36462y, false)) {
                int i3 = context.getResources().getDisplayMetrics().widthPixels;
                int i4 = context.getResources().getDisplayMetrics().heightPixels;
                if (i2 == 6) {
                    int iMin = (Math.min(i3, i4) * 85) / 100;
                    c1256g = new C1256g((iMin * 16) / 9, iMin);
                } else {
                    int iMin2 = (Math.min(i3, i4) * 85) / 100;
                    c1256g = new C1256g(iMin2, (iMin2 * 16) / 9);
                }
                this.f35960e = c1256g;
                this.f35962g = new RelativeLayout(context);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f35960e.a(), this.f35960e.b());
                layoutParams.addRule(13);
                this.f35962g.setLayoutParams(layoutParams);
                this.f35958c.removeAllViews();
                this.f35958c.addView(this.f35962g);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        Activity activityN = n();
        if (activityN == null) {
            return;
        }
        activityN.getWindow().getDecorView().setOnApplyWindowInsetsListener(onApplyWindowInsetsListener);
    }

    public void a(a aVar) {
        this.f35964i = aVar;
    }

    public void a(String str) {
        String str2 = this.f35957b;
        if (str2 == null) {
            SigmobLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
            return;
        }
        BaseBroadcastReceiver.a(this.f35956a, str2, str);
        if (com.sigmob.sdk.base.utils.v.b(this.f35964i) && com.sigmob.sdk.base.utils.s.b(str) && str.equals(IntentActions.ACTION_INTERSTITIAL_CLICK)) {
            this.f35964i.onAdClicked();
        }
    }

    public void a(String str, int i2) {
        String str2 = this.f35957b;
        if (str2 == null) {
            SigmobLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
        } else {
            BaseBroadcastReceiver.a(this.f35956a, str2, str, i2);
        }
    }

    public void a(String str, Map<String, Object> map) {
        String str2 = this.f35957b;
        if (str2 == null) {
            SigmobLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
        } else {
            BaseBroadcastReceiver.a(this.f35956a, str2, map, str, 0);
        }
    }

    public boolean a(Dialog dialog) {
        if (dialog == null) {
            return false;
        }
        return dialog.isShowing();
    }
}
