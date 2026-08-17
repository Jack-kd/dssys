package com.smartdigimkt.x2;

import android.view.View;
import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.RoundCornerRelativeLayout;
import org.json.JSONException;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f45093a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f45094b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f45095c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f45096d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f45097e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f45098f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f45099g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f45100h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f45101i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ f f45102j;

    public e(f fVar, Object obj, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f45102j = fVar;
        this.f45093a = obj;
        this.f45094b = i2;
        this.f45095c = i3;
        this.f45096d = i4;
        this.f45097e = i5;
        this.f45098f = i6;
        this.f45099g = i7;
        this.f45100h = i8;
        this.f45101i = i9;
    }

    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        View view = this.f45102j.f45104b.f39648o;
        if (view == null) {
            com.smartdigimkt.w2.a.a(this.f45093a, "videoComponent empty");
            return;
        }
        view.setX(this.f45094b);
        view.setY(this.f45095c);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = this.f45096d;
            layoutParams.height = this.f45097e;
            view.setLayoutParams(layoutParams);
        }
        if (view instanceof RoundCornerRelativeLayout) {
            ((RoundCornerRelativeLayout) view).setRadius(this.f45098f, this.f45099g, this.f45100h, this.f45101i);
        }
        view.requestLayout();
        com.smartdigimkt.w2.a.b(this.f45093a, "");
    }
}
