package com.byazt.moz;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.ij.a;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.moz.hp;
import com.byazt.xci.ea;
import com.byazt.xci.lv;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.yni.RewardFullBaseLayout;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 746, 34})
/* loaded from: classes3.dex */
public class l implements hp {

    /* renamed from: a, reason: collision with root package name */
    public int f23175a;

    /* renamed from: e, reason: collision with root package name */
    public int f23176e;
    public int eb;
    public LinearLayout ec;
    public int gu;
    public TextView jl;
    public jx jx;

    /* renamed from: k, reason: collision with root package name */
    public int f23178k;

    /* renamed from: l, reason: collision with root package name */
    public final hp.InterfaceC0311hp f23179l;

    /* renamed from: q, reason: collision with root package name */
    public int f23181q;

    /* renamed from: s, reason: collision with root package name */
    public int f23182s;
    public TranslateAnimation sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f23183u;

    /* renamed from: v, reason: collision with root package name */
    public LinearLayout f23184v;
    public LinearLayout vv;

    /* renamed from: w, reason: collision with root package name */
    public TextView f23185w;
    public SmallSlideView xs;
    public TextView zy;
    public final AtomicBoolean hp = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public boolean f23177j = true;

    /* renamed from: n, reason: collision with root package name */
    public boolean f23180n = false;
    public boolean ns = false;
    public boolean cx = false;

    @com.byazt.kj.hp(hp = {0, 1, 746, 22})
    /* renamed from: com.byazt.moz.l$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.f23179l.hp().hp(new RewardFullBaseLayout.hp() { // from class: com.byazt.moz.l.1.1
                @Override // com.byazt.yni.RewardFullBaseLayout.hp
                public void hp() {
                    j jVar = new j();
                    jVar.hp = false;
                    jVar.jx = true;
                    jVar.f23159j = true;
                    l.this.f23179l.hp().hp();
                    l.this.f23179l.getActivity().hp(3, jVar);
                }
            });
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) l.this.ec.getLayoutParams();
            layoutParams.bottomMargin = -l.this.ec.getMeasuredHeight();
            l.this.ec.setLayoutParams(layoutParams);
            l.this.ec.setVisibility(0);
            l.this.sz = new TranslateAnimation(0.0f, 0.0f, 0.0f, -l.this.ec.getMeasuredHeight());
            l.this.sz.setDuration(300L);
            l.this.sz.setRepeatCount(3);
            l.this.sz.setRepeatMode(2);
            l.this.sz.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.moz.l.1.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (l.this.f23180n) {
                        l.this.ec.postDelayed(new Runnable() { // from class: com.byazt.moz.l.1.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (l.this.f23180n && l.this.sz != null) {
                                    l.this.f23179l.hp().getSceneFrameContainer().startAnimation(l.this.sz);
                                }
                            }
                        }, 2000L);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    l.this.xs.hp();
                }
            });
            if (l.this.sz != null) {
                l.this.f23179l.hp().getSceneFrameContainer().startAnimation(l.this.sz);
            }
        }
    }

    public l(hp.InterfaceC0311hp interfaceC0311hp) {
        this.f23179l = interfaceC0311hp;
    }

    private void e() {
        String str;
        this.eb = this.f23179l.w() + (lv.q() / 1000);
        this.vv = new LinearLayout(this.f23179l.getActivity());
        int iJx = xh.jx(this.f23179l.getActivity(), 10.0f);
        this.vv.setPadding(iJx, iJx, iJx, iJx);
        this.vv.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#242424"));
        gradientDrawable.setCornerRadius(com.byazt.ruu.hp.l().hp(this.f23179l.getActivity(), 12.0f));
        this.vv.setBackground(gradientDrawable);
        this.xs = new SmallSlideView(this.f23179l.getActivity());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(xh.jx(this.f23179l.getActivity(), 80.0f), xh.jx(this.f23179l.getActivity(), 80.0f));
        layoutParams.gravity = 17;
        this.vv.addView(this.xs, layoutParams);
        TextView textView = new TextView(this.f23179l.getActivity());
        if (lv.e() > 0) {
            str = "上滑继续观看\n提前" + lv.e() + "秒领奖";
        } else {
            str = "上滑继续观看\n才能领奖哦";
        }
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setTextSize(2, 18.0f);
        this.vv.addView(textView);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(xh.jx(this.f23179l.getActivity(), 160.0f), xh.jx(this.f23179l.getActivity(), 160.0f));
        layoutParams2.gravity = 17;
        this.f23179l.hp().addView(this.vv, layoutParams2);
        this.ec = new LinearLayout(this.f23179l.getActivity());
        ImageView imageView = new ImageView(this.f23179l.getActivity());
        v.hp((Context) this.f23179l.getActivity(), "tt_ic_back_light", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = xh.jx(this.f23179l.getActivity(), 10.0f);
        layoutParams3.bottomMargin = xh.jx(this.f23179l.getActivity(), 10.0f);
        this.ec.addView(imageView, layoutParams3);
        this.f23179l.hp().getSceneFrameContainer().setClipChildren(false);
        this.ec.setVisibility(4);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 80;
        this.f23179l.hp().getSceneFrameContainer().addView(this.ec, layoutParams4);
        this.f23180n = true;
        this.ec.post(new AnonymousClass1());
    }

    @Override // com.byazt.moz.hp
    public void eb() {
        int i2;
        int i3;
        if (hp(3)) {
            return;
        }
        if (this.eb > 0 && this.f23179l.w() >= this.eb) {
            this.eb = 0;
            j jVar = new j();
            jVar.hp = false;
            jVar.jx = false;
            jVar.f23159j = true;
            this.f23179l.getActivity().hp(3, jVar);
        }
        if (this.jl != null && (i3 = this.f23182s) > 0) {
            this.f23182s = Math.max(0, i3 - 1);
            TextView textView = this.jl;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f23182s);
            textView.setText(sb.toString());
            if (this.f23182s == 0) {
                j jVar2 = new j();
                jVar2.hp = false;
                jVar2.jx = false;
                jVar2.f23159j = true;
                this.f23179l.getActivity().hp(1, jVar2);
                a();
            }
        }
        if (this.jl != null) {
            if (lv.zy() == 1 && lv.hp(this.f23179l.jx()) != 1 && !this.f23183u && this.f23179l.q() && this.f23179l.s()) {
                j jVar3 = new j();
                jVar3.hp = false;
                jVar3.jx = false;
                jVar3.f23159j = true;
                this.f23179l.getActivity().hp(2, jVar3);
            }
            if (this.f23181q > 0 || this.f23178k > 0) {
                if (lv.zy() != 1) {
                    this.f23181q = Math.max(0, this.f23181q - 1);
                    TextView textView2 = this.jl;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f23181q);
                    textView2.setText(sb2.toString());
                    if (this.f23181q == 0) {
                        j jVar4 = new j();
                        jVar4.hp = false;
                        jVar4.jx = false;
                        jVar4.f23159j = true;
                        this.f23179l.getActivity().hp(2, jVar4);
                        a();
                    }
                } else if (this.f23179l.q()) {
                    int iMax = Math.max(0, this.f23178k - 1);
                    this.f23178k = iMax;
                    if (iMax == 0) {
                        a();
                    }
                } else {
                    this.f23181q = Math.max(0, this.f23181q - 1);
                    TextView textView3 = this.jl;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f23181q);
                    textView3.setText(sb3.toString());
                    if (this.f23181q == 0) {
                        j jVar5 = new j();
                        jVar5.hp = false;
                        jVar5.jx = false;
                        jVar5.f23159j = true;
                        this.f23179l.getActivity().hp(2, jVar5);
                        a();
                    }
                }
            }
        }
        int i4 = this.gu;
        if (i4 > 0) {
            int iMax2 = Math.max(0, i4 - 1);
            this.gu = iMax2;
            if (iMax2 == 0) {
                this.f23179l.hp(-1, this.f23176e);
                return;
            }
            return;
        }
        if (this.jl == null || (i2 = this.f23176e) <= 0) {
            return;
        }
        this.f23176e = Math.max(0, i2 - 1);
        TextView textView4 = this.jl;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f23176e);
        textView4.setText(sb4.toString());
        if (this.f23176e == 0) {
            a();
            this.jl = null;
            this.f23179l.gu();
        }
    }

    public void q() {
        TextView textView = this.f23185w;
        if (textView == null || textView.getParent() == null) {
            return;
        }
        ((ViewGroup) this.f23185w.getParent()).removeView(this.f23185w);
        this.f23185w = null;
    }

    public void s() {
        int iA = this.f23179l.a();
        String strConcat = "继续看" + iA + "秒可领取奖励";
        jx jxVar = this.jx;
        if (jxVar != null) {
            if (jxVar.jx() > 0) {
                if (iA <= 0) {
                    strConcat = "成功加速" + this.jx.jx() + "秒，奖励已下发";
                } else {
                    strConcat = "加速成功！".concat(String.valueOf(strConcat));
                }
            } else if (iA <= 0) {
                q();
                return;
            }
        }
        TextView textView = this.f23185w;
        if (textView != null) {
            textView.setText(strConcat);
        }
        int i2 = this.f23175a;
        if (i2 <= 0) {
            q();
            return;
        }
        this.f23175a = i2 - 1;
        TextView textView2 = this.f23185w;
        if (textView2 != null) {
            textView2.postDelayed(new Runnable() { // from class: com.byazt.moz.l.3
                @Override // java.lang.Runnable
                public void run() {
                    l.this.s();
                }
            }, 500L);
        }
    }

    @Override // com.byazt.moz.hp
    public void a() {
        if (this.f23184v != null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.moz.l.4
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    l.this.f23184v.removeAllViews();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            this.f23184v.startAnimation(alphaAnimation);
        }
    }

    @Override // com.byazt.moz.hp
    public boolean w() {
        return this.hp.get();
    }

    @Override // com.byazt.moz.hp
    public boolean j() {
        return this.jx != null;
    }

    @Override // com.byazt.moz.hp
    public void jx() {
        if (lv.zy() == 1 && this.cx && this.jl != null && this.zy != null && !TextUtils.isEmpty(lv.gu())) {
            this.jl.setText("");
            this.zy.setText(lv.gu());
            int iJl = lv.jl();
            this.f23178k = iJl;
            if (iJl == 0) {
                this.f23181q = 0;
                a();
            }
        }
        if (this.f23180n && hp(3)) {
            SmallSlideView smallSlideView = this.xs;
            if (smallSlideView != null) {
                smallSlideView.l();
            }
            TranslateAnimation translateAnimation = this.sz;
            if (translateAnimation != null) {
                translateAnimation.cancel();
            }
            LinearLayout linearLayout = this.vv;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
                this.f23179l.hp().removeView(this.vv);
            }
            LinearLayout linearLayout2 = this.ec;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
                this.f23179l.hp().getSceneFrameContainer().removeView(this.ec);
            }
            this.f23179l.hp().hp();
            this.f23179l.hp(3);
            this.f23180n = false;
        }
    }

    @Override // com.byazt.moz.hp
    public int l() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.eb();
        }
        return 0;
    }

    private void l(final int i2, int i3, int i4) {
        if (i2 == 1) {
            this.f23182s = i3;
        } else if (i2 == 2) {
            i3++;
            this.f23181q = i3;
        } else if (i2 == -1) {
            this.f23176e = i3;
            if (i4 > 0) {
                this.gu = i4;
                return;
            }
            this.gu = 0;
        } else {
            i3 = 0;
        }
        LinearLayout linearLayout = this.f23184v;
        if (linearLayout == null) {
            LinearLayout linearLayout2 = new LinearLayout(this.f23179l.getActivity());
            this.f23184v = linearLayout2;
            linearLayout2.setBackgroundColor(Color.parseColor("#80161823"));
            this.f23184v.setOrientation(0);
            this.f23184v.setGravity(16);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            ((ViewGroup) this.f23179l.getActivity().getWindow().getDecorView()).addView(this.f23184v, layoutParams);
        } else {
            linearLayout.removeAllViews();
        }
        TextView textView = new TextView(this.f23179l.getActivity());
        this.jl = textView;
        textView.setTextColor(Color.parseColor("#FFBA33"));
        this.jl.setText(String.valueOf(i3));
        TextView textView2 = this.jl;
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textView2.setTypeface(typeface);
        this.jl.setTextSize(2, 14.0f);
        this.f23184v.addView(this.jl);
        TextView textView3 = new TextView(this.f23179l.getActivity());
        this.zy = textView3;
        textView3.setTextColor(-1);
        this.zy.setTypeface(typeface);
        this.zy.setSingleLine();
        this.zy.setEllipsize(TextUtils.TruncateAt.END);
        this.zy.setText(lv.a(this.f23179l.jx()));
        this.zy.setTextSize(2, 14.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.setMargins(xh.jx(this.f23179l.getActivity(), 4.0f), 0, 0, 0);
        layoutParams2.weight = 1.0f;
        this.f23184v.addView(this.zy, layoutParams2);
        TextView textView4 = new TextView(this.f23179l.getActivity());
        textView4.setText("取消");
        textView4.setTypeface(typeface);
        textView4.setTextSize(2, 13.0f);
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.moz.l.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws JSONException {
                int i5 = i2;
                l.this.f23183u = true;
                int i6 = i2;
                if (i6 == 1) {
                    l.this.f23182s = 0;
                } else if (i6 == 2) {
                    l.this.f23181q = 0;
                    l.this.f23178k = 0;
                } else if (i6 == -1) {
                    l.this.f23176e = 0;
                    i5 = 2;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("type", i5);
                } catch (JSONException unused) {
                }
                k.hp().hp(l.this.f23179l.jx(), "stats_switch_tip_cancel", jSONObject);
                l.this.a();
                l.this.f23179l.e();
            }
        });
        this.f23184v.addView(textView4);
        this.f23184v.setPadding(xh.jx(this.f23179l.getActivity(), 20.0f), xh.jx(this.f23179l.getActivity(), 16.0f), xh.jx(this.f23179l.getActivity(), 20.0f), xh.v(this.f23179l.getActivity()));
        this.f23184v.setClickable(false);
        if (i2 == 1) {
            this.ns = true;
        } else if (i2 == 2) {
            this.cx = true;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, xh.jx(this.f23179l.getActivity(), 100.0f), 0.0f);
        translateAnimation.setDuration(300L);
        translateAnimation.setFillAfter(true);
        this.f23184v.startAnimation(translateAnimation);
    }

    @Override // com.byazt.moz.hp
    public void hp(jx jxVar, int i2, j jVar) {
        mp mpVar = null;
        try {
            JSONArray jSONArray = new JSONArray(this.f23179l.jx().wi());
            int i3 = 0;
            while (true) {
                if (i3 >= jSONArray.length()) {
                    break;
                }
                mp mpVarHp = com.byazt.jz.hp.hp(jSONArray.getJSONObject(i3));
                if (hp(mpVarHp, i2)) {
                    try {
                        jSONArray.remove(i3);
                        mpVarHp.as(jSONArray.toString());
                    } catch (JSONException unused) {
                    }
                    mpVar = mpVarHp;
                    break;
                }
                i3++;
            }
        } catch (JSONException unused2) {
        }
        if (mpVar != null) {
            if (i2 == 1 && jVar != null && jVar.hp) {
                if (this.ns) {
                    return;
                }
                this.f23179l.hp(i2, jVar.f23160l);
                return;
            }
            if (i2 == 2 && jVar != null && jVar.hp) {
                if (this.cx) {
                    return;
                }
                this.f23179l.hp(i2, jVar.f23160l);
                return;
            }
            if (i2 == 3 && jVar != null && jVar.hp) {
                if (this.f23180n) {
                    return;
                }
                this.f23179l.hp(i2, jVar.f23160l);
                return;
            }
            com.byazt.jt.l lVarHp = com.byazt.vo.hp.hp().hp(mpVar, ky.hp(mpVar, ""));
            if (this.f23179l.l()) {
                com.byazt.bp.jx jxVar2 = new com.byazt.bp.jx(sz.getContext(), mpVar, lVarHp);
                jxVar2.setInsertAdBundle(jxVar);
                jxVar2.showRewardVideoAd(this.f23179l.getActivity());
            } else {
                com.byazt.bp.l lVar = new com.byazt.bp.l(sz.getContext(), mpVar, lVarHp);
                lVar.setInsertAdBundle(jxVar);
                lVar.showFullScreenVideoAd(this.f23179l.getActivity());
            }
            this.hp.set(true);
        }
    }

    private boolean hp(mp mpVar, int i2) {
        if (i2 != 1) {
            return i2 != 2 ? i2 == 3 && lv.l(mpVar, true) : lv.hp(mpVar, true);
        }
        return lv.hp(this.f23179l.l(), mpVar, true);
    }

    @Override // com.byazt.moz.hp
    public void hp(jx jxVar) {
        this.jx = jxVar;
    }

    @Override // com.byazt.moz.hp
    public int hp() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return Math.max(0, jxVar.l() - this.jx.jx());
        }
        return 0;
    }

    @Override // com.byazt.moz.hp
    public void hp(boolean z2) {
        this.f23177j = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0087  */
    @Override // com.byazt.moz.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hp(int r4, boolean r5) {
        /*
            r3 = this;
            boolean r0 = r3.f23177j
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r3.hp(r4)
            if (r0 == 0) goto Ld
            return r1
        Ld:
            r0 = 1
            if (r4 != r0) goto L49
            com.byazt.moz.hp$hp r2 = r3.f23179l
            com.byazt.xci.mp r2 = r2.jx()
            int r2 = com.byazt.xci.lv.hp(r2)
            if (r2 == r0) goto L1d
            return r1
        L1d:
            if (r5 != 0) goto Ld0
            com.byazt.moz.hp$hp r5 = r3.f23179l
            boolean r5 = r5.l()
            boolean r0 = r3.j()
            if (r0 == 0) goto L32
            com.byazt.moz.hp$hp r0 = r3.f23179l
            boolean r0 = r0.j()
            goto L3c
        L32:
            com.byazt.moz.hp$hp r0 = r3.f23179l
            com.byazt.xci.mp r0 = r0.jx()
            boolean r0 = com.byazt.xci.mp.jx(r0)
        L3c:
            com.byazt.moz.hp$hp r2 = r3.f23179l
            int r2 = r2.w()
            boolean r5 = com.byazt.xci.lv.hp(r5, r0, r2)
            if (r5 != 0) goto Ld0
            return r1
        L49:
            r2 = 2
            if (r4 != r2) goto La2
            com.byazt.moz.hp$hp r2 = r3.f23179l
            com.byazt.xci.mp r2 = r2.jx()
            int r2 = com.byazt.xci.lv.l(r2)
            if (r2 == r0) goto L59
            return r1
        L59:
            if (r5 != 0) goto L6a
            com.byazt.moz.hp$hp r2 = r3.f23179l
            boolean r2 = r2.eb()
            if (r2 == 0) goto L6a
            int r2 = com.byazt.xci.lv.zy()
            if (r2 != 0) goto L6a
            return r1
        L6a:
            int r2 = com.byazt.xci.lv.zy()
            if (r2 != r0) goto L87
            boolean r0 = r3.f23183u
            if (r0 == 0) goto L75
            return r1
        L75:
            com.byazt.moz.hp$hp r0 = r3.f23179l
            boolean r0 = r0.q()
            if (r0 == 0) goto L87
            com.byazt.moz.hp$hp r5 = r3.f23179l
            boolean r5 = r5.s()
            if (r5 == 0) goto L86
            goto Ld0
        L86:
            return r1
        L87:
            if (r5 != 0) goto Ld0
            com.byazt.moz.hp$hp r5 = r3.f23179l
            int r5 = r5.w()
            com.byazt.moz.hp$hp r0 = r3.f23179l
            com.byazt.xci.mp r0 = r0.jx()
            com.byazt.moz.hp$hp r2 = r3.f23179l
            boolean r2 = r2.l()
            boolean r5 = com.byazt.xci.lv.hp(r5, r0, r2)
            if (r5 != 0) goto Ld0
            return r1
        La2:
            r2 = 3
            if (r4 != r2) goto Ld1
            com.byazt.moz.hp$hp r2 = r3.f23179l
            com.byazt.xci.mp r2 = r2.jx()
            int r2 = com.byazt.xci.lv.jx(r2)
            if (r2 == r0) goto Lb2
            return r1
        Lb2:
            com.byazt.moz.hp$hp r0 = r3.f23179l
            boolean r0 = r0.s()
            if (r0 == 0) goto Lbb
            return r1
        Lbb:
            if (r5 != 0) goto Ld0
            com.byazt.moz.hp$hp r5 = r3.f23179l
            int r5 = r5.w()
            com.byazt.moz.hp$hp r0 = r3.f23179l
            com.byazt.xci.mp r0 = r0.jx()
            boolean r5 = com.byazt.xci.lv.hp(r5, r0)
            if (r5 != 0) goto Ld0
            return r1
        Ld0:
            return r4
        Ld1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.moz.l.hp(int, boolean):int");
    }

    @Override // com.byazt.moz.hp
    public void l(boolean z2) {
        this.gu = 0;
        if (z2) {
            this.f23176e = 0;
        }
    }

    @Override // com.byazt.moz.hp
    public boolean hp(int i2) {
        if (this.f23179l.q()) {
            if (ea.wv(this.f23179l.jx()) == a.f21119w) {
                return true;
            }
            if (ea.wv(this.f23179l.jx()) == a.f21116a && !this.f23179l.s()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.moz.hp
    public void hp(FrameLayout frameLayout) {
        if (frameLayout == null) {
            return;
        }
        if (this.f23185w == null) {
            this.f23185w = xh.k(this.f23179l.getActivity());
        }
        if (this.f23185w.getParent() != null) {
            ((ViewGroup) this.f23185w.getParent()).removeView(this.f23185w);
        }
        this.f23175a = lv.s() * 2;
        frameLayout.addView(this.f23185w);
        s();
    }

    @Override // com.byazt.moz.hp
    public void hp(int i2, int i3, int i4) {
        if (i2 == -1 || i2 == 1 || i2 == 2) {
            l(i2, i3, i4);
        } else {
            if (i2 != 3) {
                return;
            }
            e();
        }
    }
}
