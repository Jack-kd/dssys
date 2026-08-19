package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.inner.e.e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseATView extends RelativeLayout {

    /* renamed from: e, reason: collision with root package name */
    String f4823e;

    /* renamed from: f, reason: collision with root package name */
    protected x f4824f;

    /* renamed from: g, reason: collision with root package name */
    protected w f4825g;

    /* renamed from: h, reason: collision with root package name */
    volatile boolean f4826h;

    /* renamed from: i, reason: collision with root package name */
    String f4827i;

    /* renamed from: j, reason: collision with root package name */
    protected List<View> f4828j;

    /* renamed from: k, reason: collision with root package name */
    protected ScanningAnimButton f4829k;

    public BaseATView(Context context, x xVar, w wVar, String str) {
        super(context);
        this.f4823e = "BaseATView";
        this.f4826h = false;
        this.f4824f = xVar;
        this.f4825g = wVar;
        this.f4827i = str;
        this.f4828j = new ArrayList();
        d();
        a();
    }

    private synchronized void b() {
        if (this.f4826h) {
            return;
        }
        this.f4826h = true;
        e();
    }

    public abstract void a();

    public abstract void a(e eVar);

    public abstract void a(boolean z2);

    public void d() {
    }

    public void destroy() {
    }

    public abstract void e();

    public BaseATView(Context context, x xVar, w wVar) {
        this(context, xVar, wVar, "");
    }

    public BaseATView(Context context) {
        super(context);
        this.f4823e = "BaseATView";
        this.f4826h = false;
    }
}
