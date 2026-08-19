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
public class e4 extends m3 {

    /* renamed from: d1, reason: collision with root package name */
    private RelativeLayout f13668d1;

    /* renamed from: e1, reason: collision with root package name */
    private TextView f13669e1;

    /* renamed from: f1, reason: collision with root package name */
    private TextView f13670f1;

    /* renamed from: g1, reason: collision with root package name */
    private TextView f13671g1;

    /* renamed from: h1, reason: collision with root package name */
    private ImageView f13672h1;

    /* renamed from: i1, reason: collision with root package name */
    private ImageView f13673i1;

    /* renamed from: j1, reason: collision with root package name */
    private CustomRoundImageView f13674j1;

    /* renamed from: k1, reason: collision with root package name */
    private RelativeLayout f13675k1;

    public class a implements x5.b {
        public a() {
        }

        @Override // com.beizi.fusion.x5.b
        public void a(String str) {
            try {
                e4 e4Var = e4.this;
                go.b(e4Var.f14977U, e4Var.f15013v0, Long.valueOf(System.currentTimeMillis()));
                e4.this.f13612b.setComplain(str);
                e4.this.I0();
                e4.this.d0();
                e4.this.i1();
                if (e4.this.f13614d != null && e4.this.f13614d.z() != 2) {
                    e4.this.f13614d.a(e4.this.x(), e4.this.f14991b0);
                }
                e4.this.c0();
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
            e4.this.f15004m0 = motionEvent.getX();
            e4.this.f15005n0 = motionEvent.getY();
            e4.this.f15006o0 = motionEvent.getRawX();
            e4.this.f15007p0 = motionEvent.getRawY();
            return false;
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (!e4.this.W0()) {
                    e4.this.f1();
                    return;
                }
                e4 e4Var = e4.this;
                e4Var.f14970N0 = false;
                e4.this.a(new String[]{String.valueOf(e4Var.f15004m0), String.valueOf(e4.this.f15005n0), String.valueOf(e4.this.f15006o0), String.valueOf(e4.this.f15007p0)}, 0);
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
            e4.this.a(i2, i3);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void b() {
            e4 e4Var = e4.this;
            if (e4Var.f14986Y0) {
                return;
            }
            e4Var.f14986Y0 = true;
            e4Var.b(0);
        }

        @Override // com.beizi.fusion.widget.BZVideoView.i
        public void a() {
            e4 e4Var = e4.this;
            if (e4Var.f14994c1) {
                return;
            }
            e4Var.f14994c1 = true;
            e4Var.b(100);
        }
    }

    public e4(Context context, String str, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var, float f2, float f3) {
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
            this.f14989a0.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams2.setMargins(0, 0, 15, 15);
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
            linearLayout.setOrientation(0);
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
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(20, 0, 0, 0);
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
                x5Var.a(this.f14977U, this.f14989a0, "3");
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
            this.f14989a0.measure(0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.f14989a0.getMeasuredWidth() * 2) / 3, -2);
            layoutParams.gravity = 83;
            this.f14989a0.addView(viewA, layoutParams);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l1() {
        /*
            r8 = this;
            java.lang.String r0 = r8.f14980V0     // Catch: java.lang.Exception -> L52
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L9
            goto Ld
        L9:
            com.beizi.fusion.widget.BZVideoView r0 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            if (r0 != 0) goto Le
        Ld:
            return
        Le:
            com.beizi.fusion.pi r0 = r8.f15009r0     // Catch: java.lang.Exception -> L52
            java.lang.String r0 = r0.g()     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.pi r1 = r8.f15009r0     // Catch: java.lang.Exception -> L52
            boolean r1 = r1.h()     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.widget.BZVideoView r2 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.e4$e r3 = new com.beizi.fusion.e4$e     // Catch: java.lang.Exception -> L52
            r3.<init>()     // Catch: java.lang.Exception -> L52
            r2.setPlayProgressCallback(r3)     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.widget.BZVideoView r2 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            java.lang.String r3 = r8.f14980V0     // Catch: java.lang.Exception -> L52
            r2.initVideoResource(r3, r0, r1)     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.widget.BZVideoView r0 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            r1 = 0
            r0.setVisibility(r1)     // Catch: java.lang.Exception -> L52
            android.content.Context r0 = r8.f14977U     // Catch: java.lang.Exception -> L52
            float r1 = r8.f14985Y     // Catch: java.lang.Exception -> L52
            int r0 = com.beizi.fusion.vo.a(r0, r1)     // Catch: java.lang.Exception -> L52
            double r0 = (double) r0     // Catch: java.lang.Exception -> L52
            r2 = 4598805723493108285(0x3fd23d70a3d70a3d, double:0.285)
            double r0 = r0 * r2
            int r0 = (int) r0     // Catch: java.lang.Exception -> L52
            float r1 = r8.f14987Z     // Catch: java.lang.Exception -> L52
            r2 = 0
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 1101004800(0x41a00000, float:20.0)
            if (r2 <= 0) goto L54
            android.content.Context r2 = r8.f14977U     // Catch: java.lang.Exception -> L52
            float r1 = r1 - r3
            int r1 = com.beizi.fusion.vo.a(r2, r1)     // Catch: java.lang.Exception -> L52
            goto L7d
        L52:
            r0 = move-exception
            goto Lad
        L54:
            com.beizi.fusion.pi r1 = r8.f15009r0     // Catch: java.lang.Exception -> L52
            if (r1 == 0) goto L70
            int r1 = r1.m()     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.pi r2 = r8.f15009r0     // Catch: java.lang.Exception -> L52
            int r2 = r2.o()     // Catch: java.lang.Exception -> L52
            double r4 = (double) r1     // Catch: java.lang.Exception -> L52
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r4 = r4 * r6
            double r1 = (double) r2     // Catch: java.lang.Exception -> L52
            double r4 = r4 / r1
            float r1 = (float) r4     // Catch: java.lang.Exception -> L52
            r2 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 <= 0) goto L70
            goto L73
        L70:
            r1 = 1071225242(0x3fd9999a, float:1.7)
        L73:
            float r2 = (float) r0     // Catch: java.lang.Exception -> L52
            float r2 = r2 / r1
            int r1 = (int) r2     // Catch: java.lang.Exception -> L52
            android.content.Context r2 = r8.f14977U     // Catch: java.lang.Exception -> L52
            int r2 = com.beizi.fusion.vo.a(r2, r3)     // Catch: java.lang.Exception -> L52
            int r1 = r1 - r2
        L7d:
            com.beizi.fusion.widget.BZVideoView r2 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            android.view.ViewGroup$LayoutParams r2 = r2.getLayoutParams()     // Catch: java.lang.Exception -> L52
            if (r2 == 0) goto L8e
            r2.width = r0     // Catch: java.lang.Exception -> L52
            r2.height = r1     // Catch: java.lang.Exception -> L52
            com.beizi.fusion.widget.BZVideoView r0 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            r0.setLayoutParams(r2)     // Catch: java.lang.Exception -> L52
        L8e:
            android.widget.RelativeLayout r0 = r8.f13675k1     // Catch: java.lang.Exception -> L52
            if (r0 == 0) goto L9b
            java.lang.String r1 = "#000000"
            int r1 = android.graphics.Color.parseColor(r1)     // Catch: java.lang.Exception -> L52
            r0.setBackgroundColor(r1)     // Catch: java.lang.Exception -> L52
        L9b:
            com.beizi.fusion.widget.BZVideoView r0 = r8.f14978U0     // Catch: java.lang.Exception -> L52
            r8.a(r0)     // Catch: java.lang.Exception -> L52
            r8.j1()     // Catch: java.lang.Exception -> L52
            r8.k1()     // Catch: java.lang.Exception -> L52
            r8.g1()     // Catch: java.lang.Exception -> L52
            r8.a1()     // Catch: java.lang.Exception -> L52
            return
        Lad:
            r0.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.e4.l1():void");
    }

    @Override // com.beizi.fusion.m3
    public void c1() {
        try {
            if (this.f15009r0 == null) {
                a(-991);
                return;
            }
            View viewInflate = LayoutInflater.from(this.f14977U).inflate(R.layout.beizi_layout_native_left_text_right_picture_view, (ViewGroup) null);
            this.f15011t0 = viewInflate;
            this.f13668d1 = (RelativeLayout) viewInflate.findViewById(R.id.native_ad_ltrg_content_rl);
            LinearLayout linearLayout = (LinearLayout) this.f15011t0.findViewById(R.id.native_ad_ltrg_title_ll);
            this.f13669e1 = (TextView) this.f15011t0.findViewById(R.id.native_ad_ltrg_title_tv);
            RelativeLayout relativeLayout = (RelativeLayout) this.f15011t0.findViewById(R.id.native_ad_ltrg_subtitle_rl);
            this.f13670f1 = (TextView) this.f15011t0.findViewById(R.id.native_ad_ltrg_subtitle_tv);
            this.f13671g1 = (TextView) this.f15011t0.findViewById(R.id.native_ad_ltrg_go_tv);
            this.f13672h1 = (ImageView) this.f15011t0.findViewById(R.id.native_ad_ltrg_go_iv);
            this.f13675k1 = (RelativeLayout) this.f15011t0.findViewById(R.id.native_ad_ltrg_image_rl);
            this.f13674j1 = (CustomRoundImageView) this.f15011t0.findViewById(R.id.native_ad_ltrg_image_iv);
            this.f14978U0 = (BZVideoView) this.f15011t0.findViewById(R.id.native_ad_ltrg_video_iv);
            this.f13673i1 = (ImageView) this.f15011t0.findViewById(R.id.native_ad_ltrg_ad_text_iv);
            RelativeLayout relativeLayout2 = this.f13668d1;
            if (relativeLayout2 != null) {
                relativeLayout2.setPadding(0, vo.a(this.f14977U, 10.0f), vo.a(this.f14977U, 10.0f), 0);
            }
            if (linearLayout != null) {
                linearLayout.setPadding(vo.a(this.f14977U, 20.0f), vo.a(this.f14977U, 8.0f), vo.a(this.f14977U, 11.0f), 0);
            }
            String strB = this.f15009r0.b();
            if (this.f13669e1 != null && !TextUtils.isEmpty(strB)) {
                this.f13669e1.setText(strB);
            }
            if (relativeLayout != null) {
                relativeLayout.setPadding(0, vo.a(this.f14977U, 5.0f), 0, 0);
            }
            String strD = this.f15009r0.d();
            if (this.f13670f1 != null && !TextUtils.isEmpty(strD)) {
                this.f13670f1.setText(strD);
            }
            ImageView imageView = this.f13673i1;
            if (imageView != null) {
                imageView.setPadding(0, vo.a(this.f14977U, 10.0f), 0, 0);
            }
            TextView textView = this.f13671g1;
            if (textView != null) {
                yn.a(textView, "#71A0FF", 0, null, vo.a(this.f14977U, 10.0f));
            }
            a(this.f13671g1, this.f13672h1);
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
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(65, 65);
            imageView.setPadding(15, 8, 8, 15);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.beizi_close);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(65, 65);
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
            if (bitmap != null) {
                try {
                    if (e4.this.f14977U == null) {
                        return;
                    }
                    bitmap.getWidth();
                    bitmap.getHeight();
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    float f2 = (float) ((width * 1.0d) / height);
                    e4 e4Var = e4.this;
                    int iA = (int) (vo.a(e4Var.f14977U, e4Var.f14985Y) * 0.285d);
                    e4 e4Var2 = e4.this;
                    float f3 = e4Var2.f14987Z;
                    int iA2 = f3 > 0.0f ? vo.a(e4Var2.f14977U, f3) - vo.a(e4.this.f14977U, 20.0f) : (int) (iA / f2);
                    e4 e4Var3 = e4.this;
                    e4Var3.f14957A0 = iA;
                    e4Var3.f14958B0 = iA2;
                    if (iA2 < 0) {
                        e4Var3.f14958B0 = height;
                    }
                    if (e4Var3.f13674j1 != null) {
                        e4.this.f13674j1.setVisibility(0);
                        ViewGroup.LayoutParams layoutParams = e4.this.f13674j1.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.width = iA;
                            layoutParams.height = iA2;
                            e4.this.f13674j1.setLayoutParams(layoutParams);
                        }
                    }
                    if (e4.this.f13674j1 != null) {
                        e4.this.f13674j1.setRectRadius(vo.a(e4.this.f14977U, 8.0f));
                        e4 e4Var4 = e4.this;
                        e4Var4.a(iA, iA2, f2, bitmap, e4Var4.f13674j1);
                        e4.this.f13674j1.setImageBitmap(bitmap);
                    }
                    e4 e4Var5 = e4.this;
                    e4Var5.a(e4Var5.f13674j1);
                    e4.this.j1();
                    e4.this.k1();
                    e4.this.g1();
                    e4.this.a1();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            e4.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
        }
    }
}
