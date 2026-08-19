package com.smartdigimkt.sdk.basead.ui.specialnote;

import android.animation.ValueAnimator;
import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.smartdigimkt.a4.c;
import com.smartdigimkt.a4.f;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.k2.z;
import com.smartdigimkt.q2.a;
import com.smartdigimkt.q2.b;
import com.smartdigimkt.q2.e;
import com.smartdigimkt.q2.g;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.h0;

/* loaded from: classes5.dex */
public abstract class BaseSpecialNoteView extends LinearLayout {
    public static final long SEPECIAL_NOTE_INTERVAL_TIME = 500;

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f44013o = 0;

    /* renamed from: a, reason: collision with root package name */
    public long f44014a;

    /* renamed from: b, reason: collision with root package name */
    public long f44015b;

    /* renamed from: c, reason: collision with root package name */
    public long f44016c;

    /* renamed from: d, reason: collision with root package name */
    public long f44017d;

    /* renamed from: e, reason: collision with root package name */
    public View f44018e;

    /* renamed from: f, reason: collision with root package name */
    public g f44019f;

    /* renamed from: g, reason: collision with root package name */
    public a f44020g;

    /* renamed from: h, reason: collision with root package name */
    public c f44021h;

    /* renamed from: i, reason: collision with root package name */
    public f f44022i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f44023j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f44024k;

    /* renamed from: l, reason: collision with root package name */
    public String f44025l;

    /* renamed from: m, reason: collision with root package name */
    public int f44026m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f44027n;

    public BaseSpecialNoteView(Context context) {
        super(context);
        this.f44025l = "";
        this.f44027n = false;
    }

    public void a() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.2f, 1.0f);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.addUpdateListener(new e(this));
        valueAnimatorOfFloat.addListener(new com.smartdigimkt.q2.f(this, valueAnimatorOfFloat));
        valueAnimatorOfFloat.start();
    }

    public final void b() {
        com.smartdigimkt.k2.e eVar;
        if (this.f44015b > 0) {
            if (getVisibility() == 0) {
                setVisibility(4);
                return;
            }
            return;
        }
        long j2 = this.f44017d;
        if (j2 > 0) {
            this.f44023j.setText(Html.fromHtml(String.format(this.f44025l, Integer.valueOf(((int) (j2 / 1000)) + 1))));
            if (getVisibility() != 0) {
                this.f44027n = true;
                a();
                return;
            }
            return;
        }
        if (this.f44018e == null) {
            return;
        }
        int i2 = this.f44026m;
        g gVar = this.f44019f;
        if (gVar != null && (eVar = ((z) gVar).f41364a.f41284d.f41311h) != null) {
            eVar.a(i2, 4);
        }
        release();
    }

    public void c() {
        this.f44025l = getContext().getString(k.a(SDKContext.getInstance().d(), "myoffer_special_note_delay_click", "string"));
    }

    public abstract void d();

    public abstract boolean e();

    public boolean hasBeenShow() {
        return this.f44027n;
    }

    public void initSetting(View view, int i2, g gVar, long j2, long j3) {
        this.f44026m = i2;
        c();
        d();
        setVisibility(4);
        this.f44021h = h0.a().f45303a;
        this.f44022i = h0.a().f45304b;
        this.f44018e = view;
        this.f44019f = gVar;
        this.f44014a = j2;
        this.f44016c = j3;
        this.f44015b = j2;
        this.f44017d = j3;
        this.f44020g = new a(this);
        setOnClickListener(new b());
        TextView textView = this.f44024k;
        if (textView != null) {
            textView.setOnClickListener(new com.smartdigimkt.q2.c(this));
        }
        TextView textView2 = this.f44023j;
        if (textView2 != null) {
            textView2.setText(Html.fromHtml(String.format(this.f44025l, Integer.valueOf(((int) (this.f44017d / 1000)) + 1))));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        resume();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        pause();
    }

    public void pause() {
        setVisibility(4);
        a aVar = this.f44020g;
        if (aVar != null) {
            removeCallbacks(aVar);
        }
        View view = this.f44018e;
        if (view != null) {
            c cVar = this.f44021h;
            cVar.f39317b.remove(view);
            cVar.f39318c.remove(view);
            cVar.f39316a.f39333d.remove(view);
        }
    }

    public void release() {
        if (this.f44019f != null) {
            pause();
            this.f44019f = null;
            this.f44018e = null;
        }
    }

    public void reset(int i2, long j2, long j3) {
        this.f44026m = i2;
        this.f44014a = j2;
        this.f44016c = j3;
        this.f44015b = j2;
        this.f44017d = j3;
        setVisibility(4);
        this.f44027n = false;
    }

    public void resume() {
        View view = this.f44018e;
        if (view != null && view.getParent() != null) {
            Object parent = this.f44018e.getParent();
            if ((parent instanceof View) && this.f44022i.a((View) parent, this.f44018e, 50, 0)) {
                b();
            }
        }
        if (this.f44019f == null) {
            return;
        }
        postDelayed(this.f44020g, 500L);
    }

    public BaseSpecialNoteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44025l = "";
        this.f44027n = false;
    }
}
