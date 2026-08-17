package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.kwad.sdk.core.scene.URLPackage;
import java.util.HashMap;
import org.json.JSONException;

/* loaded from: classes2.dex */
class dd implements ViewTreeObserver.OnWindowFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RelativeLayout f11447a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cz f11448b;

    public dd(cz czVar, RelativeLayout relativeLayout) {
        this.f11448b = czVar;
        this.f11447a = relativeLayout;
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public void onWindowFocusChanged(boolean z2) throws JSONException {
        if (z2) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("novel_activity", (Activity) this.f11448b.f11172i);
            map.put("banner_container", this.f11447a);
            map.put("entry", Integer.valueOf(this.f11448b.f11437G));
            map.put(URLPackage.KEY_CHANNEL_ID, Integer.valueOf(this.f11448b.f11438H));
            map.put("novel_id", this.f11448b.f11439I);
            map.put("isnight", Boolean.valueOf(this.f11448b.x()));
            this.f11448b.a(cz.f11430x, map);
        }
    }
}
