package com.ubix.ssp.ad.c.c;

import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.b0.g;
import com.ubix.ssp.ad.e.f;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class c extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    protected int f45697a;

    /* renamed from: b, reason: collision with root package name */
    protected int f45698b;

    /* renamed from: c, reason: collision with root package name */
    protected int f45699c;

    /* renamed from: d, reason: collision with root package name */
    private double f45700d;

    /* renamed from: e, reason: collision with root package name */
    protected HashMap<String, String> f45701e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f45702f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f45703g;

    /* renamed from: h, reason: collision with root package name */
    private com.ubix.ssp.ad.g.k.a f45704h;

    /* renamed from: i, reason: collision with root package name */
    protected AnimatorSet f45705i;

    /* renamed from: j, reason: collision with root package name */
    protected boolean f45706j;

    public c(Context context, Bundle bundle) {
        super(context);
        this.f45697a = 4;
        this.f45700d = 3.0d;
        this.f45701e = new HashMap<>();
        this.f45702f = true;
        this.f45703g = false;
        this.f45705i = new AnimatorSet();
        this.f45706j = false;
        int i2 = bundle.getInt("AD_WIDTH");
        int i3 = bundle.getInt("AD_HEIGHT");
        boolean z2 = bundle.getBoolean("IS_DOWNLOAD", false);
        int i4 = bundle.getInt("VIDEO_RENDER_TYPE", 0);
        double dA = r.a().a(context);
        this.f45700d = dA;
        this.f45698b = (int) (i2 * dA);
        this.f45699c = (int) (i3 * dA);
        this.f45697a = (int) (this.f45697a * dA);
        this.f45701e = (HashMap) bundle.getSerializable("CLICK_MAP");
        this.f45706j = bundle.getBoolean("IS_UNNAMED");
        a(bundle.getInt("TEMPLATE_ID"), z2, i4);
    }

    public static c a(Context context, Bundle bundle) {
        int i2 = bundle.getInt("TEMPLATE_ID");
        if (i2 == 4003) {
            return new a(context, bundle);
        }
        if (i2 == 4004) {
            return new b(context, bundle);
        }
        if (i2 != 99001) {
            return null;
        }
        return new d(context, bundle);
    }

    public abstract boolean a(Bundle bundle);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 100007) {
            com.ubix.ssp.ad.g.k.a aVar = this.f45704h;
            if (aVar != null) {
                aVar.b(0, view, this.f45701e);
                return;
            }
            return;
        }
        com.ubix.ssp.ad.g.k.a aVar2 = this.f45704h;
        if (aVar2 != null) {
            aVar2.e(0);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f45698b <= 0) {
            this.f45698b = (int) (this.f45700d * 320.0d);
        }
        if (this.f45699c <= 0) {
            this.f45699c = (int) (this.f45698b / 6.4d);
        }
        setMeasuredDimension(this.f45698b, this.f45699c);
    }

    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f45704h = (com.ubix.ssp.ad.g.k.a) bVar;
    }

    private void a(int i2, boolean z2, int i3) {
        g gVar;
        removeAllViews();
        ImageView imageView = new ImageView(getContext());
        TextView textView = new TextView(getContext());
        View imageView2 = new ImageView(getContext());
        View imageView3 = new ImageView(getContext());
        TextView textView2 = new TextView(getContext());
        TextView textView3 = new TextView(getContext());
        TextView textView4 = new TextView(getContext());
        if (i2 != 99001) {
            if (i2 == 4004) {
                gVar = new g(getContext(), i3 == 0 ? com.ubix.ssp.ad.d.b.f45794a.isUseTextureView() ? 2 : 1 : i3);
                gVar.setId(100006);
                gVar.setMute(true);
                gVar.setVideoImageDisplayType(4);
                gVar.setOnClickListener(this);
            } else {
                gVar = null;
            }
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setId(100010);
            textView3.setId(100002);
            imageView3.setId(100007);
            imageView2.setId(100008);
            textView.setId(100009);
            textView2.setId(100004);
            textView.setTextSize(7.0f);
            textView.setTextColor(-1);
            textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
            textView.setPadding(0, 0, 4, 0);
            textView2.setTextSize(10.0f);
            textView2.setPadding(4, 10, 4, 10);
            textView2.setTextColor(-1);
            textView2.setGravity(17);
            textView3.setTextColor(-16777216);
            textView3.setGravity(17);
            textView3.setMaxLines(2);
            textView3.setEllipsize(TextUtils.TruncateAt.END);
            imageView.setOnClickListener(this);
            if (gVar != null) {
                addView(gVar);
            }
            addView(imageView);
            addView(textView3);
            addView(imageView2);
            addView(textView2);
            addView(textView);
            addView(imageView3);
        } else {
            imageView.setId(500101);
            textView2.setId(500104);
            textView3.setId(500102);
            textView4.setId(500103);
            textView3.setGravity(16);
            textView4.setGravity(16);
            textView2.setGravity(17);
            textView3.setTextColor(-1);
            textView4.setTextColor(-1);
            textView2.setSingleLine();
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView2.setEllipsize(truncateAt);
            textView3.setTextSize(TypedValue.applyDimension(0, 15.0f, getContext().getResources().getDisplayMetrics()));
            textView4.setTextSize(TypedValue.applyDimension(0, 14.0f, getContext().getResources().getDisplayMetrics()));
            textView2.setTextSize(TypedValue.applyDimension(0, 13.0f, getContext().getResources().getDisplayMetrics()));
            textView3.setSingleLine();
            textView4.setSingleLine();
            textView3.setEllipsize(truncateAt);
            textView4.setEllipsize(truncateAt);
            textView2.setTextColor(-1);
            textView2.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -12542209, 6));
            textView2.setZ(this.f45697a);
            setZ(this.f45697a);
            addView(imageView);
            int i4 = this.f45698b;
            int i5 = this.f45699c;
            int i6 = this.f45697a;
            addView(textView3, new RelativeLayout.LayoutParams((i4 - (i5 * 2)) - (i6 * 2), (i5 / 2) - (i6 * 3)));
            int i7 = this.f45698b;
            int i8 = this.f45699c;
            int i9 = this.f45697a;
            addView(textView4, new RelativeLayout.LayoutParams((i7 - (i8 * 2)) - (i9 * 2), (i8 / 2) - (i9 * 3)));
            int i10 = this.f45699c;
            addView(textView2, new RelativeLayout.LayoutParams(i10, i10 - (this.f45697a * 16)));
        }
        if (z2) {
            addView(f.a(getContext(), 2), new RelativeLayout.LayoutParams(-2, -2));
        }
        setOnClickListener(this);
        imageView.setOnClickListener(this);
        imageView3.setOnClickListener(this);
        textView3.setOnClickListener(this);
        textView4.setOnClickListener(this);
        textView2.setOnClickListener(this);
    }
}
