package com.ubix.ssp.ad.e.z;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.z.h;

/* loaded from: classes5.dex */
public class b extends h implements View.OnClickListener {

    /* renamed from: h, reason: collision with root package name */
    private TextView f47861h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f47862i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f47863j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f47864k;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f47865l;

    /* renamed from: m, reason: collision with root package name */
    private ImageView f47866m;

    /* renamed from: n, reason: collision with root package name */
    private a f47867n;

    /* renamed from: o, reason: collision with root package name */
    private int f47868o;

    /* renamed from: p, reason: collision with root package name */
    private int f47869p;

    /* renamed from: q, reason: collision with root package name */
    private int f47870q;

    /* renamed from: r, reason: collision with root package name */
    private int f47871r;

    /* renamed from: s, reason: collision with root package name */
    private int f47872s;

    public class a extends TextView {

        /* renamed from: a, reason: collision with root package name */
        private Paint f47873a;

        /* renamed from: b, reason: collision with root package name */
        private Paint f47874b;

        /* renamed from: c, reason: collision with root package name */
        private RectF f47875c;

        /* renamed from: d, reason: collision with root package name */
        private String f47876d;

        public a(Context context) {
            super(context);
            this.f47873a = new Paint(1);
            this.f47874b = new Paint(1);
            this.f47875c = new RectF();
            this.f47876d = "";
            setWillNotDraw(false);
            this.f47873a.setColor(Color.parseColor("#C3D8FF"));
            this.f47874b.setColor(Color.parseColor("#2E5BFF"));
            this.f47874b.setTextSize(r.d(14.0f));
            this.f47874b.setTextAlign(Paint.Align.CENTER);
        }

        public void a(String str) {
            this.f47876d = str;
            invalidate();
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawRoundRect(this.f47875c, 8.0f, 8.0f, this.f47873a);
            Paint.FontMetrics fontMetrics = this.f47874b.getFontMetrics();
            canvas.drawText(this.f47876d, getWidth() / 2.0f, ((getHeight() / 2) - (fontMetrics.top / 2.0f)) - (fontMetrics.bottom / 2.0f), this.f47874b);
        }
    }

    public b(Context context) {
        super(context);
        this.f47870q = 0;
        this.f47871r = 0;
        this.f47872s = 0;
        this.f47870q = r.a().h(context);
        this.f47871r = r.a().c(context);
        this.f47868o = (int) (Math.min(this.f47870q, r5) * 0.8d);
        this.f47866m = new ImageView(getContext());
        this.f47865l = new ImageView(getContext());
        this.f47861h = new TextView(getContext());
        this.f47862i = new TextView(getContext());
        this.f47863j = new TextView(getContext());
        this.f47867n = new a(getContext());
        this.f47864k = new TextView(getContext());
        this.f47865l.setId(10001);
        this.f47861h.setId(10002);
        this.f47862i.setId(10003);
        this.f47863j.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1);
        this.f47867n.setId(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec);
        this.f47866m.setId(876547);
        this.f47864k.setId(10008);
        setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -1, 14));
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f47866m.setOnClickListener(this);
        setOnClickListener(this);
        d();
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f47868o * 0.814d), -2);
        double d2 = this.f47868o * 0.814d;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) d2, (int) (d2 * 0.164d));
        double d3 = this.f47868o * 0.814d;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) d3, (int) (d3 * 0.135d));
        addView(this.f47866m);
        addView(this.f47865l, layoutParams);
        addView(this.f47861h, layoutParams);
        addView(this.f47862i);
        addView(this.f47863j, layoutParams);
        addView(b(), layoutParams3);
        addView(this.f47867n, layoutParams2);
        addView(this.f47864k, layoutParams);
        this.f47866m.setImageDrawable(q.a("ubix/ic_close.webp"));
        this.f47862i.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -1, 48, Color.parseColor("#e0e0e0"), 1));
        this.f47867n.setOnClickListener(this);
        this.f47866m.setOnClickListener(this);
    }

    private void e() {
        try {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f47868o * 0.814d), -2);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (this.f47868o * 0.814d), -2);
            double d2 = this.f47868o * 0.814d;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) d2, (int) (d2 * 0.164d));
            double d3 = this.f47868o * 0.814d;
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) d3, (int) (d3 * 0.135d));
            ImageView imageView = this.f47865l;
            if (imageView != null) {
                imageView.setLayoutParams(layoutParams);
            }
            TextView textView = this.f47861h;
            if (textView != null) {
                textView.setLayoutParams(layoutParams2);
            }
            TextView textView2 = this.f47863j;
            if (textView2 != null) {
                textView2.setLayoutParams(layoutParams2);
            }
            TextView textView3 = this.f47864k;
            if (textView3 != null) {
                textView3.setLayoutParams(layoutParams2);
            }
            a aVar = this.f47867n;
            if (aVar != null) {
                aVar.setLayoutParams(layoutParams3);
            }
            if (findViewById(920101) != null) {
                findViewById(920101).setLayoutParams(layoutParams4);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(Dialog dialog, h.c cVar, h.b bVar) {
        this.f47967d = dialog;
        this.f47968e = cVar;
        this.f47969f = bVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public int getContentHeight() {
        return this.f47869p;
    }

    public int getContentWidth() {
        return this.f47868o;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 10006) {
            l lVar = this.f47966c;
            if (lVar != null && lVar.b()) {
                this.f47966c.a();
            }
            Dialog dialog = this.f47967d;
            if (dialog != null && dialog.isShowing()) {
                this.f47967d.dismiss();
            }
            h.c cVar = this.f47968e;
            if (cVar != null) {
                cVar.a(this, null);
                return;
            }
            return;
        }
        if (id != 876547) {
            return;
        }
        l lVar2 = this.f47966c;
        if (lVar2 != null && lVar2.b()) {
            this.f47966c.a();
        }
        Dialog dialog2 = this.f47967d;
        if (dialog2 != null && dialog2.isShowing()) {
            this.f47967d.dismiss();
        }
        h.c cVar2 = this.f47968e;
        if (cVar2 != null) {
            cVar2.a(this);
        }
        h.c cVar3 = this.f47968e;
        if (cVar3 != null) {
            cVar3.b(this);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth;
        int bottom;
        int measuredWidth2;
        int top;
        this.f47970g = false;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            int id = childAt.getId();
            if (id != 10006) {
                if (id == 10008) {
                    double d2 = this.f47868o;
                    int measuredWidth3 = ((int) (d2 * 0.093d)) + (((int) ((d2 * 0.814d) - childAt.getMeasuredWidth())) / 2);
                    int bottom2 = findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).getBottom() + r.a(6.0f);
                    double d3 = this.f47868o;
                    childAt.layout(measuredWidth3, bottom2, ((int) (0.093d * d3)) + (((int) ((d3 * 0.814d) + childAt.getMeasuredWidth())) / 2), findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).getBottom() + r.a(6.0f) + childAt.getMeasuredHeight());
                } else if (id == 876547) {
                    double d4 = this.f47868o * 0.96d;
                    double d5 = this.f47965b * 24.0d;
                    double d6 = this.f47869p * 0.04d;
                    childAt.layout((int) (d4 - d5), (int) d6, (int) d4, (int) (d6 + d5));
                } else if (id != 920101) {
                    switch (id) {
                        case 10001:
                            int i7 = this.f47868o;
                            int bottom3 = (int) (findViewById(876547).getBottom() - (this.f47965b * 4.0d));
                            int i8 = this.f47868o;
                            childAt.layout((i7 - (i7 / 5)) / 2, bottom3, (i8 + (i8 / 5)) / 2, (int) ((findViewById(876547).getBottom() - (this.f47965b * 4.0d)) + (this.f47868o / 5)));
                            continue;
                        case 10002:
                            View viewFindViewById = findViewById(10001);
                            int bottom4 = viewFindViewById == null ? findViewById(876547).getBottom() - r.a(15.0f) : viewFindViewById.getBottom();
                            double d7 = this.f47868o;
                            int iA = r.a(14.0f) + bottom4;
                            double d8 = this.f47868o;
                            childAt.layout(((int) (d7 * 0.093d)) + (((int) ((d7 * 0.814d) - childAt.getMeasuredWidth())) / 2), iA, ((int) (0.093d * d8)) + (((int) ((d8 * 0.814d) + childAt.getMeasuredWidth())) / 2), bottom4 + r.a(14.0f) + childAt.getMeasuredHeight());
                            continue;
                        case 10003:
                            measuredWidth = (this.f47868o - childAt.getMeasuredWidth()) / 2;
                            bottom = findViewById(10002).getBottom() + r.a(6.0f);
                            measuredWidth2 = (this.f47868o + childAt.getMeasuredWidth()) / 2;
                            top = findViewById(10002).getBottom() + r.a(6.0f) + childAt.getMeasuredHeight();
                            break;
                        case AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1 /* 10004 */:
                            double d9 = this.f47868o;
                            int bottom5 = findViewById(10003).getBottom() + r.a(6.0f);
                            double d10 = this.f47868o;
                            childAt.layout(((int) (d9 * 0.093d)) + (((int) ((d9 * 0.814d) - childAt.getMeasuredWidth())) / 2), bottom5, ((int) (0.093d * d10)) + (((int) ((d10 * 0.814d) + childAt.getMeasuredWidth())) / 2), findViewById(10003).getBottom() + r.a(6.0f) + childAt.getMeasuredHeight());
                            continue;
                    }
                } else {
                    double d11 = this.f47868o;
                    int measuredWidth4 = ((int) (d11 * 0.093d)) + (((int) ((d11 * 0.814d) - childAt.getMeasuredWidth())) / 2);
                    int measuredHeight = (this.f47869p - childAt.getMeasuredHeight()) - r.a(2.0f);
                    double d12 = this.f47868o;
                    childAt.layout(measuredWidth4, measuredHeight, ((int) (0.093d * d12)) + (((int) ((d12 * 0.814d) + childAt.getMeasuredWidth())) / 2), this.f47869p - r.a(2.0f));
                }
            } else {
                measuredWidth = (int) (this.f47868o * 0.093d);
                double top2 = findViewById(920101).getTop();
                double d13 = this.f47868o;
                bottom = (int) (top2 - ((0.814d * d13) * 0.164d));
                measuredWidth2 = (int) (d13 * 0.907d);
                top = findViewById(920101).getTop();
            }
            childAt.layout(measuredWidth, bottom, measuredWidth2, top);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int iMin = (int) (Math.min(this.f47870q, this.f47871r) * 0.8d);
        if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
            iMin = Math.min(iMin, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME);
        }
        if (iMin != this.f47868o) {
            this.f47869p = 0;
        }
        this.f47868o = iMin;
        int i4 = this.f47869p;
        if (i4 == 0) {
            i4 = (int) (iMin * 1.0d);
            this.f47869p = i4;
        }
        setMeasuredDimension(iMin, i4);
        e();
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void setData(Bundle bundle) {
        String string = bundle.getString("ICON_URL");
        if (TextUtils.isEmpty(string)) {
            int iMin = (int) (Math.min(this.f47870q, this.f47871r) * 0.8d);
            if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                iMin = Math.min(iMin, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME);
            }
            this.f47868o = iMin;
            this.f47869p = Math.max(iMin - (iMin / 4), MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE);
            requestLayout();
            removeView(this.f47865l);
        }
        if (!TextUtils.isEmpty(string)) {
            com.ubix.ssp.ad.e.v.e.b().a(string, this.f47865l, -1, null);
        }
        this.f47861h.setText(bundle.getString("TITLE", "提示"));
        this.f47861h.getPaint().setFakeBoldText(true);
        this.f47861h.setMaxLines(1);
        this.f47861h.setTextColor(-13421773);
        this.f47861h.setGravity(17);
        this.f47861h.setTextSize(TypedValue.applyDimension(0, 20.0f, getContext().getResources().getDisplayMetrics()));
        this.f47863j.setText(bundle.getString("SUB_TITLE", "是否要下载此应用？"));
        this.f47863j.setMaxLines(2);
        this.f47863j.setEllipsize(TextUtils.TruncateAt.END);
        this.f47863j.setTextColor(-13421773);
        this.f47863j.setGravity(1);
        this.f47863j.setTextSize(TypedValue.applyDimension(0, 18.0f, getContext().getResources().getDisplayMetrics()));
        this.f47867n.a(bundle.getString("BUTTON_TEXT", "立即下载"));
        this.f47867n.setTextColor(Color.parseColor("#2E5BFF"));
        this.f47867n.setGravity(17);
        this.f47867n.setTextSize(16.0f);
        this.f47867n.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#E8F1FF"), 8));
    }

    public void setText(String str) {
        try {
            a aVar = this.f47867n;
            if (aVar != null) {
                aVar.a(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(l lVar, h.c cVar, h.b bVar) {
        this.f47966c = lVar;
        this.f47968e = cVar;
        this.f47969f = bVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
