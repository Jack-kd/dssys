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
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.z.h;

/* loaded from: classes5.dex */
public class e extends h implements View.OnClickListener {

    /* renamed from: h, reason: collision with root package name */
    private TextView f47903h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f47904i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f47905j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f47906k;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f47907l;

    /* renamed from: m, reason: collision with root package name */
    private ImageView f47908m;

    /* renamed from: n, reason: collision with root package name */
    private a f47909n;

    /* renamed from: o, reason: collision with root package name */
    private int f47910o;

    /* renamed from: p, reason: collision with root package name */
    private int f47911p;

    /* renamed from: q, reason: collision with root package name */
    private int f47912q;

    /* renamed from: r, reason: collision with root package name */
    private int f47913r;

    /* renamed from: s, reason: collision with root package name */
    private int f47914s;

    public class a extends TextView {

        /* renamed from: a, reason: collision with root package name */
        private float f47915a;

        /* renamed from: b, reason: collision with root package name */
        private Paint f47916b;

        /* renamed from: c, reason: collision with root package name */
        private Paint f47917c;

        /* renamed from: d, reason: collision with root package name */
        private RectF f47918d;

        /* renamed from: e, reason: collision with root package name */
        private String f47919e;

        public a(Context context) {
            super(context);
            this.f47916b = new Paint(1);
            this.f47917c = new Paint(1);
            this.f47918d = new RectF();
            this.f47919e = "";
            setWillNotDraw(false);
            this.f47916b.setColor(Color.parseColor("#C3D8FF"));
            this.f47917c.setColor(Color.parseColor("#2E5BFF"));
            this.f47917c.setTextSize(r.d(14.0f));
            this.f47917c.setTextAlign(Paint.Align.CENTER);
        }

        public void a(float f2) {
            this.f47915a = f2;
            this.f47918d.set(0.0f, 0.0f, (int) (getWidth() * f2), getHeight());
            this.f47919e = "下载中" + ((int) (this.f47915a * 100.0f)) + "%";
            invalidate();
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawRoundRect(this.f47918d, 8.0f, 8.0f, this.f47916b);
            Paint.FontMetrics fontMetrics = this.f47917c.getFontMetrics();
            canvas.drawText(this.f47919e, getWidth() / 2.0f, ((getHeight() / 2) - (fontMetrics.top / 2.0f)) - (fontMetrics.bottom / 2.0f), this.f47917c);
        }

        public void a(String str) {
            this.f47919e = str;
            invalidate();
        }
    }

    public e(Context context) {
        super(context);
        this.f47912q = 0;
        this.f47913r = 0;
        this.f47914s = 0;
        this.f47912q = r.a().h(context);
        this.f47913r = r.a().c(context);
        this.f47910o = (int) (Math.min(this.f47912q, r5) * 0.8d);
        this.f47908m = new ImageView(getContext());
        this.f47907l = new ImageView(getContext());
        this.f47903h = new TextView(getContext());
        this.f47904i = new TextView(getContext());
        this.f47905j = new TextView(getContext());
        this.f47909n = new a(getContext());
        this.f47906k = new TextView(getContext());
        this.f47907l.setId(10001);
        this.f47903h.setId(10002);
        this.f47904i.setId(10003);
        this.f47905j.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1);
        this.f47909n.setId(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec);
        this.f47908m.setId(876547);
        this.f47906k.setId(10008);
        setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -1, 14));
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f47908m.setOnClickListener(this);
        setOnClickListener(this);
        d();
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f47910o * 0.814d), -2);
        double d2 = this.f47910o * 0.814d;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) d2, (int) (d2 * 0.164d));
        double d3 = this.f47910o * 0.814d;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) d3, (int) (d3 * 0.135d));
        addView(this.f47908m);
        addView(this.f47907l, layoutParams);
        addView(this.f47903h, layoutParams);
        addView(this.f47904i);
        addView(this.f47905j, layoutParams);
        addView(b(), layoutParams3);
        addView(this.f47909n, layoutParams2);
        addView(this.f47906k, layoutParams);
        this.f47908m.setImageDrawable(q.a("ubix/ic_close.webp"));
        this.f47904i.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -1, 48, Color.parseColor("#e0e0e0"), 1));
        this.f47909n.setOnClickListener(this);
        this.f47908m.setOnClickListener(this);
    }

    private void e() {
        try {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f47910o * 0.814d), -2);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (this.f47910o * 0.814d), -2);
            double d2 = this.f47910o * 0.814d;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) d2, (int) (d2 * 0.164d));
            double d3 = this.f47910o * 0.814d;
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) d3, (int) (d3 * 0.135d));
            ImageView imageView = this.f47907l;
            if (imageView != null) {
                imageView.setLayoutParams(layoutParams);
            }
            TextView textView = this.f47903h;
            if (textView != null) {
                textView.setLayoutParams(layoutParams2);
            }
            TextView textView2 = this.f47905j;
            if (textView2 != null) {
                textView2.setLayoutParams(layoutParams2);
            }
            TextView textView3 = this.f47906k;
            if (textView3 != null) {
                textView3.setLayoutParams(layoutParams2);
            }
            a aVar = this.f47909n;
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

    public void a(int i2) {
        try {
            a aVar = this.f47909n;
            if (aVar != null) {
                aVar.a(i2 / 100.0f);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public int getContentHeight() {
        return this.f47911p;
    }

    public int getContentWidth() {
        return this.f47910o;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 10006) {
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
        l lVar = this.f47966c;
        if (lVar != null && lVar.b()) {
            this.f47966c.a();
        }
        Dialog dialog = this.f47967d;
        if (dialog != null && dialog.isShowing()) {
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
        this.f47970g = false;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            int id = childAt.getId();
            if (id == 10006) {
                double top = findViewById(920101).getTop() - r.a(14.0f);
                double d2 = this.f47910o;
                childAt.layout((int) (this.f47910o * 0.093d), (int) (top - ((0.814d * d2) * 0.164d)), (int) (d2 * 0.907d), findViewById(920101).getTop() - r.a(14.0f));
            } else if (id == 10008) {
                double d3 = this.f47910o;
                int measuredWidth = ((int) (d3 * 0.093d)) + (((int) ((d3 * 0.814d) - childAt.getMeasuredWidth())) / 2);
                int bottom = findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).getBottom() + r.a(6.0f);
                double d4 = this.f47910o;
                childAt.layout(measuredWidth, bottom, ((int) (0.093d * d4)) + (((int) ((d4 * 0.814d) + childAt.getMeasuredWidth())) / 2), findViewById(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).getBottom() + r.a(6.0f) + childAt.getMeasuredHeight());
            } else if (id == 876547) {
                double d5 = this.f47910o * 0.96d;
                double d6 = this.f47965b * 24.0d;
                double d7 = this.f47911p * 0.04d;
                childAt.layout((int) (d5 - d6), (int) d7, (int) d5, (int) (d7 + d6));
            } else if (id != 920101) {
                switch (id) {
                    case 10001:
                        int i7 = this.f47910o;
                        int bottom2 = (int) (findViewById(876547).getBottom() - (this.f47965b * 4.0d));
                        int i8 = this.f47910o;
                        childAt.layout((i7 - (i7 / 5)) / 2, bottom2, (i8 + (i8 / 5)) / 2, (int) ((findViewById(876547).getBottom() - (this.f47965b * 4.0d)) + (this.f47910o / 5)));
                        break;
                    case 10002:
                        View viewFindViewById = findViewById(10001);
                        int bottom3 = viewFindViewById == null ? findViewById(876547).getBottom() - r.a(15.0f) : viewFindViewById.getBottom();
                        double d8 = this.f47910o;
                        int measuredWidth2 = ((int) (d8 * 0.093d)) + (((int) ((d8 * 0.814d) - childAt.getMeasuredWidth())) / 2);
                        int iA = r.a(14.0f) + bottom3;
                        double d9 = this.f47910o;
                        childAt.layout(measuredWidth2, iA, ((int) (0.093d * d9)) + (((int) ((d9 * 0.814d) + childAt.getMeasuredWidth())) / 2), bottom3 + r.a(14.0f) + childAt.getMeasuredHeight());
                        break;
                    case 10003:
                        childAt.layout((this.f47910o - childAt.getMeasuredWidth()) / 2, findViewById(10002).getBottom() + r.a(6.0f), (this.f47910o + childAt.getMeasuredWidth()) / 2, findViewById(10002).getBottom() + r.a(6.0f) + childAt.getMeasuredHeight());
                        break;
                    case AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1 /* 10004 */:
                        double d10 = this.f47910o;
                        int bottom4 = findViewById(10003).getBottom() + r.a(6.0f);
                        double d11 = this.f47910o;
                        childAt.layout(((int) (d10 * 0.093d)) + (((int) ((d10 * 0.814d) - childAt.getMeasuredWidth())) / 2), bottom4, ((int) (0.093d * d11)) + (((int) ((d11 * 0.814d) + childAt.getMeasuredWidth())) / 2), findViewById(10003).getBottom() + r.a(6.0f) + childAt.getMeasuredHeight());
                        break;
                }
            } else {
                double d12 = this.f47910o;
                int measuredWidth3 = ((int) (d12 * 0.093d)) + (((int) ((d12 * 0.814d) - childAt.getMeasuredWidth())) / 2);
                int measuredHeight = (this.f47911p - childAt.getMeasuredHeight()) - r.a(2.0f);
                double d13 = this.f47910o;
                childAt.layout(measuredWidth3, measuredHeight, ((int) (0.093d * d13)) + (((int) ((d13 * 0.814d) + childAt.getMeasuredWidth())) / 2), this.f47911p - r.a(2.0f));
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int iMin = (int) (Math.min(this.f47912q, this.f47913r) * 0.8d);
        if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
            iMin = Math.min(iMin, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME);
        }
        if (iMin != this.f47910o) {
            this.f47911p = 0;
        }
        this.f47910o = iMin;
        int i4 = this.f47911p;
        if (i4 == 0) {
            i4 = (int) (iMin * 0.94d);
            this.f47911p = i4;
        }
        setMeasuredDimension(iMin, i4);
        e();
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void setData(Bundle bundle) {
        String str;
        TextView textView;
        if (bundle.getBoolean("IS_DOWNLOAD", false)) {
            String string = bundle.getString("ICON_URL");
            String string2 = bundle.getString("DOWNLOAD_APP_NAME");
            String string3 = bundle.getString("DOWNLOAD_APP_VERSION");
            String string4 = bundle.getString("DOWNLOAD_APP_PUBLISHER");
            String string5 = bundle.getString("DOWNLOAD_APP_ICP_NUMBER");
            String string6 = bundle.getString("DOWNLOAD_APP_SUITABLE_AGE");
            long j2 = bundle.getLong("DOWNLOAD_APP_SIZE");
            if (TextUtils.isEmpty(string)) {
                int iMin = (int) (Math.min(this.f47912q, this.f47913r) * 0.8d);
                if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                    iMin = Math.min(iMin, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME);
                }
                this.f47910o = iMin;
                this.f47911p = Math.max(iMin - (iMin / 4), MediaPlayer.MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE);
                requestLayout();
                removeView(this.f47907l);
            }
            com.ubix.ssp.ad.e.v.e.b().a(string, this.f47907l, -1, null);
            this.f47903h.setText(string2);
            this.f47904i.setText(string3);
            this.f47905j.setText(string4);
            String str2 = "";
            if (TextUtils.isEmpty(string5)) {
                str = "";
            } else {
                str = "备案号:" + string5;
            }
            String str3 = TextUtils.isEmpty(string5) ? "" : "丨";
            if (!TextUtils.isEmpty(string6)) {
                str2 = "适用年龄:" + string6;
            }
            this.f47906k.setText(new com.ubix.ssp.ad.e.f(String.format("%s%s%s", str, str3, str2)).a());
            this.f47909n.a("立即下载");
            try {
                textView = (TextView) findViewById(920101);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (textView == null) {
                return;
            }
            if (j2 > 0) {
                k.a(j2);
            }
            textView.setText(new com.ubix.ssp.ad.e.f("权限丨隐私丨功能介绍").a(this.f47969f));
            textView.setMaxLines(1);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTextColor(-8158333);
            textView.setGravity(17);
            textView.setTextSize(TypedValue.applyDimension(0, 10.0f, getContext().getResources().getDisplayMetrics()));
            this.f47903h.getPaint().setFakeBoldText(true);
            this.f47903h.setMaxLines(1);
            this.f47903h.setTextColor(-13421773);
            this.f47903h.setGravity(17);
            this.f47903h.setTextSize(TypedValue.applyDimension(0, 16.0f, getContext().getResources().getDisplayMetrics()));
            this.f47904i.setTextSize(12.0f);
            this.f47904i.setMaxLines(1);
            this.f47904i.setTextColor(-8158333);
            this.f47904i.setGravity(17);
            this.f47904i.setTextSize(TypedValue.applyDimension(0, 12.0f, getContext().getResources().getDisplayMetrics()));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f47904i.getLayoutParams();
            layoutParams.width = (int) (((int) this.f47904i.getPaint().measureText(string3)) + (this.f47965b * 19.0d));
            this.f47904i.setLayoutParams(layoutParams);
            this.f47905j.setMaxLines(2);
            TextView textView2 = this.f47905j;
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView2.setEllipsize(truncateAt);
            this.f47905j.setTextColor(-8158333);
            this.f47905j.setGravity(1);
            this.f47905j.setTextSize(12.0f);
            this.f47906k.setMaxLines(1);
            this.f47906k.setEllipsize(truncateAt);
            this.f47906k.setTextColor(-8158333);
            this.f47906k.setGravity(17);
            this.f47906k.setTextSize(TypedValue.applyDimension(0, 10.0f, getContext().getResources().getDisplayMetrics()));
            this.f47909n.setTextColor(Color.parseColor("#2E5BFF"));
            this.f47909n.setGravity(17);
            this.f47909n.setTextSize(14.0f);
            this.f47909n.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#E8F1FF"), 8));
        }
    }

    public void setText(String str) {
        try {
            a aVar = this.f47909n;
            if (aVar != null) {
                aVar.a(str);
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
