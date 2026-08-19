package com.byazt.qfg;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.qfg.q;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.xci.nr;
import com.byazt.ymw.di;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD, 38})
/* loaded from: classes3.dex */
public class j extends jx implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public RelativeLayout f24668a;
    public View.OnClickListener cx;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f24669e;
    public ImageView eb;
    public TextView ec;
    public ImageView gu;
    public TextView jl;

    /* renamed from: k, reason: collision with root package name */
    public TextView f24670k;

    /* renamed from: n, reason: collision with root package name */
    public TextView f24671n;
    public di ns;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f24672q;

    /* renamed from: s, reason: collision with root package name */
    public View f24673s;
    public RelativeLayout sz;

    /* renamed from: u, reason: collision with root package name */
    public View f24674u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f24675v;
    public TextView vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.qt.eb f24676w;
    public RelativeLayout xs;
    public TextView zy;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws JSONException {
        int i2 = view.getId() == 2114387553 ? 0 : view.getId() == 2114387561 ? 1 : view.getId() == 2114387556 ? 2 : view.getId() == 2114387555 ? 3 : view.getId() == 2114387554 ? 4 : 5;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("splash_card_click_type", i2);
            com.byazt.jdb.j.l(this.jx, "splash_ad", "splash_card_click", jSONObject);
        } catch (JSONException unused) {
        }
        View.OnClickListener onClickListener = this.cx;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable a() {
        return new Runnable() { // from class: com.byazt.qfg.j.8
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.eb.getWidth() == 0 || j.this.eb.getHeight() == 0) {
                    return;
                }
                j.this.eb.animate().scaleX(j.this.f24668a.getWidth() / j.this.eb.getWidth()).scaleY(j.this.f24668a.getHeight() / j.this.eb.getHeight()).setInterpolator(new OvershootInterpolator(0.0f)).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.byazt.qfg.j.8.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        j.this.eb.setVisibility(8);
                        j.this.f24668a.setVisibility(0);
                        j.this.f24672q.setScaleX(0.0f);
                        j.this.f24672q.setScaleY(0.0f);
                        j.this.f24672q.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        j.this.jl.setScaleX(0.0f);
                        j.this.jl.setScaleY(0.0f);
                        j.this.jl.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        j.this.zy.setScaleX(0.0f);
                        j.this.zy.setScaleY(0.0f);
                        j.this.zy.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        j.this.xs.setScaleX(0.0f);
                        j.this.xs.setScaleY(0.0f);
                        j.this.xs.animate().scaleX(1.0f).scaleY(1.0f).setDuration(400L).start();
                        q.hp hpVar = j.this.f24678j;
                        if (hpVar != null) {
                            hpVar.hp(nr.a(r5.jx));
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        };
    }

    private View hp(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.setBackgroundColor(Color.parseColor("#B3000000"));
        relativeLayout.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.f24668a = relativeLayout2;
        relativeLayout2.setId(2114387562);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 280.0f, resources.getDisplayMetrics()), -2);
        layoutParams2.addRule(13);
        this.f24668a.setClipChildren(false);
        this.f24668a.setVisibility(4);
        this.f24668a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f24668a);
        ImageView imageView = new ImageView(context);
        this.f24673s = imageView;
        imageView.setId(2114387561);
        this.f24673s.setLayoutParams(new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 280.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 370.0f, resources.getDisplayMetrics())));
        this.f24668a.addView(this.f24673s);
        RelativeLayout relativeLayout3 = new RelativeLayout(context);
        relativeLayout3.setId(2114387560);
        relativeLayout3.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 130.0f, resources.getDisplayMetrics())));
        this.f24668a.addView(relativeLayout3);
        TextView textView = new TextView(context);
        this.f24670k = textView;
        textView.setId(2114387559);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 40.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 24.0f, resources.getDisplayMetrics()));
        layoutParams3.addRule(10);
        layoutParams3.addRule(21);
        layoutParams3.topMargin = xh.jx(context, 8.0f);
        layoutParams3.bottomMargin = xh.jx(context, 10.0f);
        layoutParams3.rightMargin = xh.jx(context, 4.0f);
        this.f24670k.setLayoutParams(layoutParams3);
        v.hp(this.hp, "tt_splash_card_feedback_bg", this.f24670k, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.f24670k.setGravity(17);
        this.f24670k.setText("反馈");
        this.f24670k.setTextColor(Color.parseColor("#99FFFFFF"));
        this.f24670k.setTextSize(2, 12.0f);
        relativeLayout3.addView(this.f24670k);
        RelativeLayout relativeLayout4 = new RelativeLayout(context);
        this.f24669e = relativeLayout4;
        relativeLayout4.setId(2114387558);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 240.0f, resources.getDisplayMetrics()));
        layoutParams4.addRule(3, 2114387560);
        this.f24669e.setLayoutParams(layoutParams4);
        this.f24669e.setBackgroundColor(Color.parseColor("#D9FFFFFF"));
        this.f24668a.addView(this.f24669e);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f24672q = frameLayout;
        frameLayout.setId(2114387557);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 84.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 84.0f, resources.getDisplayMetrics()));
        layoutParams5.addRule(14);
        layoutParams5.topMargin = xh.jx(context, -42.0f);
        this.f24672q.setElevation(xh.jx(context, 3.0f));
        this.f24672q.setLayoutParams(layoutParams5);
        this.f24669e.addView(this.f24672q);
        ImageView imageView2 = new ImageView(context);
        this.gu = imageView2;
        imageView2.setId(2114387556);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.setMargins(xh.jx(context, 2.0f), xh.jx(context, 2.0f), xh.jx(context, 2.0f), xh.jx(context, 2.0f));
        this.gu.setLayoutParams(layoutParams6);
        this.f24672q.addView(this.gu);
        View view = new View(context);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        int iJx = xh.jx(context, 6.0f);
        gradientDrawable.setCornerRadius(iJx);
        gradientDrawable.setStroke(iJx / 3, -1);
        view.setBackground(gradientDrawable);
        this.f24672q.addView(view);
        TextView textView2 = new TextView(context);
        this.jl = textView2;
        textView2.setId(2114387555);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(3, 2114387557);
        layoutParams7.addRule(14);
        layoutParams7.topMargin = xh.jx(context, 16.0f);
        this.jl.setLayoutParams(layoutParams7);
        TextView textView3 = this.jl;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView3.setEllipsize(truncateAt);
        this.jl.setMaxLines(1);
        this.jl.setTextColor(Color.parseColor("#161823"));
        this.jl.setTextSize(2, 20.0f);
        this.f24669e.addView(this.jl);
        TextView textView4 = new TextView(context);
        this.zy = textView4;
        textView4.setId(2114387554);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(3, 2114387555);
        layoutParams8.addRule(14);
        layoutParams8.setMarginStart(xh.jx(context, 42.0f));
        layoutParams8.setMarginEnd(xh.jx(context, 42.0f));
        layoutParams8.topMargin = xh.jx(context, 8.0f);
        this.zy.setLayoutParams(layoutParams8);
        this.zy.setEllipsize(truncateAt);
        this.zy.setGravity(1);
        this.zy.setMaxLines(2);
        this.zy.setTextColor(Color.parseColor("#90161823"));
        this.zy.setTextSize(2, 14.0f);
        this.f24669e.addView(this.zy);
        RelativeLayout relativeLayout5 = new RelativeLayout(context);
        this.xs = relativeLayout5;
        relativeLayout5.setId(2114387553);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 192.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 36.0f, resources.getDisplayMetrics()));
        layoutParams9.addRule(3, 2114387554);
        layoutParams9.addRule(14);
        layoutParams9.topMargin = xh.jx(context, 36.0f);
        this.xs.setLayoutParams(layoutParams9);
        v.hp(this.hp, "tt_splash_card_btn_bg", this.xs, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.xs.setGravity(17);
        this.f24669e.addView(this.xs);
        TextView textView5 = new TextView(context);
        this.vv = textView5;
        textView5.setId(2114387552);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams10.addRule(14);
        this.vv.setLayoutParams(layoutParams10);
        this.vv.setEllipsize(truncateAt);
        this.vv.setMaxLines(1);
        this.vv.setTextColor(Color.parseColor("#FFFFFF"));
        this.vv.setTextSize(2, 14.0f);
        this.vv.setTypeface(Typeface.defaultFromStyle(1));
        this.xs.addView(this.vv);
        TextView textView6 = new TextView(context);
        this.ec = textView6;
        textView6.setId(2114387551);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams11.addRule(3, 2114387552);
        layoutParams11.addRule(14);
        this.ec.setLayoutParams(layoutParams11);
        this.ec.setEllipsize(truncateAt);
        this.ec.setMaxLines(1);
        this.ec.setTextColor(Color.parseColor("#AAFFFFFF"));
        this.ec.setTextSize(2, 11.0f);
        this.xs.addView(this.ec);
        RelativeLayout relativeLayout6 = new RelativeLayout(context);
        this.sz = relativeLayout6;
        relativeLayout6.setId(2114387550);
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 192.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 36.0f, resources.getDisplayMetrics()));
        layoutParams12.addRule(3, 2114387554);
        layoutParams12.addRule(14);
        layoutParams12.topMargin = xh.jx(context, 36.0f);
        this.sz.setLayoutParams(layoutParams12);
        v.hp(this.hp, "tt_splash_card_btn_bg", this.sz, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.sz.setVisibility(8);
        this.f24669e.addView(this.sz);
        RelativeLayout relativeLayout7 = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams13.addRule(13);
        relativeLayout7.setLayoutParams(layoutParams13);
        this.sz.addView(relativeLayout7);
        View imageView3 = new ImageView(context);
        imageView3.setId(2114387549);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 23.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 24.0f, resources.getDisplayMetrics()));
        layoutParams14.addRule(9);
        layoutParams14.addRule(15);
        imageView3.setLayoutParams(layoutParams14);
        v.hp(this.hp, "tt_splash_card_shake", imageView3, 160);
        relativeLayout7.addView(imageView3);
        TextView textView7 = new TextView(context);
        this.f24671n = textView7;
        textView7.setId(2114387548);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams15.leftMargin = xh.jx(context, 8.0f);
        layoutParams15.addRule(1, 2114387549);
        layoutParams15.addRule(15);
        this.f24671n.setLayoutParams(layoutParams15);
        this.f24671n.setEllipsize(truncateAt);
        this.f24671n.setTypeface(Typeface.defaultFromStyle(1));
        this.f24671n.setMaxLines(1);
        this.f24671n.setTextColor(Color.parseColor("#FFFFFF"));
        this.f24671n.setTextSize(2, 13.0f);
        relativeLayout7.addView(this.f24671n);
        TextView textView8 = new TextView(context);
        this.f24675v = textView8;
        textView8.setId(2114387546);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams16.addRule(20);
        layoutParams16.addRule(12);
        layoutParams16.setMarginStart(xh.jx(context, 8.0f));
        layoutParams16.bottomMargin = xh.jx(context, 8.0f);
        this.f24675v.setLayoutParams(layoutParams16);
        com.byazt.ij.j.hp(this.hp, 1, this.f24675v);
        this.f24669e.addView(this.f24675v);
        ImageView imageView4 = new ImageView(context);
        this.f24674u = imageView4;
        imageView4.setId(2114387547);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 32.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 32.0f, resources.getDisplayMetrics()));
        layoutParams17.addRule(3, 2114387562);
        layoutParams17.addRule(14);
        layoutParams17.topMargin = xh.jx(context, 48.0f);
        this.f24674u.setLayoutParams(layoutParams17);
        v.hp(this.hp, "tt_splash_card_close", this.f24674u, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayout.addView(this.f24674u);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.eb = tTRoundRectImageView;
        tTRoundRectImageView.setId(2114387545);
        this.eb.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.eb.setScaleType(ImageView.ScaleType.CENTER_CROP);
        relativeLayout.addView(this.eb);
        return relativeLayout;
    }

    public String j() {
        mp mpVar = this.jx;
        return (mpVar == null || TextUtils.isEmpty(mpVar.v_())) ? "" : this.jx.v_();
    }

    public String jx() {
        mp mpVar = this.jx;
        return mpVar == null ? "" : !TextUtils.isEmpty(mpVar.qk()) ? this.jx.qk() : (this.jx.v() == null || TextUtils.isEmpty(this.jx.v().jx())) ? "" : this.jx.v().jx();
    }

    @Override // com.byazt.qfg.jx
    public void l() throws JSONException {
        if (nr.s(this.jx)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("splash_card_close_type", 2);
                com.byazt.jdb.j.l(this.jx, "splash_ad", "splash_card_close", jSONObject);
                q.hp hpVar = this.f24678j;
                if (hpVar != null) {
                    hpVar.l();
                }
            } catch (JSONException unused) {
            }
        }
    }

    public void w() {
        q.hp hpVar = this.f24678j;
        if (hpVar == null) {
            return;
        }
        if (this.f24676w == null) {
            this.f24676w = new com.byazt.ih.l(hpVar.getActivity(), this.jx.ju(), "splash_ad", true, com.byazt.ws.l.hp());
            com.byazt.jde.jx.hp(this.f24678j.getActivity(), this.jx, (com.byazt.ih.l) this.f24676w);
        }
        this.f24676w.setDislikeSource("splash_card");
        this.f24676w.showDislikeDialog();
    }

    @Override // com.byazt.qfg.jx
    public void hp(Context context, ViewGroup viewGroup, mp mpVar) {
        super.hp(context, viewGroup, mpVar);
        View viewHp = hp(this.hp);
        if (viewHp == null) {
            return;
        }
        this.f24679l.addView(viewHp);
        this.f24668a.setOutlineProvider(new ViewOutlineProvider() { // from class: com.byazt.qfg.j.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), xh.jx(sz.getContext(), 18.0f));
            }
        });
        this.f24668a.setClipToOutline(true);
        this.eb.setOutlineProvider(new ViewOutlineProvider() { // from class: com.byazt.qfg.j.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), xh.jx(sz.getContext(), 28.0f));
            }
        });
        this.eb.setClipToOutline(true);
        xh.hp(this.f24675v, this.jx);
        List<dy> listVi = this.jx.vi();
        if (listVi != null && listVi.size() > 0) {
            com.byazt.ws.l.hp(listVi.get(0)).type(2).config(Bitmap.Config.ARGB_8888).to(new b<Bitmap>() { // from class: com.byazt.qfg.j.3
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    Bitmap result = uVar.getResult();
                    if (result == null) {
                        return;
                    }
                    try {
                        if (result.getConfig() == Bitmap.Config.RGB_565) {
                            result = result.copy(Bitmap.Config.ARGB_8888, true);
                        }
                    } catch (Throwable unused) {
                    }
                    Bitmap bitmapHp = com.byazt.sq.l.hp(j.this.hp, result, 10);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(j.this.hp.getResources(), bitmapHp);
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.qfg.j.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (j.this.f24673s != null) {
                                j.this.f24673s.setBackground(bitmapDrawable);
                            }
                            if (j.this.eb != null) {
                                j.this.eb.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
        com.byazt.ws.l.hp(this.jx.nq()).to(this.gu);
        this.jl.setText(jx());
        this.zy.setText(j());
        this.f24670k.setVisibility(this.jx.jc() ? 0 : 8);
        this.f24670k.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qfg.j.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j.this.w();
            }
        });
        this.vv.setText(nr.j(this.jx));
        this.ec.setText(nr.jx(this.jx));
        hp(this.jx);
    }

    private void hp(mp mpVar) {
        if (mpVar == null || this.f24668a == null || nr.w(mpVar) != 1) {
            return;
        }
        xh.hp((View) this.sz, 0);
        xh.hp((View) this.xs, 8);
        TextView textView = this.f24671n;
        if (textView != null) {
            textView.setText(nr.j(mpVar));
        }
        if (this.ns == null) {
            this.ns = new di(sz.getContext(), 1, com.byazt.jz.s.u().j());
        }
        this.ns.l(this.jx.aj());
        this.ns.hp(this.jx.ki());
        this.ns.l(this.jx.sf());
        this.ns.a(this.jx.gv());
        this.ns.hp(mpVar.rm());
        this.ns.jx(mpVar.wj());
        this.ns.w(mpVar.cs());
        this.ns.hp(new di.hp() { // from class: com.byazt.qfg.j.5
            @Override // com.byazt.ymw.di.hp
            public void hp(int i2) {
                if (j.this.cx == null || !j.this.f24668a.isShown() || i2 != 1 || j.this.cx == null) {
                    return;
                }
                if (j.this.cx instanceof com.byazt.go.hp) {
                    ((com.byazt.ey.hp) ((com.byazt.go.hp) j.this.cx).hp(com.byazt.ey.hp.class)).hp();
                }
                j.this.cx.onClick(j.this.f24668a);
            }
        });
        di diVar = this.ns;
        mp mpVar2 = this.jx;
        diVar.hp(mpVar2 != null ? mpVar2.nu() : 0);
    }

    @Override // com.byazt.qfg.jx
    public void hp(com.byazt.go.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        this.cx = hpVar;
        if (nr.eb(this.jx)) {
            this.f24668a.setOnClickListener(this);
            this.f24673s.setOnClickListener(this);
            this.gu.setOnClickListener(this);
            this.jl.setOnClickListener(this);
            this.zy.setOnClickListener(this);
            this.f24669e.setOnClickListener(this);
        }
        this.xs.setOnClickListener(this);
    }

    @Override // com.byazt.qfg.jx
    public void hp(com.byazt.oh.j jVar, q.hp hpVar) {
        super.hp(jVar, hpVar);
        this.f24679l.post(new Runnable() { // from class: com.byazt.qfg.j.6
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f24668a.isAttachedToWindow()) {
                    j.this.a().run();
                } else {
                    j jVar2 = j.this;
                    jVar2.f24679l.postDelayed(jVar2.a(), 20L);
                }
            }
        });
        if (this.f24678j != null) {
            this.f24674u.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qfg.j.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) throws JSONException {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("splash_card_close_type", 1);
                        com.byazt.jdb.j.l(j.this.jx, "splash_ad", "splash_card_close", jSONObject);
                    } catch (JSONException unused) {
                    }
                    j.this.f24678j.l();
                }
            });
        }
        nr.q(this.jx);
    }

    @Override // com.byazt.qfg.jx
    public String hp() {
        return "splash_card_show";
    }

    @Override // com.byazt.qfg.jx
    public void hp(boolean z2) {
        super.hp(z2);
        q.hp hpVar = this.f24678j;
        if (hpVar == null) {
            return;
        }
        if (z2) {
            hpVar.hp(-1L);
        } else {
            hpVar.hp();
        }
        di diVar = this.ns;
        if (diVar != null) {
            if (z2) {
                mp mpVar = this.jx;
                diVar.hp(mpVar != null ? mpVar.nu() : 0);
            } else {
                mp mpVar2 = this.jx;
                diVar.l(mpVar2 != null ? mpVar2.nu() : 0);
            }
        }
    }
}
