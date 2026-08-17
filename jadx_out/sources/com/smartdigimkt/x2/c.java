package com.smartdigimkt.x2;

import android.view.View;
import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.RoundCornerRelativeLayout;
import org.json.JSONException;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f45080a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f45081b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f45082c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f45083d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f45084e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f45085f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f45086g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f45087h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f45088i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f45089j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ f f45090k;

    public c(f fVar, Object obj, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f45090k = fVar;
        this.f45080a = obj;
        this.f45081b = i2;
        this.f45082c = i3;
        this.f45083d = i4;
        this.f45084e = i5;
        this.f45085f = i6;
        this.f45086g = i7;
        this.f45087h = i8;
        this.f45088i = i9;
        this.f45089j = i10;
    }

    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        com.smartdigimkt.c2.d dVar = this.f45090k.f45104b;
        View view = dVar.f39648o;
        if (view == null) {
            view = dVar.f39641h;
        }
        if (view == null) {
            com.smartdigimkt.w2.a.a(this.f45080a, "playerViewContainer empty");
            return;
        }
        view.setX(this.f45081b);
        view.setY(this.f45082c);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = this.f45083d;
            layoutParams.height = this.f45084e;
            view.setLayoutParams(layoutParams);
        }
        this.f45090k.f45104b.a(this.f45085f == 1, null, null);
        if (view instanceof RoundCornerRelativeLayout) {
            ((RoundCornerRelativeLayout) view).setRadius(this.f45086g, this.f45087h, this.f45088i, this.f45089j);
        }
        view.requestLayout();
        com.smartdigimkt.w2.a.b(this.f45080a, "");
        a aVar = this.f45090k.f45103a;
        if (aVar != null) {
            aVar.a();
        }
    }
}
