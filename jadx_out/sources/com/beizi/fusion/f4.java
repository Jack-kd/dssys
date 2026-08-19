package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rf;
import com.beizi.fusion.widget.BZVideoView;
import com.beizi.fusion.widget.CustomRoundImageView;
import com.beizi.fusion.x5;

/* loaded from: classes2.dex */
public class f4 extends m3 {

    /* renamed from: d1, reason: collision with root package name */
    private LinearLayout f13823d1;

    /* renamed from: e1, reason: collision with root package name */
    private LinearLayout f13824e1;

    /* renamed from: f1, reason: collision with root package name */
    private FrameLayout f13825f1;

    /* renamed from: g1, reason: collision with root package name */
    private CustomRoundImageView f13826g1;

    /* renamed from: h1, reason: collision with root package name */
    private TextView f13827h1;

    /* renamed from: i1, reason: collision with root package name */
    private TextView f13828i1;

    /* renamed from: j1, reason: collision with root package name */
    private TextView f13829j1;

    /* renamed from: k1, reason: collision with root package name */
    private ImageView f13830k1;

    public class a implements x5.b {
        public a() {
        }

        @Override // com.beizi.fusion.x5.b
        public void a(String str) {
            try {
                f4 f4Var = f4.this;
                go.b(f4Var.f14977U, f4Var.f15013v0, Long.valueOf(System.currentTimeMillis()));
                f4.this.f13612b.setComplain(str);
                f4.this.I0();
                f4.this.d0();
                f4.this.i1();
                if (f4.this.f13614d != null && f4.this.f13614d.z() != 2) {
                    f4.this.f13614d.a(f4.this.x(), f4.this.f14991b0);
                }
                f4.this.c0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return false;
            }
            f4.this.f15004m0 = motionEvent.getX();
            f4.this.f15005n0 = motionEvent.getY();
            f4.this.f15006o0 = motionEvent.getRawX();
            f4.this.f15007p0 = motionEvent.getRawY();
            return false;
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (!f4.this.W0()) {
                    f4.this.f1();
                    return;
                }
                f4 f4Var = f4.this;
                f4Var.f14970N0 = false;
                f4.this.a(new String[]{String.valueOf(f4Var.f15004m0), String.valueOf(f4.this.f15005n0), String.valueOf(f4.this.f15006o0), String.valueOf(f4.this.f15007p0)}, 0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements BZVideoView.i {
        public e() {
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a(int i2, int i3) {
            f4.this.a(i2, i3);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void b() {
            f4 f4Var = f4.this;
            if (f4Var.f14986Y0) {
                return;
            }
            f4Var.f14986Y0 = true;
            f4Var.b(0);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a() {
            f4 f4Var = f4.this;
            if (f4Var.f14994c1) {
                return;
            }
            f4Var.f14994c1 = true;
            f4Var.b(100);
        }
    }

    public f4(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, float f2, float f3) {
        super(context, str, j2, j3, buyerBean, forwardBean, n3Var, f2, f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g1() {
        try {
            if (this.f15009r0 == null) {
                return;
            }
            LinearLayout linearLayout = new LinearLayout(this.f14977U);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this.f14977U, this.f15009r0.n());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this.f14977U, this.f15009r0.a());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            this.f14989a0.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 53));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            if (V0()) {
                layoutParams2.setMargins(0, vo.a(this.f14977U, 16.0f), vo.a(this.f14977U, 40.0f), 0);
            } else {
                layoutParams2.setMargins(0, vo.a(this.f14977U, 16.0f), vo.a(this.f14977U, 16.0f), 0);
            }
            linearLayout.setLayoutParams(layoutParams2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void h1() {
        try {
            pi piVar = this.f15009r0;
            if (piVar == null) {
                return;
            }
            rf.a((Context) null).a(piVar.getImageUrl(), new b());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1() {
        try {
            LinearLayout linearLayout = new LinearLayout(this.f14977U);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
            ImageView imageView = new ImageView(this.f14977U);
            imageView.setImageResource(R.drawable.beizi_icon_checkbox);
            imageView.setColorFilter(Color.parseColor("#000000"));
            linearLayout.addView(imageView);
            TextView textView = new TextView(this.f14977U);
            textView.setText("投诉成功，我们将重视您的反馈。");
            textView.setTextColor(Color.parseColor("#000000"));
            textView.setTextSize(2, 13.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 30, 0, 0);
            linearLayout.addView(textView, layoutParams);
            this.f14991b0.measure(0, 0);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.f14991b0.getMeasuredWidth(), this.f14991b0.getMeasuredHeight());
            layoutParams2.gravity = 17;
            this.f14989a0.addView(linearLayout, layoutParams2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1() {
        try {
            AdSpacesBean.ComplainBean complainBean = this.f15012u0;
            if (complainBean != null && complainBean.getOpen() == 1) {
                x5 x5Var = new x5();
                x5Var.a(this.f14977U, this.f14989a0, "2");
                x5Var.a(new a());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() {
        View viewA;
        try {
            pi piVar = this.f15009r0;
            if (piVar == null || piVar.p() == null || (viewA = si.a(this.f14977U, this.f15009r0)) == null) {
                return;
            }
            this.f13825f1.measure(0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.f13825f1.getMeasuredWidth() * 2) / 3, -2);
            layoutParams.gravity = 83;
            this.f13825f1.addView(viewA, layoutParams);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l1() {
        /*
            r7 = this;
            java.lang.String r0 = r7.f14980V0     // Catch: java.lang.Exception -> L51
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L51
            if (r0 == 0) goto L9
            goto Ld
        L9:
            com.beizi.fusion.widget.BZVideoView r0 = r7.f14978U0     // Catch: java.lang.Exception -> L51
            if (r0 != 0) goto Le
        Ld:
            return
        Le:
            com.beizi.fusion.pi r0 = r7.f15009r0     // Catch: java.lang.Exception -> L51
            java.lang.String r0 = r0.g()     // Catch: java.lang.Exception -> L51
            com.beizi.fusion.pi r1 = r7.f15009r0     // Catch: java.lang.Exception -> L51
            boolean r1 = r1.h()     // Catch: java.lang.Exception -> L51
            com.beizi.fusion.widget.BZVideoView r2 = r7.f14978U0     // Catch: java.lang.Exception -> L51
            com.beizi.fusion.f4$e r3 = new com.beizi.fusion.f4$e     // Catch: java.lang.Exception -> L51
            r3.<init>()     // Catch: java.lang.Exception -> L51
            r2.setPlayProgressCallback(r3)     // Catch: java.lang.Exception -> L51
            com.beizi.fusion.widget.BZVideoView r2 = r7.f14978U0     // Catch: java.lang.Exception -> L51
            java.lang.String r3 = r7.f14980V0     // Catch: java.lang.Exception -> L51
            r2.initVideoResource(r3, r0, r1)     // Catch: java.lang.Exception -> L51
            com.beizi.fusion.widget.BZVideoView r0 = r7.f14978U0     // Catch: java.lang.Exception -> L51
            r1 = 0
            r0.setVisibility(r1)     // Catch: java.lang.Exception -> L51
            android.content.Context r0 = r7.f14977U     // Catch: java.lang.Exception -> L51
            float r2 = r7.f14985Y     // Catch: java.lang.Exception -> L51
            r3 = 1098907648(0x41800000, float:16.0)
            float r2 = r2 - r3
            int r0 = com.beizi.fusion.vo.a(r0, r2)     // Catch: java.lang.Exception -> L51
            float r2 = r7.f14987Z     // Catch: java.lang.Exception -> L51
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L60
            android.widget.LinearLayout r0 = r7.f13824e1     // Catch: java.lang.Exception -> L51
            if (r0 == 0) goto L53
            r0.measure(r1, r1)     // Catch: java.lang.Exception -> L51
            android.widget.LinearLayout r0 = r7.f13824e1     // Catch: java.lang.Exception -> L51
            int r1 = r0.getMeasuredHeight()     // Catch: java.lang.Exception -> L51
            goto L53
        L51:
            r0 = move-exception
            goto Lb0
        L53:
            android.content.Context r0 = r7.f14977U     // Catch: java.lang.Exception -> L51
            float r2 = r7.f14987Z     // Catch: java.lang.Exception -> L51
            float r2 = r2 - r3
            int r0 = com.beizi.fusion.vo.a(r0, r2)     // Catch: java.lang.Exception -> L51
            if (r0 <= r1) goto L86
            int r0 = r0 - r1
            goto L86
        L60:
            com.beizi.fusion.pi r1 = r7.f15009r0     // Catch: java.lang.Exception -> L51
            if (r1 == 0) goto L80
            int r1 = r1.m()     // Catch: java.lang.Exception -> L51
            com.beizi.fusion.pi r2 = r7.f15009r0     // Catch: java.lang.Exception -> L51
            int r2 = r2.o()     // Catch: java.lang.Exception -> L51
            if (r1 <= 0) goto L80
            if (r2 <= 0) goto L80
            double r3 = (double) r1     // Catch: java.lang.Exception -> L51
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 * r5
            double r1 = (double) r2     // Catch: java.lang.Exception -> L51
            double r3 = r3 / r1
            float r1 = (float) r3     // Catch: java.lang.Exception -> L51
            r2 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 <= 0) goto L80
            goto L83
        L80:
            r1 = 1071225242(0x3fd9999a, float:1.7)
        L83:
            float r0 = (float) r0     // Catch: java.lang.Exception -> L51
            float r0 = r0 / r1
            int r0 = (int) r0     // Catch: java.lang.Exception -> L51
        L86:
            android.widget.LinearLayout$LayoutParams r1 = new android.widget.LinearLayout$LayoutParams     // Catch: java.lang.Exception -> L51
            r2 = -1
            r1.<init>(r2, r0)     // Catch: java.lang.Exception -> L51
            android.widget.FrameLayout r0 = r7.f13825f1     // Catch: java.lang.Exception -> L51
            if (r0 == 0) goto L9e
            r0.setLayoutParams(r1)     // Catch: java.lang.Exception -> L51
            android.widget.FrameLayout r0 = r7.f13825f1     // Catch: java.lang.Exception -> L51
            java.lang.String r1 = "#000000"
            int r1 = android.graphics.Color.parseColor(r1)     // Catch: java.lang.Exception -> L51
            r0.setBackgroundColor(r1)     // Catch: java.lang.Exception -> L51
        L9e:
            com.beizi.fusion.widget.BZVideoView r0 = r7.f14978U0     // Catch: java.lang.Exception -> L51
            r7.a(r0)     // Catch: java.lang.Exception -> L51
            r7.j1()     // Catch: java.lang.Exception -> L51
            r7.k1()     // Catch: java.lang.Exception -> L51
            r7.g1()     // Catch: java.lang.Exception -> L51
            r7.a1()     // Catch: java.lang.Exception -> L51
            return
        Lb0:
            r0.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.f4.l1():void");
    }

    @Override // com.beizi.fusion.m3
    public void c1() {
        try {
            if (this.f15009r0 == null) {
                a(-991);
                return;
            }
            View viewInflate = LayoutInflater.from(this.f14977U).inflate(R.layout.beizi_layout_native_top_picture_bottom_text_view, (ViewGroup) null);
            this.f15011t0 = viewInflate;
            this.f13823d1 = (LinearLayout) viewInflate.findViewById(R.id.native_ad_tpbt_container_ll);
            this.f13825f1 = (FrameLayout) this.f15011t0.findViewById(R.id.native_ad_tpbt_img_container_fl);
            this.f13826g1 = (CustomRoundImageView) this.f15011t0.findViewById(R.id.native_ad_tpbt_image_iv);
            this.f14978U0 = (BZVideoView) this.f15011t0.findViewById(R.id.native_ad_tpbt_video_iv);
            this.f13824e1 = (LinearLayout) this.f15011t0.findViewById(R.id.native_ad_tpbt_content_ll);
            this.f13827h1 = (TextView) this.f15011t0.findViewById(R.id.native_ad_tpbt_title_tv);
            this.f13828i1 = (TextView) this.f15011t0.findViewById(R.id.native_ad_tpbt_subtitle_tv);
            this.f13829j1 = (TextView) this.f15011t0.findViewById(R.id.native_ad_tpbt_go_tv);
            this.f13830k1 = (ImageView) this.f15011t0.findViewById(R.id.native_ad_tpbt_go_iv);
            int iA = vo.a(this.f14977U, this.f14985Y);
            float f2 = this.f14987Z;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iA, f2 > 0.0f ? vo.a(this.f14977U, f2) : -2);
            int iA2 = vo.a(this.f14977U, 8.0f);
            LinearLayout linearLayout = this.f13823d1;
            if (linearLayout != null) {
                linearLayout.setPadding(iA2, iA2, iA2, iA2);
                this.f13823d1.setLayoutParams(layoutParams);
            }
            LinearLayout linearLayout2 = this.f13824e1;
            if (linearLayout2 != null) {
                linearLayout2.setPadding(0, vo.a(this.f14977U, 8.0f), 0, vo.a(this.f14977U, 8.0f));
            }
            String strB = this.f15009r0.b();
            if (this.f13827h1 != null && !TextUtils.isEmpty(strB)) {
                this.f13827h1.setText(strB);
            }
            String strD = this.f15009r0.d();
            if (this.f13828i1 != null && !TextUtils.isEmpty(strD)) {
                this.f13828i1.setText(strD);
            }
            TextView textView = this.f13829j1;
            if (textView != null) {
                textView.setBackground(this.f14977U.getDrawable(R.drawable.beizi_bg_operate_button));
            }
            if (this.f13830k1 != null) {
                this.f13830k1.setLayoutParams(new RelativeLayout.LayoutParams(vo.a(this.f14977U, 63.0f), vo.a(this.f14977U, 24.0f)));
                this.f13830k1.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            a(this.f13829j1, this.f13830k1);
            pi piVar = this.f15009r0;
            if (piVar != null) {
                String strQ = piVar.q();
                this.f14980V0 = strQ;
                if (TextUtils.isEmpty(strQ)) {
                    h1();
                } else {
                    l1();
                }
            }
            d1();
            e1();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.m3
    public void a(pi piVar) {
        try {
            ImageView imageView = new ImageView(this.f14977U);
            int iA = vo.a(this.f14977U, 24.0f) + 42;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
            int iA2 = vo.a(this.f14977U, 16.0f);
            int iA3 = vo.a(this.f14977U, 8.0f);
            imageView.setPadding(iA3, iA2, iA2, iA3);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.beizi_close_two);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iA, iA);
            layoutParams2.gravity = 5;
            this.f14989a0.addView(imageView, layoutParams2);
            imageView.setOnTouchListener(new c());
            imageView.setOnClickListener(new d());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public class b implements rf.f {
        public b() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            int measuredHeight;
            if (bitmap != null) {
                try {
                    if (f4.this.f14977U == null) {
                        return;
                    }
                    bitmap.getWidth();
                    bitmap.getHeight();
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    float f2 = (float) ((width * 1.0d) / height);
                    f4 f4Var = f4.this;
                    int iA = vo.a(f4Var.f14977U, f4Var.f14985Y - 16.0f);
                    int i2 = (int) (iA / f2);
                    f4 f4Var2 = f4.this;
                    if (f4Var2.f14987Z > 0.0f) {
                        if (f4Var2.f13824e1 != null) {
                            f4.this.f13824e1.measure(0, 0);
                            measuredHeight = f4.this.f13824e1.getMeasuredHeight();
                        } else {
                            measuredHeight = 0;
                        }
                        f4 f4Var3 = f4.this;
                        int iA2 = vo.a(f4Var3.f14977U, f4Var3.f14987Z - 16.0f);
                        if (iA2 > measuredHeight) {
                            i2 = iA2 - measuredHeight;
                        }
                    }
                    f4 f4Var4 = f4.this;
                    f4Var4.f14957A0 = iA;
                    f4Var4.f14958B0 = i2;
                    if (i2 < 0) {
                        f4Var4.f14958B0 = height;
                    }
                    if (f4Var4.f13826g1 != null) {
                        f4.this.f13826g1.setVisibility(0);
                        ViewGroup.LayoutParams layoutParams = f4.this.f13826g1.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.width = iA;
                            layoutParams.height = i2;
                            f4.this.f13826g1.setLayoutParams(layoutParams);
                        }
                    }
                    if (f4.this.f13826g1 != null) {
                        f4.this.f13826g1.setRectRadius(vo.a(f4.this.f14977U, 4.0f));
                        f4 f4Var5 = f4.this;
                        f4Var5.a(iA, i2, f2, bitmap, f4Var5.f13826g1);
                        f4.this.f13826g1.setImageBitmap(bitmap);
                    }
                    f4 f4Var6 = f4.this;
                    f4Var6.a(f4Var6.f13826g1);
                    f4.this.j1();
                    f4.this.k1();
                    f4.this.g1();
                    f4.this.a1();
                } catch (Exception e2) {
                    e2.printStackTrace();
                    f4.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
                }
            }
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            f4.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
        }
    }
}
