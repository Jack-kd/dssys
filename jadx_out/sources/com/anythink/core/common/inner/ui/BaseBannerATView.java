package com.anythink.core.common.inner.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.inner.e.e;

/* loaded from: classes2.dex */
public abstract class BaseBannerATView extends BaseATView {
    public final String TAG;

    /* renamed from: a, reason: collision with root package name */
    protected com.anythink.core.common.inner.e.a f4830a;

    /* renamed from: b, reason: collision with root package name */
    protected CloseImageView f4831b;

    /* renamed from: c, reason: collision with root package name */
    protected com.anythink.core.common.inner.ui.e.a f4832c;

    public BaseBannerATView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a(e eVar) {
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void b() {
        CloseImageView closeImageView = this.f4831b;
        if (closeImageView != null) {
            closeImageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.anythink.core.common.inner.ui.BaseBannerATView.1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    com.anythink.core.common.inner.e.a aVar;
                    if (motionEvent.getAction() != 0 || (aVar = BaseBannerATView.this.f4830a) == null) {
                        return true;
                    }
                    aVar.b();
                    return true;
                }
            });
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void e() {
        if (this.f4830a != null) {
            new e();
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a(boolean z2) {
    }

    public BaseBannerATView(Context context, x xVar, w wVar, com.anythink.core.common.inner.e.a aVar) {
        super(context, xVar, wVar);
        this.TAG = getClass().getSimpleName();
        this.f4830a = aVar;
    }
}
