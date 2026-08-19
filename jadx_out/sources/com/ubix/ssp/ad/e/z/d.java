package com.ubix.ssp.ad.e.z;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kwad.components.ad.reward.monitor.FraudVerifyCode;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.z.h;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class d extends h implements View.OnClickListener {

    /* renamed from: h, reason: collision with root package name */
    private int f47889h;

    /* renamed from: i, reason: collision with root package name */
    private int f47890i;

    /* renamed from: j, reason: collision with root package name */
    private int f47891j;

    /* renamed from: k, reason: collision with root package name */
    private int f47892k;

    /* renamed from: l, reason: collision with root package name */
    private LinearLayout[] f47893l;

    /* renamed from: m, reason: collision with root package name */
    private TextView[] f47894m;

    /* renamed from: n, reason: collision with root package name */
    private TextView[] f47895n;

    /* renamed from: o, reason: collision with root package name */
    private LinearLayout f47896o;

    /* renamed from: p, reason: collision with root package name */
    private TextView f47897p;

    /* renamed from: q, reason: collision with root package name */
    private int f47898q;

    /* renamed from: r, reason: collision with root package name */
    private int f47899r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f47900s;

    public class a implements DialogInterface.OnDismissListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            Dialog dialog;
            if (d.this.f47900s || (dialog = d.this.f47967d) == null || dialog.isShowing()) {
                return;
            }
            d.this.f47967d.show();
        }
    }

    public class b implements h.c {
        public b() {
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(h hVar) {
            Dialog dialog = d.this.f47967d;
            if (dialog == null || dialog.isShowing()) {
                return;
            }
            d.this.f47967d.show();
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void b(h hVar) {
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void c(h hVar) {
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(h hVar, HashMap<String, String> map) {
            d.this.f47900s = true;
            d dVar = d.this;
            h.c cVar = dVar.f47968e;
            if (cVar != null) {
                cVar.a(dVar, map);
            }
        }
    }

    public d(Context context) {
        super(context);
        this.f47893l = new LinearLayout[6];
        this.f47894m = new TextView[6];
        this.f47895n = new TextView[4];
        this.f47900s = false;
        this.f47891j = r.a().h(context);
        int iC = r.a().c(context) / 2;
        this.f47892k = iC;
        int i2 = this.f47891j;
        this.f47889h = i2 / 20;
        this.f47890i = Math.max(iC, i2 / 2) / 20;
        u.e("topMargin=" + this.f47890i);
        int i3 = (int) (((double) this.f47891j) / 2.5d);
        this.f47898q = i3;
        this.f47899r = (int) (((double) i3) / 3.8d);
        d();
        setData(null);
        setBackgroundColor(-1);
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    }

    private int a(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.getSize(i2) : this.f47891j;
    }

    private void d() {
        u.e("child.getId()=" + this.f47891j);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, 2);
        for (int i2 = 0; i2 < 6; i2++) {
            this.f47893l[i2] = new LinearLayout(getContext());
            this.f47894m[i2] = new TextView(getContext());
            this.f47894m[i2].setId(150001 + i2);
            this.f47893l[i2].addView(this.f47894m[i2]);
            this.f47893l[i2].setId(110001 + i2);
            this.f47893l[i2].setGravity(16);
            this.f47894m[i2].setTextColor(-16777216);
            LinearLayout linearLayout = this.f47893l[i2];
            int i3 = this.f47890i / 2;
            linearLayout.setPadding(0, i3, 0, i3);
            this.f47894m[i2].setTextSize(12.0f);
            this.f47893l[i2].setOnClickListener(this);
            addView(this.f47893l[i2]);
            if (i2 < 5) {
                View view = new View(getContext());
                view.setId(120001 + i2);
                view.setBackgroundColor(-921103);
                addView(view, layoutParams);
            }
        }
        for (int i4 = 0; i4 < 4; i4++) {
            this.f47895n[i4] = new TextView(getContext());
            this.f47895n[i4].setId(130001 + i4);
            this.f47895n[i4].setBackgroundColor(-921103);
            this.f47895n[i4].setTextColor(-16777216);
            this.f47895n[i4].setPadding(20, 10, 20, 10);
            this.f47895n[i4].setTextSize(12.0f);
            this.f47895n[i4].setOnClickListener(this);
            addView(this.f47895n[i4]);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setStroke(2, -921103);
        gradientDrawable.setCornerRadius(4.0f);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        this.f47896o = linearLayout2;
        linearLayout2.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f47897p = textView;
        textView.setTextColor(-7829368);
        this.f47896o.addView(this.f47897p);
        this.f47896o.setId(140001);
        this.f47897p.setId(140002);
        this.f47896o.setBackground(gradientDrawable);
        this.f47896o.setPadding(5, 20, 5, 20);
        this.f47897p.setTextSize(12.0f);
        this.f47896o.setOnClickListener(this);
        addView(this.f47896o);
    }

    public int getContentHeight() {
        return this.f47892k;
    }

    public int getContentWidth() {
        return this.f47891j;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r6) {
        /*
            r5 = this;
            int r6 = r6.getId()
            r0 = 140001(0x222e1, float:1.96183E-40)
            if (r6 == r0) goto L33
            switch(r6) {
                case 110001: goto L30;
                case 110002: goto L2d;
                case 110003: goto L29;
                case 110004: goto L25;
                case 110005: goto L21;
                default: goto Lc;
            }
        Lc:
            switch(r6) {
                case 130001: goto L1d;
                case 130002: goto L19;
                case 130003: goto L15;
                case 130004: goto L11;
                default: goto Lf;
            }
        Lf:
            goto La5
        L11:
            java.lang.String r6 = "601209"
            goto La7
        L15:
            java.lang.String r6 = "601208"
            goto La7
        L19:
            java.lang.String r6 = "601207"
            goto La7
        L1d:
            java.lang.String r6 = "601206"
            goto La7
        L21:
            java.lang.String r6 = "601205"
            goto La7
        L25:
            java.lang.String r6 = "601204"
            goto La7
        L29:
            java.lang.String r6 = "601203"
            goto La7
        L2d:
            java.lang.String r6 = "601202"
            goto La7
        L30:
            java.lang.String r6 = "601201"
            goto La7
        L33:
            android.app.Dialog r6 = r5.f47967d
            if (r6 == 0) goto L3a
            r6.dismiss()
        L3a:
            com.ubix.ssp.ad.e.a0.l r6 = r5.f47966c
            if (r6 == 0) goto L41
            r6.a()
        L41:
            android.app.Dialog r6 = new android.app.Dialog
            android.content.Context r0 = r5.getContext()
            r1 = 16974132(0x1030134, float:2.4061763E-38)
            r6.<init>(r0, r1)
            android.widget.LinearLayout r0 = new android.widget.LinearLayout
            android.content.Context r1 = r5.getContext()
            r0.<init>(r1)
            android.view.ViewGroup$LayoutParams r1 = new android.view.ViewGroup$LayoutParams
            r2 = -1
            r1.<init>(r2, r2)
            r0.setLayoutParams(r1)
            com.ubix.ssp.ad.e.z.c r1 = new com.ubix.ssp.ad.e.z.c
            android.content.Context r3 = r5.getContext()
            r1.<init>(r3)
            android.view.Window r3 = r6.getWindow()
            r4 = -2
            r3.setLayout(r2, r4)
            r2 = 17170445(0x106000d, float:2.461195E-38)
            r3.setBackgroundDrawableResource(r2)
            r2 = 1050253722(0x3e99999a, float:0.3)
            r3.setDimAmount(r2)
            r2 = 2
            r3.addFlags(r2)
            r2 = 80
            r3.setGravity(r2)
            com.ubix.ssp.ad.e.z.d$a r2 = new com.ubix.ssp.ad.e.z.d$a
            r2.<init>()
            r6.setOnDismissListener(r2)
            com.ubix.ssp.ad.e.z.d$b r2 = new com.ubix.ssp.ad.e.z.d$b
            r2.<init>()
            r3 = 0
            r1.a(r6, r2, r3)
            r0.addView(r1)
            r1 = 8388611(0x800003, float:1.1754948E-38)
            r0.setGravity(r1)
            r6.setContentView(r0)
            r6.show()
        La5:
            java.lang.String r6 = ""
        La7:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 != 0) goto Lbe
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.String r1 = "dislikeId"
            r0.put(r1, r6)
            com.ubix.ssp.ad.e.z.h$c r6 = r5.f47968e
            if (r6 == 0) goto Lbe
            r6.a(r5, r0)
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.z.d.onClick(android.view.View):void");
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int bottom;
        int i7;
        int bottom2;
        int i8;
        int i9;
        int i10;
        int i11;
        super.onLayout(z2, i2, i3, i4, i5);
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            int id = childAt.getId();
            if (id != 140001) {
                switch (id) {
                    case 110001:
                        int i13 = this.f47891j;
                        int i14 = i13 / 20;
                        childAt.layout(i14, 0, i13 - i14, (this.f47890i / 10) + childAt.getMeasuredHeight());
                        childAt.getLayoutParams().height = childAt.getMeasuredHeight();
                        break;
                    case 110002:
                        i6 = this.f47891j / 20;
                        i9 = 120001;
                        bottom = findViewById(i9).getBottom();
                        int i15 = this.f47891j;
                        i7 = i15 - (i15 / 20);
                        bottom2 = findViewById(i9).getBottom();
                        i8 = this.f47890i / 10;
                        break;
                    case 110003:
                        i6 = this.f47891j / 20;
                        i9 = 120002;
                        bottom = findViewById(i9).getBottom();
                        int i152 = this.f47891j;
                        i7 = i152 - (i152 / 20);
                        bottom2 = findViewById(i9).getBottom();
                        i8 = this.f47890i / 10;
                        break;
                    case 110004:
                        i6 = this.f47891j / 20;
                        i9 = 120003;
                        bottom = findViewById(i9).getBottom();
                        int i1522 = this.f47891j;
                        i7 = i1522 - (i1522 / 20);
                        bottom2 = findViewById(i9).getBottom();
                        i8 = this.f47890i / 10;
                        break;
                    case 110005:
                        i6 = this.f47891j / 20;
                        i9 = 120004;
                        bottom = findViewById(i9).getBottom();
                        int i15222 = this.f47891j;
                        i7 = i15222 - (i15222 / 20);
                        bottom2 = findViewById(i9).getBottom();
                        i8 = this.f47890i / 10;
                        break;
                    case 110006:
                        i6 = this.f47891j / 20;
                        i9 = 120005;
                        bottom = findViewById(i9).getBottom();
                        int i152222 = this.f47891j;
                        i7 = i152222 - (i152222 / 20);
                        bottom2 = findViewById(i9).getBottom();
                        i8 = this.f47890i / 10;
                        break;
                    default:
                        switch (id) {
                            case 120001:
                                i10 = this.f47891j / 20;
                                i11 = 110001;
                                int bottom3 = findViewById(i11).getBottom();
                                int i16 = this.f47891j;
                                childAt.layout(i10, bottom3, i16 - (i16 / 20), findViewById(i11).getBottom() + 2);
                                childAt.getLayoutParams().height = 2;
                                break;
                            case 120002:
                                i10 = this.f47891j / 20;
                                i11 = 110002;
                                int bottom32 = findViewById(i11).getBottom();
                                int i162 = this.f47891j;
                                childAt.layout(i10, bottom32, i162 - (i162 / 20), findViewById(i11).getBottom() + 2);
                                childAt.getLayoutParams().height = 2;
                                break;
                            case 120003:
                                i10 = this.f47891j / 20;
                                i11 = 110003;
                                int bottom322 = findViewById(i11).getBottom();
                                int i1622 = this.f47891j;
                                childAt.layout(i10, bottom322, i1622 - (i1622 / 20), findViewById(i11).getBottom() + 2);
                                childAt.getLayoutParams().height = 2;
                                break;
                            case 120004:
                                i10 = this.f47891j / 20;
                                i11 = 110004;
                                int bottom3222 = findViewById(i11).getBottom();
                                int i16222 = this.f47891j;
                                childAt.layout(i10, bottom3222, i16222 - (i16222 / 20), findViewById(i11).getBottom() + 2);
                                childAt.getLayoutParams().height = 2;
                                break;
                            case 120005:
                                i10 = this.f47891j / 20;
                                i11 = 110005;
                                int bottom32222 = findViewById(i11).getBottom();
                                int i162222 = this.f47891j;
                                childAt.layout(i10, bottom32222, i162222 - (i162222 / 20), findViewById(i11).getBottom() + 2);
                                childAt.getLayoutParams().height = 2;
                                break;
                            default:
                                switch (id) {
                                    case 130001:
                                        childAt.layout(this.f47891j / 20, findViewById(110006).getBottom(), (this.f47891j / 20) + childAt.getMeasuredWidth(), findViewById(110006).getBottom() + childAt.getMeasuredHeight());
                                        childAt.getLayoutParams().height = childAt.getMeasuredHeight();
                                        break;
                                    case 130002:
                                        childAt.layout(findViewById(130001).getRight() + (this.f47890i / 2), findViewById(110006).getBottom(), findViewById(130001).getRight() + (this.f47890i / 2) + childAt.getMeasuredWidth(), findViewById(110006).getBottom() + childAt.getMeasuredHeight());
                                        childAt.getLayoutParams().height = childAt.getMeasuredHeight();
                                        break;
                                    case 130003:
                                        childAt.layout(findViewById(130002).getRight() + (this.f47890i / 2), findViewById(110006).getBottom(), findViewById(130002).getRight() + (this.f47890i / 2) + childAt.getMeasuredWidth(), findViewById(110006).getBottom() + childAt.getMeasuredHeight());
                                        childAt.getLayoutParams().height = childAt.getMeasuredHeight();
                                        break;
                                    case 130004:
                                        if (this.f47891j - (findViewById(130003).getRight() + (this.f47891j / 20)) < childAt.getMeasuredWidth()) {
                                            childAt.layout(this.f47891j / 20, findViewById(130001).getBottom() + (this.f47890i / 5), (this.f47891j / 20) + childAt.getMeasuredWidth(), findViewById(130001).getBottom() + (this.f47890i / 5) + childAt.getMeasuredHeight());
                                        } else {
                                            childAt.layout(findViewById(130003).getRight() + (this.f47890i / 2), findViewById(110006).getBottom(), findViewById(130003).getRight() + (this.f47890i / 2) + childAt.getMeasuredWidth(), findViewById(110006).getBottom() + childAt.getMeasuredHeight());
                                        }
                                        childAt.getLayoutParams().height = childAt.getMeasuredHeight();
                                        break;
                                }
                        }
                }
            } else {
                i6 = this.f47891j / 20;
                bottom = findViewById(130004).getBottom() + ((int) (this.f47890i / 1.5d));
                int i17 = this.f47891j;
                i7 = i17 - (i17 / 20);
                bottom2 = findViewById(130004).getBottom();
                i8 = (int) (this.f47890i / 1.5d);
            }
            childAt.layout(i6, bottom, i7, bottom2 + i8 + childAt.getMeasuredHeight());
            childAt.getLayoutParams().height = childAt.getMeasuredHeight();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f47892k = 0;
        this.f47891j = a(i2);
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            int id = childAt.getId();
            if (id == 130001) {
                this.f47892k += this.f47890i / 5;
                measureChild(childAt, i2, i3);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                this.f47892k += childAt.getMeasuredHeight();
                u.e("child.getId()=" + childAt.getId() + ";h=" + this.f47892k);
                this.f47892k = this.f47892k + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            } else if (id != 140001) {
                switch (id) {
                    case 110001:
                    case 110002:
                    case 110003:
                    case 110004:
                    case 110005:
                    case 110006:
                        break;
                    default:
                        switch (id) {
                            case 120001:
                            case 120002:
                            case 120003:
                            case 120004:
                            case 120005:
                                break;
                            default:
                                continue;
                        }
                }
                measureChild(childAt, i2, i3);
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                this.f47892k += childAt.getMeasuredHeight();
                u.e("child.getId()=" + childAt.getId() + ";h=" + this.f47892k);
                this.f47892k = this.f47892k + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            } else {
                this.f47892k += this.f47891j / 20;
                this.f47892k += this.f47890i / 5;
                measureChild(childAt, i2, i3);
                ViewGroup.MarginLayoutParams marginLayoutParams22 = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                this.f47892k += childAt.getMeasuredHeight();
                u.e("child.getId()=" + childAt.getId() + ";h=" + this.f47892k);
                this.f47892k = this.f47892k + marginLayoutParams22.topMargin + marginLayoutParams22.bottomMargin;
            }
        }
        this.f47892k += 20;
        u.e(" setMeasuredDimension(width, height)=" + this.f47892k);
        setMeasuredDimension(this.f47891j, this.f47892k);
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void setData(Bundle bundle) {
        ((TextView) findViewById(150001)).setText("内容无法正常展示（卡顿、黑白屏）");
        ((TextView) findViewById(150002)).setText("不感兴趣");
        ((TextView) findViewById(150003)).setText("无法关闭广告");
        ((TextView) findViewById(150004)).setText("点击异常、频繁跳转");
        ((TextView) findViewById(150005)).setText("投放内容与用户年龄不符");
        ((TextView) findViewById(FraudVerifyCode.RerwardFraudRepeatRequest)).setText("反馈广告质量");
        ((TextView) findViewById(130001)).setText("低俗色情");
        ((TextView) findViewById(130002)).setText("诱导点击");
        ((TextView) findViewById(130003)).setText("违规违法");
        ((TextView) findViewById(130004)).setText("疑似抄袭");
        this.f47897p.setText("详细的描述有助于我们快速定位问题");
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
