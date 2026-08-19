package com.beizi.fusion.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.a4;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.yn;
import com.sigmob.sdk.base.common.C1244a;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class EulerAngleView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private boolean f17088a;

    /* renamed from: b, reason: collision with root package name */
    private Context f17089b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f17090c;

    /* renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleRenderBean f17091d;

    /* renamed from: e, reason: collision with root package name */
    private LinearLayout f17092e;

    /* renamed from: f, reason: collision with root package name */
    private RelativeLayout f17093f;

    /* renamed from: g, reason: collision with root package name */
    private ImageView f17094g;

    /* renamed from: h, reason: collision with root package name */
    private ShakeArcView f17095h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f17096i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f17097j;

    /* renamed from: k, reason: collision with root package name */
    private float f17098k;

    /* renamed from: l, reason: collision with root package name */
    private float f17099l;

    /* renamed from: m, reason: collision with root package name */
    private float f17100m;

    /* renamed from: n, reason: collision with root package name */
    private int f17101n;

    /* renamed from: o, reason: collision with root package name */
    private int f17102o;

    /* renamed from: p, reason: collision with root package name */
    private int f17103p;

    /* renamed from: q, reason: collision with root package name */
    private double f17104q;

    /* renamed from: r, reason: collision with root package name */
    private double f17105r;

    /* renamed from: s, reason: collision with root package name */
    private double f17106s;

    /* renamed from: t, reason: collision with root package name */
    private String f17107t;

    /* renamed from: u, reason: collision with root package name */
    private String f17108u;

    /* renamed from: v, reason: collision with root package name */
    private String f17109v;

    /* renamed from: w, reason: collision with root package name */
    private AnimatorSet f17110w;

    /* renamed from: x, reason: collision with root package name */
    private Boolean f17111x;

    public class a implements a4.c {
        public a() {
        }

        @Override // com.beizi.fusion.a4.c
        public void a() {
        }

        @Override // com.beizi.fusion.a4.c
        public void a(Bitmap bitmap) {
            try {
                if (EulerAngleView.this.f17094g == null || bitmap == null) {
                    return;
                }
                EulerAngleView.this.f17094g.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements Animator.AnimatorListener {
        public b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            try {
                if (EulerAngleView.this.f17110w != null) {
                    EulerAngleView.this.f17110w.start();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public EulerAngleView(Context context) {
        super(context);
        this.f17088a = false;
        this.f17098k = 60.0f;
        this.f17099l = 60.0f;
        this.f17100m = 30.0f;
        this.f17101n = 350;
        this.f17104q = 0.0d;
        this.f17105r = 0.0d;
        this.f17106s = 0.0d;
        init(context);
    }

    public void buildEulerAngleView() {
        String downloadSubTitle;
        TextView textView;
        TextView textView2;
        List<String> imgs;
        try {
            if (this.f17090c == null) {
                return;
            }
            View.inflate(getContext(), R.layout.beizi_interaction_euler_angle_view, this);
            this.f17092e = (LinearLayout) findViewById(R.id.bz_eav_container_ll);
            this.f17093f = (RelativeLayout) findViewById(R.id.bz_eav_img_container_rl);
            this.f17094g = (ImageView) findViewById(R.id.bz_eav_img_iv);
            this.f17095h = (ShakeArcView) findViewById(R.id.bz_eav_sav_iv);
            this.f17096i = (TextView) findViewById(R.id.bz_eav_title_tv);
            this.f17097j = (TextView) findViewById(R.id.bz_eav_subtitle_tv);
            RelativeLayout relativeLayout = this.f17093f;
            if (relativeLayout != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.width = this.f17102o;
                layoutParams.height = this.f17103p;
                this.f17093f.setLayoutParams(layoutParams);
            }
            ImageView imageView = this.f17094g;
            if (imageView != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams2.width = (int) (this.f17102o * 0.35d);
                double d2 = this.f17103p;
                layoutParams2.height = (int) (0.5d * d2);
                layoutParams2.setMargins(0, 0, 0, (int) (d2 * 0.2d));
                this.f17094g.setLayoutParams(layoutParams2);
            }
            ShakeArcView shakeArcView = this.f17095h;
            if (shakeArcView != null) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) shakeArcView.getLayoutParams();
                layoutParams3.width = (int) (Math.min(this.f17102o, this.f17103p) * 0.7d);
                layoutParams3.height = (int) (Math.min(this.f17102o, this.f17103p) * 0.7d);
                this.f17095h.setLayoutParams(layoutParams3);
                if (!TextUtils.isEmpty(this.f17107t)) {
                    this.f17095h.setArrowDirection(0);
                } else if (("1".equals(this.f17108u) && "1".equals(this.f17109v)) || ((TextUtils.isEmpty(this.f17108u) && "1".equals(this.f17109v)) || (TextUtils.isEmpty(this.f17109v) && "1".equals(this.f17108u)))) {
                    this.f17095h.setArrowDirection(1);
                } else if (("2".equals(this.f17108u) && "2".equals(this.f17109v)) || ((TextUtils.isEmpty(this.f17108u) && "2".equals(this.f17109v)) || (TextUtils.isEmpty(this.f17109v) && "2".equals(this.f17108u)))) {
                    this.f17095h.setArrowDirection(2);
                }
                try {
                    this.f17095h.setLineWidth(Math.min(this.f17102o, this.f17103p) / 30);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean = this.f17091d;
            String color = eulerAngleRenderBean != null ? eulerAngleRenderBean.getColor() : "#66333333";
            String title = null;
            if (!TextUtils.isEmpty(color) && color.startsWith("#")) {
                yn.a(this.f17093f, color, 0, null, this.f17102o / 2);
            }
            AdSpacesBean.BuyerBean.EulerAngleStyleBean style = this.f17090c.getStyle();
            String str = (style == null || (imgs = style.getImgs()) == null || imgs.size() <= 0) ? null : imgs.get(0);
            if (!TextUtils.isEmpty(str)) {
                a4.a(this.f17089b).b(str, new a());
            }
            ShakeArcView shakeArcView2 = this.f17095h;
            if (shakeArcView2 != null) {
                shakeArcView2.setMaxProgress(100.0d);
            }
            if (style != null) {
                title = style.getTitle();
                if (this.f17111x.booleanValue()) {
                    downloadSubTitle = style.getDownloadSubTitle();
                    if (TextUtils.isEmpty(downloadSubTitle)) {
                        downloadSubTitle = "下载应用";
                    }
                } else {
                    downloadSubTitle = style.getSubTitle();
                }
            } else {
                downloadSubTitle = null;
            }
            if (!TextUtils.isEmpty(title) && (textView2 = this.f17096i) != null) {
                textView2.setText(title);
                this.f17096i.setTextColor(Color.parseColor("#FFFFFFFF"));
                this.f17096i.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
            if (TextUtils.isEmpty(downloadSubTitle) || (textView = this.f17097j) == null) {
                return;
            }
            textView.setText(downloadSubTitle);
            this.f17097j.setTextColor(Color.parseColor("#FFFFFFFF"));
            this.f17097j.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void init(Context context) {
        if (this.f17088a) {
            return;
        }
        this.f17089b = context;
        this.f17088a = true;
    }

    public void onDestroy() {
        try {
            this.f17089b = null;
            AnimatorSet animatorSet = this.f17110w;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.f17110w = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setAngle(double d2, double d3, double d4) {
        this.f17104q = d2;
        this.f17105r = d3;
        this.f17106s = d4;
    }

    public void setAnimationViewWidthAndHeight(int i2, int i3) {
        this.f17102o = i2;
        this.f17103p = i3;
    }

    public void setCurrentProgress(double d2, double d3, double d4) {
        try {
            if (this.f17095h != null) {
                double dAbs = 0.0d;
                double dAbs2 = (this.f17104q <= 0.0d || ((!"2".equals(this.f17107t) || d2 <= 0.0d) && !(("1".equals(this.f17107t) && d2 < 0.0d) || "0".equals(this.f17107t) || "3".equals(this.f17107t)))) ? 0.0d : (Math.abs(d2) * 100.0d) / this.f17104q;
                double dAbs3 = (this.f17105r <= 0.0d || ((!"2".equals(this.f17108u) || d3 >= 0.0d) && !(("1".equals(this.f17108u) && d3 > 0.0d) || "0".equals(this.f17108u) || "3".equals(this.f17108u)))) ? 0.0d : (Math.abs(d3) * 100.0d) / this.f17105r;
                if (this.f17106s > 0.0d && (("2".equals(this.f17109v) && d4 > 0.0d) || (("1".equals(this.f17109v) && d4 < 0.0d) || "0".equals(this.f17109v) || "3".equals(this.f17109v)))) {
                    dAbs = (Math.abs(d4) * 100.0d) / this.f17106s;
                }
                this.f17095h.setCurrentProgress(Math.max(Math.max(dAbs2, dAbs3), dAbs));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setDownloadApp(Boolean bool) {
        this.f17111x = bool;
    }

    public void setEulerAngleRenderBean(AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean) {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            this.f17091d = eulerAngleRenderBean;
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f17090c;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null) {
                        String direction = eulerAngleRuleBean.getDirection();
                        if ("x".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            this.f17107t = direction;
                        } else if ("y".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            this.f17108u = direction;
                        } else if (bv.aD.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            this.f17109v = direction;
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setEulerAngleViewRuleBean(AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean) {
        this.f17090c = eulerAngleViewRuleBean;
    }

    public void startContinuousRotations() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f17090c;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                ArrayList arrayList = new ArrayList();
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null && eulerAngleRuleBean.getAngle() != 0.0d) {
                        if ("x".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if ("2".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationX", 0.0f, -this.f17098k);
                                a(arrayList, "rotationX", -this.f17098k, 0.0f);
                            } else if ("1".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationX", 0.0f, this.f17098k);
                                a(arrayList, "rotationX", this.f17098k, 0.0f);
                            } else {
                                a(arrayList, "rotationX", 0.0f, this.f17098k);
                                a(arrayList, "rotationX", this.f17098k, 0.0f);
                                a(arrayList, "rotationX", 0.0f, -this.f17098k);
                                a(arrayList, "rotationX", -this.f17098k, 0.0f);
                            }
                        } else if ("y".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if ("2".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationY", 0.0f, -this.f17099l);
                                a(arrayList, "rotationY", -this.f17099l, 0.0f);
                            } else if ("1".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationY", 0.0f, this.f17099l);
                                a(arrayList, "rotationY", this.f17099l, 0.0f);
                            } else {
                                a(arrayList, "rotationY", 0.0f, this.f17099l);
                                a(arrayList, "rotationY", this.f17099l, 0.0f);
                                a(arrayList, "rotationY", 0.0f, -this.f17099l);
                                a(arrayList, "rotationY", -this.f17099l, 0.0f);
                            }
                        } else if (bv.aD.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if ("2".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, C1244a.f35650B, 0.0f, -this.f17100m);
                                a(arrayList, C1244a.f35650B, -this.f17100m, 0.0f);
                            } else if ("1".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, C1244a.f35650B, 0.0f, this.f17100m);
                                a(arrayList, C1244a.f35650B, this.f17100m, 0.0f);
                            } else {
                                a(arrayList, C1244a.f35650B, 0.0f, this.f17100m);
                                a(arrayList, C1244a.f35650B, this.f17100m, 0.0f);
                                a(arrayList, C1244a.f35650B, 0.0f, -this.f17100m);
                                a(arrayList, C1244a.f35650B, -this.f17100m, 0.0f);
                            }
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    this.f17110w = animatorSet;
                    animatorSet.addListener(new b());
                    this.f17110w.playSequentially(arrayList);
                    this.f17110w.start();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(List list, String str, float f2, float f3) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f17094g, str, f2, f3);
            objectAnimatorOfFloat.setDuration(this.f17101n);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public EulerAngleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17088a = false;
        this.f17098k = 60.0f;
        this.f17099l = 60.0f;
        this.f17100m = 30.0f;
        this.f17101n = 350;
        this.f17104q = 0.0d;
        this.f17105r = 0.0d;
        this.f17106s = 0.0d;
        init(context);
    }

    public EulerAngleView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17088a = false;
        this.f17098k = 60.0f;
        this.f17099l = 60.0f;
        this.f17100m = 30.0f;
        this.f17101n = 350;
        this.f17104q = 0.0d;
        this.f17105r = 0.0d;
        this.f17106s = 0.0d;
        init(context);
    }
}
