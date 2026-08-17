package com.ubix.ssp.ad.e.z;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class h extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    protected int f47964a;

    /* renamed from: b, reason: collision with root package name */
    protected double f47965b;

    /* renamed from: c, reason: collision with root package name */
    protected l f47966c;

    /* renamed from: d, reason: collision with root package name */
    protected Dialog f47967d;

    /* renamed from: e, reason: collision with root package name */
    protected c f47968e;

    /* renamed from: f, reason: collision with root package name */
    protected b f47969f;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f47970g;

    public class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f47971a;

        public a(Activity activity) {
            this.f47971a = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f47971a == activity) {
                l lVar = h.this.f47966c;
                if (lVar != null && lVar.b()) {
                    h.this.f47966c.a();
                }
                Dialog dialog = h.this.f47967d;
                if (dialog != null && dialog.isShowing()) {
                    h.this.f47967d.dismiss();
                }
                ((Application) this.f47971a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public interface b {
        void a();

        void b();

        void c();
    }

    public interface c {
        void a(h hVar);

        void a(h hVar, HashMap<String, String> map);

        void b(h hVar);

        void c(h hVar);
    }

    public h(Context context) {
        super(context);
        this.f47964a = 0;
        this.f47965b = 3.0d;
        this.f47970g = false;
        this.f47965b = r.a().a(getContext());
        float f2 = getContext().getApplicationContext().getResources().getConfiguration().fontScale;
        f2 = f2 < 1.0f ? 1.0f : f2;
        this.f47964a = Math.min((int) (((r.a().g(context) / this.f47965b) / f2) / 13.0d), (int) (16.0f / f2));
        try {
            a((Activity) context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a() {
        this.f47970g = true;
        try {
            l lVar = this.f47966c;
            if (lVar != null) {
                lVar.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            Dialog dialog = this.f47967d;
            if (dialog != null) {
                dialog.dismiss();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        c cVar = this.f47968e;
        if (cVar != null) {
            cVar.b(this);
        }
    }

    public abstract void a(Dialog dialog, c cVar, b bVar);

    public abstract void a(l lVar, c cVar, b bVar);

    public TextView b() {
        TextView textViewA = com.ubix.ssp.ad.e.f.a(getContext());
        textViewA.setTextColor(-8158333);
        textViewA.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        return textViewA;
    }

    public boolean c() {
        return this.f47970g;
    }

    public abstract int getPopupType();

    public int getType() {
        return getPopupType();
    }

    public abstract void setData(Bundle bundle);

    private void a(Activity activity) {
        ((Application) activity.getApplicationContext()).registerActivityLifecycleCallbacks(new a(activity));
    }
}
