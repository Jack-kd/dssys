package com.sigmob.sdk.mraid;

import android.content.Context;
import android.view.View;
import com.sigmob.sdk.base.views.C1295g;

/* loaded from: classes4.dex */
public class v extends C1295g {

    /* renamed from: a, reason: collision with root package name */
    private static final int f38057a = 1;

    /* renamed from: b, reason: collision with root package name */
    private a f38058b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f38059c;

    public interface a {
        void onVisibilityChanged(boolean z2);
    }

    public v(Context context) {
        super(context);
    }

    private void setMraidViewable(boolean z2) {
        if (this.f38059c == z2) {
            return;
        }
        this.f38059c = z2;
        a aVar = this.f38058b;
        if (aVar == null) {
            return;
        }
        aVar.onVisibilityChanged(z2);
    }

    @Override // com.sigmob.sdk.base.views.C1295g, android.webkit.WebView
    public void destroy() {
        super.destroy();
        this.f38058b = null;
    }

    public boolean j() {
        return this.f38059c;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            return;
        }
        setMraidViewable(false);
    }

    public void setVisibilityChangedListener(a aVar) {
        this.f38058b = aVar;
    }
}
