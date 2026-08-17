package com.smartdigimkt.sdk.basead.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.util.AttributeSet;
import com.smartdigimkt.d1.c;
import com.smartdigimkt.d1.d;
import com.smartdigimkt.f1.e;
import com.smartdigimkt.q1.f;
import com.smartdigimkt.q1.g;
import com.smartdigimkt.q1.u;
import com.smartdigimkt.q1.v;
import com.smartdigimkt.q1.y;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class MraidWebView extends MraidBaseWebView {
    public static String TAG = "MraidWebView";

    /* renamed from: o, reason: collision with root package name */
    public g f43162o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f43163p;

    /* renamed from: q, reason: collision with root package name */
    public d f43164q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f43165r;

    public MraidWebView(Context context) {
        super(context);
        this.f43163p = false;
    }

    public static void a(MraidWebView mraidWebView) {
        Object object = mraidWebView.getObject();
        e baseWebViewClient = mraidWebView.getBaseWebViewClient();
        if (object instanceof f) {
            Context context = mraidWebView.getContext();
            if (context instanceof Activity) {
                f fVar = (f) object;
                fVar.getClass();
                fVar.f42682d = new WeakReference((Activity) context);
            }
            f fVar2 = (f) object;
            g gVar = mraidWebView.f43162o;
            if (gVar != null) {
                fVar2.f42679a = gVar;
            } else {
                fVar2.getClass();
            }
        }
        if (baseWebViewClient instanceof y) {
            ((y) baseWebViewClient).f42715c = mraidWebView.f43162o;
        }
    }

    public static void b(MraidWebView mraidWebView) {
        Context context = mraidWebView.getContext();
        d dVar = new d(context);
        mraidWebView.f43164q = dVar;
        dVar.f39880e = new c(dVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
        context.registerReceiver(dVar.f39880e, intentFilter);
        dVar.f39878c = true;
        d dVar2 = mraidWebView.f43164q;
        AudioManager audioManager = dVar2.f39877b;
        if (audioManager != null) {
            audioManager.getStreamMaxVolume(3);
        }
        AudioManager audioManager2 = dVar2.f39877b;
        if (audioManager2 != null) {
            audioManager2.getStreamVolume(3);
        }
        mraidWebView.f43164q.f39879d = new v(mraidWebView);
    }

    public void prepare(Context context, g gVar) {
        this.f43162o = gVar;
        getViewTreeObserver().addOnPreDrawListener(new u(this));
    }

    @Override // com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView, com.smartdigimkt.sdk.basead.express.web.BaseWebView
    public void release() {
        Context context;
        super.release();
        setWebViewListener(null);
        d dVar = this.f43164q;
        if (dVar == null || !dVar.f39878c || (context = dVar.f39876a) == null) {
            return;
        }
        try {
            context.unregisterReceiver(dVar.f39880e);
            dVar.f39879d = null;
            dVar.f39878c = false;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setNeedRegisterVolumeChangeReceiver(boolean z2) {
        this.f43165r = z2;
    }

    public MraidWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43163p = false;
    }

    public MraidWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43163p = false;
    }
}
