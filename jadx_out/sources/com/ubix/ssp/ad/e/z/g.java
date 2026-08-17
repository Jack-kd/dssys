package com.ubix.ssp.ad.e.z;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.z.h;

/* loaded from: classes5.dex */
public class g extends h implements View.OnClickListener {

    /* renamed from: h, reason: collision with root package name */
    private TextView f47930h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f47931i;

    /* renamed from: j, reason: collision with root package name */
    private e f47932j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f47933k;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f47934l;

    /* renamed from: m, reason: collision with root package name */
    private TextView f47935m;

    /* renamed from: n, reason: collision with root package name */
    private TextView f47936n;

    /* renamed from: o, reason: collision with root package name */
    private ImageView f47937o;

    /* renamed from: p, reason: collision with root package name */
    private RelativeLayout f47938p;

    /* renamed from: q, reason: collision with root package name */
    private int f47939q;

    /* renamed from: r, reason: collision with root package name */
    private int f47940r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f47941s;

    /* renamed from: t, reason: collision with root package name */
    private boolean f47942t;

    /* renamed from: u, reason: collision with root package name */
    private int f47943u;

    /* renamed from: v, reason: collision with root package name */
    private com.ubix.ssp.ad.e.a0.g f47944v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f47945w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f47946x;

    /* renamed from: y, reason: collision with root package name */
    private float f47947y;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47948a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f47949b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f47950c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f47951d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f47952e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ long f47953f;

        /* renamed from: com.ubix.ssp.ad.e.z.g$a$a, reason: collision with other inner class name */
        public class C0838a implements h.b {
            public C0838a() {
            }

            @Override // com.ubix.ssp.ad.e.z.h.b
            public void a() {
                g.this.d();
                h.b bVar = g.this.f47969f;
                if (bVar != null) {
                    bVar.a();
                }
            }

            @Override // com.ubix.ssp.ad.e.z.h.b
            public void b() {
                g.this.d();
                h.b bVar = g.this.f47969f;
                if (bVar != null) {
                    bVar.b();
                }
            }

            @Override // com.ubix.ssp.ad.e.z.h.b
            public void c() {
                g.this.d();
                h.b bVar = g.this.f47969f;
                if (bVar != null) {
                    bVar.c();
                }
            }
        }

        public a(String str, String str2, String str3, String str4, String str5, long j2) {
            this.f47948a = str;
            this.f47949b = str2;
            this.f47950c = str3;
            this.f47951d = str4;
            this.f47952e = str5;
            this.f47953f = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            TextView textView = (TextView) g.this.findViewById(920101);
            if (textView != null) {
                String str3 = this.f47948a;
                String str4 = this.f47949b;
                String str5 = this.f47950c;
                String str6 = "";
                if (TextUtils.isEmpty(this.f47951d)) {
                    str = "";
                } else {
                    str = "丨备案号:" + this.f47951d;
                }
                if (TextUtils.isEmpty(this.f47952e)) {
                    str2 = "";
                } else {
                    str2 = "丨适用年龄:" + this.f47952e;
                }
                if (this.f47953f > 0) {
                    str6 = "丨应用大小:" + this.f47953f;
                }
                textView.setText(new com.ubix.ssp.ad.e.f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", str3, str4, str5, str, str2, str6)).a(new C0838a()));
                textView.setTextColor(-16777216);
                g.this.forceLayout();
                g.this.requestLayout();
            }
        }
    }

    public class b implements g.b {
        public b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
            if (g.this.f47933k != null) {
                g.this.f47933k.setText(g.this.a("继续看广告", "继续看广告"));
            }
            l lVar = g.this.f47966c;
            if (lVar != null && lVar.b()) {
                g.this.f47966c.a();
            }
            Dialog dialog = g.this.f47967d;
            if (dialog != null && dialog.isShowing()) {
                g.this.f47967d.dismiss();
            }
            h.c cVar = g.this.f47968e;
            if (cVar != null) {
                cVar.a(null);
            }
            h.c cVar2 = g.this.f47968e;
            if (cVar2 != null) {
                cVar2.b(null);
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
            if (g.this.f47933k != null) {
                g.this.f47933k.setText(g.this.a("继续看广告", "继续看广告"));
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
            int i2 = (int) (j2 / 1000);
            if (g.this.f47933k != null) {
                g.this.f47933k.setText(g.this.a(String.format("%s秒后自动放弃继续看广告", Integer.valueOf(i2 + 1)), "继续看广告"));
            }
        }
    }

    public class c extends ClickableSpan {
        public c() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            l lVar = g.this.f47966c;
            if (lVar != null && lVar.b()) {
                g.this.f47966c.a();
            }
            Dialog dialog = g.this.f47967d;
            if (dialog != null && dialog.isShowing()) {
                g.this.f47967d.dismiss();
            }
            h.c cVar = g.this.f47968e;
            if (cVar != null) {
                cVar.a(null);
            }
            h.c cVar2 = g.this.f47968e;
            if (cVar2 != null) {
                cVar2.b(null);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            textPaint.linkColor = -7829368;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.e();
        }
    }

    public static class e extends TextView {

        /* renamed from: a, reason: collision with root package name */
        private float f47959a;

        /* renamed from: b, reason: collision with root package name */
        private Paint f47960b;

        /* renamed from: c, reason: collision with root package name */
        private Paint f47961c;

        /* renamed from: d, reason: collision with root package name */
        private RectF f47962d;

        /* renamed from: e, reason: collision with root package name */
        private String f47963e;

        public e(Context context) {
            super(context);
            this.f47960b = new Paint(1);
            this.f47961c = new Paint(1);
            this.f47962d = new RectF();
            this.f47963e = "";
            setWillNotDraw(false);
            this.f47960b.setColor(-12542209);
            this.f47961c.setColor(-1);
            this.f47961c.setTextSize(r.d(20.0f));
            this.f47961c.setTextAlign(Paint.Align.CENTER);
        }

        public void a(float f2) {
            this.f47959a = f2;
            this.f47962d.set(0.0f, 0.0f, (int) (getMeasuredWidth() * f2), getMeasuredHeight());
            this.f47963e = "下载中" + ((int) (this.f47959a * 100.0f)) + "%";
            postInvalidate();
        }

        @Override // android.widget.TextView, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawRoundRect(this.f47962d, 8.0f, 8.0f, this.f47960b);
            Paint.FontMetrics fontMetrics = this.f47961c.getFontMetrics();
            canvas.drawText(this.f47963e, getWidth() / 2.0f, ((getHeight() / 2) - (fontMetrics.top / 2.0f)) - (fontMetrics.bottom / 2.0f), this.f47961c);
        }

        public void setText(String str) {
            this.f47963e = str;
            postInvalidate();
        }
    }

    public g(Context context) {
        super(context);
        this.f47941s = false;
        this.f47942t = true;
        this.f47943u = 0;
        this.f47945w = false;
        this.f47946x = true;
        this.f47947y = 3.0f;
        int iH = r.a().h(context);
        int iC = r.a().c(context);
        this.f47947y = r.a().a(context);
        if (iH > iC) {
            this.f47945w = true;
            int iMin = Math.min((int) (iC * 0.9d), 972);
            this.f47940r = iMin;
            this.f47939q = (int) (iMin * 0.9d);
        } else {
            this.f47945w = false;
            int iMin2 = Math.min((int) (iH * 0.75d), 960);
            this.f47939q = iMin2;
            this.f47940r = (int) (iMin2 * 1.5d);
        }
        this.f47930h = new TextView(getContext());
        this.f47931i = new TextView(getContext());
        this.f47932j = new e(getContext());
        this.f47933k = new TextView(getContext());
        this.f47935m = new TextView(getContext());
        this.f47936n = new TextView(getContext());
        this.f47934l = new ImageView(getContext());
        this.f47937o = new ImageView(getContext());
        this.f47938p = new RelativeLayout(getContext());
        this.f47930h.setId(10002);
        this.f47931i.setId(10003);
        this.f47932j.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1);
        this.f47933k.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2);
        this.f47937o.setId(876547);
        this.f47938p.setId(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK);
        this.f47934l.setId(10007);
        this.f47935m.setId(10008);
        this.f47936n.setId(10009);
        this.f47937o.setVisibility(4);
        this.f47932j.setTextColor(-1);
        this.f47932j.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -12542209, 6));
        this.f47933k.setTextColor(-8158333);
        this.f47933k.setMovementMethod(LinkMovementMethod.getInstance());
        this.f47933k.setHighlightColor(0);
        this.f47931i.setTextColor(-16777216);
        this.f47930h.getPaint().setFakeBoldText(true);
        setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), -1, 32));
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.ubix.ssp.ad.e.a0.g gVar = this.f47944v;
        if (gVar != null) {
            gVar.a();
            this.f47946x = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f47939q * 0.8d), -2);
        int i2 = this.f47939q;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (i2 * 0.8d), i2 / 4);
        int i3 = this.f47939q;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) (i3 * 0.8d), i3 / 8);
        this.f47932j.setZ(4.0f);
        addView(this.f47930h, layoutParams);
        addView(this.f47931i, layoutParams);
        addView(this.f47932j, layoutParams2);
        addView(this.f47933k, layoutParams3);
        RelativeLayout relativeLayout = this.f47938p;
        double d2 = this.f47939q;
        addView(relativeLayout, new LinearLayout.LayoutParams((int) (d2 * 0.8d), (int) (this.f47945w ? d2 / 4.6d : d2 / 3.5d)));
        int i4 = (int) ((this.f47939q / 3.5d) * 0.6d);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams4.addRule(15);
        layoutParams4.leftMargin = (int) ((this.f47939q / 3.5d) * 0.2d);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(5, 10007);
        layoutParams6.addRule(5, 10007);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(1, 10007);
        layoutParams7.addRule(15);
        layoutParams7.leftMargin = (int) ((this.f47939q / 3.5d) * 0.2d);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        double d3 = this.f47939q;
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams((int) ((d3 * 0.8d) - (d3 / 3.5d)), -2);
        TextView textView = this.f47935m;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        this.f47936n.setEllipsize(truncateAt);
        linearLayout.addView(this.f47935m, layoutParams8);
        linearLayout.addView(this.f47936n, layoutParams8);
        this.f47935m.setSingleLine();
        this.f47936n.setSingleLine();
        this.f47938p.addView(this.f47934l, layoutParams4);
        this.f47938p.addView(linearLayout, layoutParams7);
        if (this.f47941s) {
            addView(com.ubix.ssp.ad.e.f.a(getContext(), 1), new RelativeLayout.LayoutParams((int) (this.f47939q * 0.8d), -2));
        }
        addView(this.f47937o);
        this.f47937o.setOnClickListener(this);
        this.f47932j.setOnClickListener(this);
    }

    public void f() {
        e eVar;
        String str;
        this.f47930h.setText("奖励获取中");
        this.f47931i.setText("点击下方按钮跳转到广告详情页或第三方应用");
        if (this.f47941s) {
            eVar = this.f47932j;
            str = "立即下载";
        } else {
            eVar = this.f47932j;
            str = "查看详情";
        }
        eVar.setText(str);
    }

    public int getContentHeight() {
        return this.f47939q;
    }

    public int getContentWidth() {
        return this.f47939q;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new d());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.c cVar;
        d();
        int id = view.getId();
        if (id == 10004) {
            if (this.f47942t) {
                l lVar = this.f47966c;
                if (lVar != null && lVar.b()) {
                    this.f47966c.a();
                }
                Dialog dialog = this.f47967d;
                if (dialog != null && dialog.isShowing()) {
                    this.f47967d.dismiss();
                }
            }
            h.c cVar2 = this.f47968e;
            if (cVar2 != null) {
                cVar2.a(null, null);
            }
            if (!this.f47942t || (cVar = this.f47968e) == null) {
                return;
            }
        } else if (id == 10005) {
            l lVar2 = this.f47966c;
            if (lVar2 != null && lVar2.b()) {
                this.f47966c.a();
            }
            Dialog dialog2 = this.f47967d;
            if (dialog2 != null && dialog2.isShowing()) {
                this.f47967d.dismiss();
            }
            h.c cVar3 = this.f47968e;
            if (cVar3 != null) {
                cVar3.a(null);
            }
            cVar = this.f47968e;
            if (cVar == null) {
                return;
            }
        } else {
            if (id != 876547) {
                return;
            }
            l lVar3 = this.f47966c;
            if (lVar3 != null && lVar3.b()) {
                this.f47966c.a();
            }
            Dialog dialog3 = this.f47967d;
            if (dialog3 != null && dialog3.isShowing()) {
                this.f47967d.dismiss();
            }
            cVar = this.f47968e;
            if (cVar == null) {
                return;
            }
        }
        cVar.b(null);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        int i6;
        int bottom;
        int i7;
        int bottom2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        double bottom3;
        double d7;
        double d8;
        double d9;
        for (int i14 = 0; i14 < getChildCount(); i14++) {
            View childAt = getChildAt(i14);
            int id = childAt.getId();
            if (id == 10010) {
                double d10 = this.f47939q;
                int i15 = (int) ((d10 - (d10 * 0.8d)) / 2.0d);
                int bottom4 = findViewById(10003).getBottom();
                if (this.f47945w) {
                    d2 = 0.05d;
                    d3 = this.f47940r * 0.02d;
                } else {
                    d2 = 0.05d;
                    d3 = this.f47940r * 0.05d;
                }
                int i16 = bottom4 + ((int) d3);
                double d11 = this.f47939q;
                int i17 = (int) ((d11 + (0.8d * d11)) / 2.0d);
                double bottom5 = findViewById(10003).getBottom();
                if (this.f47945w) {
                    d4 = (int) (this.f47940r * 0.02d);
                    d5 = this.f47939q;
                    d6 = 4.6d;
                } else {
                    d4 = (int) (this.f47940r * d2);
                    d5 = this.f47939q;
                    d6 = 3.5d;
                }
                childAt.layout(i15, i16, i17, (int) (bottom5 + d4 + (d5 / d6)));
                childAt.setBackgroundColor(-1);
            } else if (id != 876547) {
                if (id != 920101) {
                    switch (id) {
                        case 10002:
                            if (this.f47930h.getLineCount() == 1) {
                                i8 = this.f47939q;
                                double d12 = i8;
                                i9 = (int) (0.1d * d12);
                                boolean z3 = this.f47945w;
                                i10 = z3 ? i8 / 14 : i8 / 7;
                                i11 = (int) (d12 * 0.9d);
                                if (z3) {
                                    i12 = i8 / 14;
                                    i13 = i8 / 8;
                                } else {
                                    i12 = i8 / 7;
                                    i13 = i8 / 6;
                                }
                            } else {
                                i8 = this.f47939q;
                                double d13 = i8;
                                i9 = (int) (0.1d * d13);
                                boolean z4 = this.f47945w;
                                i10 = z4 ? i8 / 16 : i8 / 8;
                                i11 = (int) (d13 * 0.9d);
                                if (z4) {
                                    i12 = i8 / 16;
                                    i13 = i8 / 8;
                                } else {
                                    i12 = i8 / 8;
                                    i13 = i8 / 6;
                                }
                            }
                            childAt.layout(i9, i10, i11, i12 + i13);
                            continue;
                        case 10003:
                            childAt.layout((int) (this.f47939q * 0.1d), findViewById(10002).getBottom() + ((int) (this.f47945w ? this.f47940r * 0.03d : this.f47940r * 0.05d)), (int) (this.f47939q * 0.9d), findViewById(10002).getBottom() + (this.f47945w ? (int) (this.f47940r * 0.03d) : (int) (this.f47940r * 0.05d)) + (this.f47939q / 6));
                            continue;
                        case AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1 /* 10004 */:
                            if (findViewById(920101) == null) {
                                double d14 = this.f47939q;
                                i6 = (int) ((d14 - (d14 * 0.8d)) / 2.0d);
                                bottom = findViewById(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK).getBottom() + ((int) (this.f47940r * 0.07d));
                                double d15 = this.f47939q;
                                i7 = (int) ((d15 + (0.8d * d15)) / 2.0d);
                                bottom3 = findViewById(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK).getBottom() + ((int) (this.f47940r * 0.07d));
                                if (!this.f47945w) {
                                    d7 = this.f47939q / 4;
                                    bottom2 = (int) (bottom3 + d7);
                                    break;
                                } else {
                                    d8 = this.f47939q;
                                    d9 = 4.4d;
                                }
                            } else {
                                double d16 = this.f47939q;
                                i6 = (int) ((d16 - (d16 * 0.8d)) / 2.0d);
                                bottom = findViewById(920101).getTop() + findViewById(920101).getMeasuredHeight() + ((int) (this.f47940r * 0.015d));
                                double d17 = this.f47939q;
                                i7 = (int) ((d17 + (0.8d * d17)) / 2.0d);
                                bottom3 = findViewById(920101).getTop() + findViewById(920101).getMeasuredHeight() + ((int) (this.f47940r * 0.015d));
                                if (this.f47945w) {
                                    d8 = this.f47939q;
                                    d9 = 5.2d;
                                } else {
                                    d8 = this.f47939q;
                                    d9 = 4.0d;
                                }
                            }
                            d7 = d8 / d9;
                            bottom2 = (int) (bottom3 + d7);
                        case AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2 /* 10005 */:
                            double d18 = this.f47939q;
                            int bottom6 = findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getBottom() + ((int) (this.f47940r * 0.012d));
                            double d19 = this.f47939q;
                            childAt.layout((int) ((d18 - (d18 * 0.8d)) / 2.0d), bottom6, (int) ((d19 + (0.8d * d19)) / 2.0d), findViewById(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).getBottom() + ((int) (this.f47940r * 0.012d)) + (this.f47939q / 8));
                            continue;
                    }
                } else {
                    i6 = (int) (this.f47939q * 0.1d);
                    bottom = findViewById(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK).getBottom() + ((int) (this.f47947y * 8.0f));
                    i7 = (int) (this.f47939q * 0.9d);
                    bottom2 = findViewById(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK).getBottom() + ((int) (this.f47947y * 8.0f)) + findViewById(920101).getMeasuredHeight();
                }
                childAt.layout(i6, bottom, i7, bottom2);
            } else {
                int i18 = this.f47939q;
                int i19 = i18 / 30;
                int i20 = i18 - i19;
                int i21 = i18 / 11;
                childAt.layout(i20 - i21, i19, i20, i21 + i19);
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(this.f47939q, this.f47940r);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (this.f47946x) {
            return;
        }
        if (i2 == 0) {
            com.ubix.ssp.ad.e.a0.g gVar = this.f47944v;
            if (gVar == null || !gVar.b()) {
                return;
            }
            this.f47944v.d();
            return;
        }
        com.ubix.ssp.ad.e.a0.g gVar2 = this.f47944v;
        if (gVar2 == null || gVar2.b()) {
            return;
        }
        this.f47944v.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0272  */
    @Override // com.ubix.ssp.ad.e.z.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setData(android.os.Bundle r20) {
        /*
            Method dump skipped, instructions count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.z.g.setData(android.os.Bundle):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SpannableStringBuilder a(String str, String str2) {
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(str);
        if (str.contains(str2)) {
            int iIndexOf = str.indexOf(str2);
            int length = str2.length() + iIndexOf;
            spannableStringBuilderValueOf.setSpan(new c(), iIndexOf, length, 33);
            spannableStringBuilderValueOf.setSpan(new UnderlineSpan(), iIndexOf, length, 33);
        }
        return spannableStringBuilderValueOf;
    }

    public void b(int i2) {
        try {
            e eVar = this.f47932j;
            if (eVar != null) {
                eVar.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#C3D8FF"), 6));
                this.f47932j.a(i2 / 100.0f);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(int i2) {
        this.f47931i.setText(String.format("点击广告并停留%s秒即可获取奖励", i2 + ""));
    }

    public void b(boolean z2) {
        TextView textView;
        String str;
        e eVar;
        String str2;
        if (z2) {
            textView = this.f47930h;
            str = "恭喜获得奖励";
        } else {
            textView = this.f47930h;
            str = "奖励获取失败";
        }
        textView.setText(str);
        this.f47931i.setText("点击下方按钮跳转到广告详情页或第三方应用");
        if (this.f47941s) {
            eVar = this.f47932j;
            str2 = "立即下载";
        } else {
            eVar = this.f47932j;
            str2 = "查看详情";
        }
        eVar.setText(str2);
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

    public void a(String str, int i2) {
        try {
            e eVar = this.f47932j;
            if (eVar != null) {
                eVar.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#C3D8FF"), 6));
                if (i2 < 0) {
                    this.f47932j.setText(str);
                } else {
                    this.f47932j.a(i2 / 100.0f);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(boolean z2) {
        if (!z2) {
            this.f47930h.setText("尚未获取奖励");
            return;
        }
        this.f47930h.setText("恭喜获得奖励");
        this.f47931i.setText("点击下方按钮跳转到广告详情页或第三方应用");
        if (this.f47941s) {
            this.f47932j.setText("立即下载");
        } else {
            this.f47932j.setText("查看详情");
        }
    }
}
