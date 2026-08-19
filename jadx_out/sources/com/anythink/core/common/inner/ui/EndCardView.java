package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.ui.BaseEndCardView;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.g;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class EndCardView extends BaseEndCardView {

    /* renamed from: e, reason: collision with root package name */
    private int f4987e;

    /* renamed from: f, reason: collision with root package name */
    private int f4988f;

    /* renamed from: g, reason: collision with root package name */
    private ImageView f4989g;

    /* renamed from: h, reason: collision with root package name */
    private ImageView f4990h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f4991i;

    /* renamed from: j, reason: collision with root package name */
    private Bitmap f4992j;

    /* renamed from: k, reason: collision with root package name */
    private final View.OnClickListener f4993k;

    /* renamed from: com.anythink.core.common.inner.ui.EndCardView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f4995a;

        public AnonymousClass2(w wVar) {
            this.f4995a = wVar;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.f4995a.n())) {
                EndCardView.this.f4989g.setImageBitmap(bitmap);
                g.a(EndCardView.this.getContext(), bitmap, new g.a() { // from class: com.anythink.core.common.inner.ui.EndCardView.2.1
                    @Override // com.anythink.core.common.v.g.a
                    public final void a() {
                    }

                    @Override // com.anythink.core.common.v.g.a
                    public final void a(Bitmap bitmap2) {
                        EndCardView.this.f4992j = bitmap2;
                        EndCardView.this.setBackgroundDrawable(new BitmapDrawable(EndCardView.this.f4992j));
                    }
                });
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.EndCardView$3, reason: invalid class name */
    public class AnonymousClass3 implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f4998a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f4999b;

        public AnonymousClass3(String str, int i2) {
            this.f4998a = str;
            this.f4999b = i2;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.f4998a)) {
                int i2 = this.f4999b;
                ViewGroup.LayoutParams layoutParams = EndCardView.this.f4990h.getLayoutParams();
                layoutParams.width = (int) (i2 * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                layoutParams.height = i2;
                EndCardView.this.f4990h.setLayoutParams(layoutParams);
                EndCardView.this.f4990h.setScaleType(ImageView.ScaleType.FIT_XY);
                EndCardView.this.f4990h.setImageBitmap(bitmap);
            }
        }
    }

    public EndCardView(Context context, w wVar, x xVar) {
        super(context, wVar, xVar);
        this.f4993k = new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.EndCardView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                y yVar = EndCardView.this.f4837d;
                if (yVar != null) {
                    if (yVar.q() == 0) {
                        TextView unused = EndCardView.this.f4991i;
                    } else {
                        if (EndCardView.this.f4991i == null || view != EndCardView.this.f4991i) {
                            return;
                        }
                        EndCardView.this.f4991i.getVisibility();
                    }
                }
            }
        };
    }

    @Override // com.anythink.core.common.inner.ui.BaseEndCardView
    public final void a() {
    }

    public View getLearnMoreButton() {
        return this.f4991i;
    }

    public void init(boolean z2, boolean z3, BaseEndCardView.a aVar) {
        setId(p.a(getContext(), "myoffer_end_card_id", "id"));
        this.mListener = aVar;
        this.f4989g = new RoundImageView(getContext());
        addView(this.f4989g, new RelativeLayout.LayoutParams(-1, -1));
        if (z2) {
            w wVar = this.f4835b;
            this.f4990h = new RoundImageView(getContext());
            int iA = p.a(getContext(), 12.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iA);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            addView(this.f4990h, layoutParams);
            String strO = wVar.o();
            if (!TextUtils.isEmpty(strO)) {
                ViewGroup.LayoutParams layoutParams2 = this.f4990h.getLayoutParams();
                b.a(getContext()).a(new e(1, strO), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strO, iA));
            }
        }
        if (z3) {
            ScanningAnimButton scanningAnimButton = new ScanningAnimButton(getContext());
            this.f4991i = scanningAnimButton;
            scanningAnimButton.setText(p.a(getContext(), "myoffer_cta_learn_more", "string"));
            this.f4991i.setTextColor(Color.parseColor("#ffffffff"));
            this.f4991i.setTextSize(14.0f);
            this.f4991i.setGravity(17);
            this.f4991i.setBackgroundResource(p.a(getContext(), "myoffer_splash_bg_rectangle_btn_cta_asseblem", "drawable"));
            if (!this.f4835b.E()) {
                this.f4991i.setOnClickListener(this.f4993k);
            }
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, p.a(getContext(), 48.0f));
            layoutParams3.addRule(12);
            layoutParams3.bottomMargin = p.a(getContext(), 96.0f);
            layoutParams3.leftMargin = p.a(getContext(), 24.0f);
            layoutParams3.rightMargin = p.a(getContext(), 24.0f);
            addView(this.f4991i, layoutParams3);
        }
        if (this.f4835b.E()) {
            return;
        }
        setOnClickListener(this.f4993k);
    }

    public void load() {
        w wVar = this.f4835b;
        try {
            b.a(getContext()).a(new e(1, wVar.n()), this.f4987e, this.f4988f, new AnonymousClass2(wVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setSize(int i2, int i3) {
        this.f4987e = i2;
        this.f4988f = i3;
    }

    private void b(w wVar) {
        this.f4990h = new RoundImageView(getContext());
        int iA = p.a(getContext(), 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iA);
        layoutParams.addRule(11);
        layoutParams.addRule(12);
        addView(this.f4990h, layoutParams);
        String strO = wVar.o();
        if (TextUtils.isEmpty(strO)) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = this.f4990h.getLayoutParams();
        b.a(getContext()).a(new e(1, strO), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strO, iA));
    }

    private void c() {
        ScanningAnimButton scanningAnimButton = new ScanningAnimButton(getContext());
        this.f4991i = scanningAnimButton;
        scanningAnimButton.setText(p.a(getContext(), "myoffer_cta_learn_more", "string"));
        this.f4991i.setTextColor(Color.parseColor("#ffffffff"));
        this.f4991i.setTextSize(14.0f);
        this.f4991i.setGravity(17);
        this.f4991i.setBackgroundResource(p.a(getContext(), "myoffer_splash_bg_rectangle_btn_cta_asseblem", "drawable"));
        if (!this.f4835b.E()) {
            this.f4991i.setOnClickListener(this.f4993k);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, p.a(getContext(), 48.0f));
        layoutParams.addRule(12);
        layoutParams.bottomMargin = p.a(getContext(), 96.0f);
        layoutParams.leftMargin = p.a(getContext(), 24.0f);
        layoutParams.rightMargin = p.a(getContext(), 24.0f);
        addView(this.f4991i, layoutParams);
    }

    private void a(w wVar) {
        try {
            b.a(getContext()).a(new e(1, wVar.n()), this.f4987e, this.f4988f, new AnonymousClass2(wVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseEndCardView
    public final Drawable b() {
        Bitmap bitmap = this.f4992j;
        if (bitmap != null && !bitmap.isRecycled()) {
            return new BitmapDrawable(this.f4992j);
        }
        return super.b();
    }
}
