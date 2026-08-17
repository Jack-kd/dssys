package com.byazt.ay;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.byazt.gx.UgenLottieView;
import com.byazt.jz.sz;
import com.byazt.nk.TTRatingBar2;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.zn.xh;
import java.text.DecimalFormat;
import java.util.Stack;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 525, 30})
/* loaded from: classes2.dex */
public class jx extends AlertDialog {

    /* renamed from: a, reason: collision with root package name */
    public TextView f18387a;

    /* renamed from: b, reason: collision with root package name */
    public String f18388b;
    public String cx;

    /* renamed from: d, reason: collision with root package name */
    public JSONArray f18389d;
    public String di;
    public String dy;

    /* renamed from: e, reason: collision with root package name */
    public TTRatingBar2 f18390e;
    public TextView eb;
    public String ec;
    public TextView gu;
    public Context hp;
    public RelativeLayout hq;

    /* renamed from: j, reason: collision with root package name */
    public TTRoundRectImageView f18391j;
    public TextView jl;
    public ImageView jx;

    /* renamed from: k, reason: collision with root package name */
    public TextView f18392k;

    /* renamed from: l, reason: collision with root package name */
    public Stack<View> f18393l;

    /* renamed from: n, reason: collision with root package name */
    public String f18394n;
    public String ns;
    public hp nu;

    /* renamed from: o, reason: collision with root package name */
    public String f18395o;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f18396q;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f18397s;
    public String sz;

    /* renamed from: u, reason: collision with root package name */
    public TextView f18398u;
    public View ud;

    /* renamed from: v, reason: collision with root package name */
    public TextView f18399v;
    public com.byazt.gx.l vv;

    /* renamed from: w, reason: collision with root package name */
    public TextView f18400w;
    public float wv;
    public Button xs;
    public TextView zy;

    public interface hp {
        void a(Dialog dialog);

        void hp(Dialog dialog);

        void j(Dialog dialog);

        void jx(Dialog dialog);

        void l(Dialog dialog);

        void w(Dialog dialog);
    }

    public jx(Context context) {
        super(context);
        this.f18393l = new Stack<>();
        this.hp = context;
    }

    private View a() {
        RelativeLayout relativeLayout = new RelativeLayout(this.hp);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        relativeLayout.setId(View.generateViewId());
        ImageView imageView = new ImageView(this.hp);
        this.jx = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iJx = xh.jx(this.hp, 46.0f);
        this.jx.setMaxHeight(iJx);
        this.jx.setMaxWidth(iJx);
        this.jx.setMinimumHeight(iJx);
        this.jx.setMinimumWidth(iJx);
        com.byazt.vi.jx jxVar = new com.byazt.vi.jx(xh.jx(this.hp, 14.0f));
        jxVar.hp(-16777216);
        jxVar.hp(xh.jx(this.hp, 2.0f));
        this.jx.setImageDrawable(jxVar);
        relativeLayout.addView(this.jx);
        TextView textView = new TextView(this.hp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("应用详情");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        this.hq.addView(relativeLayout);
        return hp(relativeLayout);
    }

    private void eb() {
        RelativeLayout relativeLayout;
        if (this.ud == null || (relativeLayout = this.hq) == null) {
            return;
        }
        final int childCount = relativeLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.hq.getChildAt(i2).setVisibility(4);
        }
        this.ud.postDelayed(new Runnable() { // from class: com.byazt.ay.jx.7
            @Override // java.lang.Runnable
            public void run() {
                jx.this.jx(childCount);
            }
        }, 10L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(int i2) {
        try {
            Rect rect = new Rect();
            if (this.hp.getResources().getConfiguration().orientation == 1) {
                this.jl.getGlobalVisibleRect(rect);
            } else {
                this.xs.getGlobalVisibleRect(rect);
            }
            while (!this.f18393l.isEmpty()) {
                Rect rect2 = new Rect();
                View viewPop = this.f18393l.pop();
                if (viewPop != null && viewPop.getVisibility() != 8) {
                    viewPop.getGlobalVisibleRect(rect2);
                    if (rect2.top != 0 && rect.top >= rect2.bottom) {
                        break;
                    }
                    if (viewPop == this.f18400w) {
                        View viewPop2 = this.f18393l.pop();
                        if (viewPop2 != null) {
                            viewPop2.setVisibility(8);
                        }
                    } else {
                        viewPop.setVisibility(8);
                    }
                }
            }
            if (this.f18393l.isEmpty()) {
                s();
            }
        } catch (Throwable unused) {
        }
        this.hq.setVisibility(0);
        for (int i3 = 0; i3 < i2; i3++) {
            this.hq.getChildAt(i3).setVisibility(0);
        }
    }

    private LinearLayout l(int i2, LinearLayout linearLayout, LinearLayout linearLayout2, int i3) {
        this.f18397s = new LinearLayout(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.topMargin = xh.jx(this.hp, 10.0f);
        this.f18397s.setLayoutParams(layoutParams);
        this.f18397s.setOrientation(0);
        linearLayout2.addView(this.f18397s);
        this.f18396q = new LinearLayout(this.hp);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = xh.jx(this.hp, 10.0f);
        if (i2 == 0) {
            layoutParams2.topMargin = xh.jx(this.hp, 16.0f);
        } else {
            layoutParams2.topMargin = xh.jx(this.hp, 10.0f);
        }
        this.f18396q.setLayoutParams(layoutParams2);
        this.f18396q.setOrientation(0);
        this.f18390e = new TTRatingBar2(this.hp, null);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        this.f18390e.setLayoutParams(layoutParams3);
        this.f18396q.addView(this.f18390e);
        this.gu = new TextView(this.hp);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 16;
        layoutParams4.leftMargin = xh.jx(this.hp, 3.0f);
        this.gu.setTextSize(16.0f);
        this.gu.setTextColor(Color.parseColor("#161823"));
        this.gu.setLayoutParams(layoutParams4);
        this.f18396q.addView(this.gu);
        linearLayout2.addView(this.f18396q);
        return hp(i2, linearLayout, i3);
    }

    private void s() {
        RelativeLayout.LayoutParams layoutParams;
        Button button = this.xs;
        if (button != null) {
            ViewGroup.LayoutParams layoutParams2 = button.getLayoutParams();
            if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
                layoutParams3.bottomMargin = layoutParams3.topMargin;
                this.xs.setLayoutParams(layoutParams3);
            } else if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams2;
                layoutParams4.bottomMargin = layoutParams4.topMargin;
                this.xs.setLayoutParams(layoutParams4);
            }
        }
        com.byazt.gx.l lVar = this.vv;
        if (lVar != null) {
            UgenLottieView ugenLottieViewQ = lVar.q();
            if (ugenLottieViewQ != null) {
                layoutParams = (RelativeLayout.LayoutParams) ugenLottieViewQ.getLayoutParams();
            } else {
                int iJx = xh.jx(this.hp, 60.0f);
                layoutParams = new RelativeLayout.LayoutParams(iJx, iJx);
            }
            layoutParams.topMargin = -xh.jx(this.hp, 53.0f);
            this.vv.hp(layoutParams);
        }
    }

    private ImageView w() {
        ImageView imageView = new ImageView(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(xh.jx(this.hp, 0.5f), xh.jx(this.hp, 9.0f));
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
        return imageView;
    }

    public jx j(String str) {
        this.f18394n = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        hp hpVar = this.nu;
        if (hpVar != null) {
            hpVar.jx(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        hp();
        setCanceledOnTouchOutside(false);
        l();
    }

    public jx q(String str) {
        this.dy = str;
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        jx();
    }

    public String j() {
        return this.dy;
    }

    public void hp() {
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        if (this.hp.getResources().getConfiguration().orientation == 1) {
            this.ud = hp(1);
        } else {
            this.ud = hp(0);
        }
        setContentView(this.ud);
    }

    public jx eb(String str) {
        this.f18388b = str;
        return this;
    }

    public jx w(String str) {
        this.ns = str;
        return this;
    }

    private View hp(int i2) {
        int iJx;
        LinearLayout linearLayoutL = l(i2);
        LinearLayout linearLayout = new LinearLayout(this.hp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i2 == 0) {
            iJx = xh.jx(this.hp, 40.0f);
        } else {
            layoutParams.addRule(3, a().getId());
            iJx = xh.jx(this.hp, 16.0f);
        }
        layoutParams.leftMargin = iJx;
        layoutParams.rightMargin = iJx;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        this.hq.addView(linearLayout);
        this.f18391j = new TTRoundRectImageView(this.hp);
        int iJx2 = xh.jx(this.hp, 64.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iJx2, iJx2);
        layoutParams2.gravity = 1;
        if (i2 == 0) {
            layoutParams2.topMargin = xh.jx(this.hp, 40.0f);
        } else {
            layoutParams2.topMargin = xh.jx(this.hp, 36.0f);
        }
        this.f18391j.setMaxHeight(iJx2);
        this.f18391j.setMaxWidth(iJx2);
        this.f18391j.setMinimumHeight(iJx2);
        this.f18391j.setMinimumWidth(iJx2);
        this.f18391j.setLayoutParams(layoutParams2);
        linearLayout.addView(this.f18391j);
        return hp(i2, linearLayoutL, linearLayout, iJx);
    }

    public jx s(String str) {
        this.di = str;
        return this;
    }

    public void jx() {
        String str;
        String str2;
        int iJ;
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        int i2 = this.hp.getResources().getConfiguration().orientation;
        TextView textView = this.f18400w;
        if (textView != null) {
            textView.setText(this.ec);
        } else {
            TTRoundRectImageView tTRoundRectImageView = this.f18391j;
            if (tTRoundRectImageView != null) {
                tTRoundRectImageView.setVisibility(8);
            }
        }
        if (this.f18391j != null && !TextUtils.isEmpty(this.sz)) {
            com.byazt.ws.l.hp(this.sz).to(this.f18391j);
        } else {
            TTRoundRectImageView tTRoundRectImageView2 = this.f18391j;
            if (tTRoundRectImageView2 != null) {
                tTRoundRectImageView2.setVisibility(8);
            }
        }
        if (this.f18387a != null) {
            if (TextUtils.isEmpty(this.f18394n)) {
                this.f18387a.setVisibility(8);
            } else {
                this.f18387a.setText(this.f18394n);
            }
        }
        if (this.f18397s != null) {
            JSONArray jSONArray = this.f18389d;
            if (jSONArray != null && jSONArray.length() > 0) {
                WindowManager windowManager = (WindowManager) this.hp.getSystemService("window");
                Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
                if (defaultDisplay != null) {
                    int width = defaultDisplay.getWidth();
                    if (width > defaultDisplay.getHeight()) {
                        double dJ = xh.j(this.hp, width);
                        iJ = ((int) (dJ - (0.38d * dJ))) - 80;
                    } else {
                        iJ = xh.j(this.hp, width) - 36;
                    }
                } else {
                    iJ = 0;
                }
                int length = this.f18389d.length() <= 3 ? this.f18389d.length() : 3;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    String strOptString = this.f18389d.optString(i3);
                    if (!TextUtils.isEmpty(strOptString)) {
                        TextView textView2 = new TextView(this.hp);
                        textView2.setText(strOptString);
                        textView2.setTextSize(12.0f);
                        textView2.setTextColor(Color.parseColor("#161823"));
                        textView2.setAlpha(0.75f);
                        textView2.setBackgroundColor(Color.parseColor("#0F161823"));
                        int iJx = xh.jx(this.hp, 6.0f);
                        textView2.setPadding(iJx, 0, iJx, 0);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        int iJx2 = xh.jx(this.hp, 3.0f);
                        layoutParams.leftMargin = iJx2;
                        layoutParams.rightMargin = iJx2;
                        textView2.setLayoutParams(layoutParams);
                        textView2.getPaint().getTextBounds(strOptString, 0, strOptString.length(), new Rect());
                        iJ -= xh.j(this.hp, r10.width()) + 20;
                        if (iJ >= 0) {
                            this.f18397s.addView(textView2);
                        } else if (this.f18397s.getChildCount() <= 0) {
                            this.f18397s.setVisibility(8);
                        }
                    }
                    i3++;
                }
            } else {
                this.f18397s.setVisibility(8);
            }
        }
        if (this.f18390e != null && this.gu != null) {
            float f2 = this.wv;
            if (f2 <= 0.0f) {
                LinearLayout linearLayout = this.f18396q;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                this.f18390e.setVisibility(8);
                this.gu.setVisibility(8);
            } else {
                if (f2 > 5.0f) {
                    f2 = 5.0f;
                }
                this.wv = f2;
                this.gu.setText(new DecimalFormat(".0").format(this.wv));
                this.f18390e.setRating(this.wv);
                this.f18390e.hp(xh.jx(this.hp, 16.0f), xh.jx(this.hp, 15.0f));
                this.f18390e.hp(xh.jx(this.hp, 3.0f), 0, xh.jx(this.hp, 3.0f), 0);
                this.f18390e.hp();
            }
        }
        if (this.jl != null) {
            if (TextUtils.isEmpty(this.ns)) {
                str = String.format("版本号：%1$s", "暂无");
            } else {
                str = String.format("版本号：%1$s", this.ns);
            }
            if (i2 == 2) {
                TextPaint paint = this.jl.getPaint();
                Rect rect = new Rect();
                paint.getTextBounds(str, 0, str.length(), rect);
                double dQ = xh.q(this.hp);
                int iWidth = (((int) (dQ - (0.4d * dQ))) - rect.width()) - xh.jx(this.hp, 106.0f);
                TextView textView3 = this.f18392k;
                if (textView3 != null) {
                    TextPaint paint2 = textView3.getPaint();
                    String string = this.f18392k.getText().toString();
                    paint2.getTextBounds(string, 0, string.length(), rect);
                    iWidth -= rect.width();
                }
                TextView textView4 = this.eb;
                if (textView4 != null) {
                    TextPaint paint3 = textView4.getPaint();
                    String string2 = this.eb.getText().toString();
                    paint3.getTextBounds(string2, 0, string2.length(), rect);
                    iWidth -= rect.width();
                }
                TextView textView5 = this.f18398u;
                if (textView5 != null) {
                    TextPaint paint4 = textView5.getPaint();
                    String string3 = this.f18398u.getText().toString();
                    paint4.getTextBounds(string3, 0, string3.length(), rect);
                    iWidth -= rect.width();
                }
                if (this.f18399v != null && !TextUtils.isEmpty(this.f18388b)) {
                    TextPaint paint5 = this.f18399v.getPaint();
                    String string4 = this.f18399v.getText().toString();
                    paint5.getTextBounds(string4, 0, TextUtils.isEmpty(string4) ? 0 : string4.length(), rect);
                    iWidth -= rect.width();
                }
                if (iWidth <= 0) {
                    ((LinearLayout.LayoutParams) this.jl.getLayoutParams()).weight = 1.0f;
                }
            }
            if (i2 == 1) {
                this.jl.setText(str);
            }
        } else {
            str = "";
        }
        TextView textView6 = this.zy;
        if (textView6 != null) {
            textView6.setSelected(true);
            if (TextUtils.isEmpty(this.di)) {
                str2 = String.format("开发者：%1$s", "补充中，可于应用官网查看");
            } else {
                str2 = String.format("开发者：%1$s", this.di);
            }
            if (i2 == 2) {
                str2 = str2 + "  " + str;
            }
            this.zy.setText(str2);
        }
    }

    public jx a(String str) {
        this.cx = str;
        return this;
    }

    private LinearLayout l(int i2, LinearLayout linearLayout, int i3, LinearLayout linearLayout2, View view) {
        if (i2 == 0) {
            hp(i2, (ViewGroup) linearLayout2);
            if (!TextUtils.isEmpty(this.cx)) {
                View imageView = new ImageView(this.hp);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(xh.jx(this.hp, 0.5f), xh.jx(this.hp, 9.0f));
                layoutParams.leftMargin = xh.jx(this.hp, 8.0f);
                layoutParams.gravity = 17;
                imageView.setLayoutParams(layoutParams);
                imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
                linearLayout2.addView(imageView);
            }
        }
        int iJx = xh.jx(this.hp, 8.0f);
        hp(linearLayout2, iJx);
        l(linearLayout2, iJx);
        return hp(i2, linearLayout, i3, linearLayout2, view, iJx);
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, LinearLayout linearLayout2, int i3) {
        this.f18400w = new TextView(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        if (i2 == 0) {
            layoutParams.topMargin = xh.jx(this.hp, 16.0f);
            int iJx = xh.jx(this.hp, 25.0f);
            layoutParams.leftMargin = iJx;
            layoutParams.rightMargin = iJx;
        } else {
            layoutParams.topMargin = xh.jx(this.hp, 14.0f);
        }
        this.f18400w.setLayoutParams(layoutParams);
        TextView textView = this.f18400w;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        this.f18400w.setTextColor(Color.parseColor("#161823"));
        this.f18400w.setTextSize(18.0f);
        this.f18400w.setGravity(17);
        this.f18400w.setTypeface(null, 1);
        linearLayout2.addView(this.f18400w);
        this.f18387a = new TextView(this.hp);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = xh.jx(this.hp, 5.0f);
        this.f18387a.setLayoutParams(layoutParams2);
        this.f18387a.setEllipsize(truncateAt);
        this.f18387a.setSingleLine(true);
        this.f18387a.setAlpha(0.5f);
        this.f18387a.setTextColor(Color.parseColor("#161823"));
        this.f18387a.setTextSize(14.0f);
        this.f18387a.setGravity(17);
        linearLayout2.addView(this.f18387a);
        return l(i2, linearLayout, linearLayout2, i3);
    }

    private void l(LinearLayout linearLayout, int i2) {
        linearLayout.addView(w());
        this.eb = new TextView(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        this.eb.setLayoutParams(layoutParams);
        this.eb.setAlpha(0.75f);
        this.eb.setTextColor(Color.parseColor("#66161823"));
        if (this.hp.getResources().getConfiguration().orientation == 2) {
            this.eb.setTextSize(10.0f);
        } else {
            this.eb.setTextSize(12.0f);
        }
        this.eb.setText("权限");
        linearLayout.addView(this.eb);
    }

    private LinearLayout l(int i2) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout.LayoutParams layoutParams2;
        LinearLayout linearLayout = new LinearLayout(this.hp);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i2);
        linearLayout.setBackgroundColor(Color.parseColor("#99000000"));
        linearLayout.setLayoutParams(layoutParams3);
        View view = new View(this.hp);
        if (i2 == 0) {
            layoutParams = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams.weight = 0.38f;
        view.setLayoutParams(layoutParams);
        linearLayout.addView(view);
        this.hq = new RelativeLayout(this.hp);
        if (i2 == 0) {
            layoutParams2 = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams2.weight = 0.62f;
        layoutParams2.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 8.0f));
        this.hq.setBackground(gradientDrawable);
        this.hq.setLayoutParams(layoutParams2);
        linearLayout.addView(this.hq);
        return hp(i2, linearLayout);
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, int i3) {
        int iTn = sz.l().tn();
        boolean zGy = sz.l().gy();
        if (zGy && iTn == 1) {
            this.xs = new ShakeButton(this.hp);
        } else if (zGy && iTn == 2) {
            this.xs = new ShineButton(this.hp);
        } else {
            this.xs = new Button(this.hp);
        }
        this.xs.setId(View.generateViewId());
        LinearLayout linearLayout2 = new LinearLayout(this.hp);
        linearLayout2.setId(View.generateViewId());
        View view = new View(this.hp);
        view.setId(View.generateViewId());
        TextView textView = new TextView(this.hp);
        this.zy = textView;
        textView.setId(View.generateViewId());
        if (i2 == 1) {
            hp(i2, this.hq);
        } else {
            hp(xh.jx(this.hp, 89.0f), i2);
        }
        return hp(i2, linearLayout, i3, linearLayout2, view);
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, int i3, LinearLayout linearLayout2, View view) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(2, linearLayout2.getId());
        if (i2 == 1) {
            layoutParams.leftMargin = i3;
            layoutParams.rightMargin = i3;
        } else {
            int iJx = xh.jx(this.hp, 16.0f);
            layoutParams.leftMargin = iJx;
            layoutParams.rightMargin = iJx;
        }
        layoutParams.topMargin = xh.jx(this.hp, 3.0f);
        this.zy.setEllipsize(TextUtils.TruncateAt.END);
        this.zy.setGravity(17);
        this.zy.setTextColor(Color.parseColor("#4D161823"));
        if (i2 == 0) {
            this.zy.setTextSize(10.0f);
        } else {
            this.zy.setTextSize(12.0f);
        }
        this.zy.setLayoutParams(layoutParams);
        this.hq.addView(this.zy);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.leftMargin = i3;
        layoutParams2.rightMargin = i3;
        if (i2 == 1) {
            layoutParams2.topMargin = xh.jx(this.hp, 9.0f);
        } else {
            layoutParams2.topMargin = xh.jx(this.hp, 2.0f);
            layoutParams2.bottomMargin = xh.jx(this.hp, 20.0f);
        }
        if (i2 == 1) {
            layoutParams2.addRule(2, view.getId());
        } else {
            layoutParams2.addRule(12);
            layoutParams2.addRule(14);
        }
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setGravity(1);
        return l(i2, linearLayout, i3, linearLayout2, view);
    }

    public void l() {
        if (this.hp == null) {
            this.hp = sz.getContext();
        }
        this.f18393l.clear();
        this.f18393l.push(this.f18391j);
        this.f18393l.push(this.f18400w);
        this.f18393l.push(this.f18387a);
        this.f18393l.push(this.f18397s);
        this.f18393l.push(this.f18396q);
        eb();
        this.f18398u.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.jx.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (jx.this.nu == null) {
                    return;
                }
                jx.this.nu.w(jx.this);
            }
        });
        if (this.f18399v != null && !TextUtils.isEmpty(this.f18388b)) {
            this.f18399v.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.jx.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (jx.this.nu != null) {
                        jx.this.nu.a(jx.this);
                    }
                }
            });
        }
        this.eb.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.jx.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (jx.this.nu != null) {
                    jx.this.nu.l(jx.this);
                }
            }
        });
        this.jx.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.jx.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (jx.this.nu != null) {
                    jx.this.nu.jx(jx.this);
                }
            }
        });
        this.f18392k.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.jx.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (jx.this.nu != null) {
                    jx.this.nu.j(jx.this);
                }
            }
        });
        this.xs.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.jx.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (jx.this.nu != null) {
                    jx.this.nu.hp(jx.this);
                }
            }
        });
    }

    public jx l(String str) {
        this.sz = str;
        return this;
    }

    private void hp(LinearLayout linearLayout, int i2) {
        this.f18398u = new TextView(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        this.f18398u.setLayoutParams(layoutParams);
        this.f18398u.setAlpha(0.75f);
        this.f18398u.setTextColor(Color.parseColor("#66161823"));
        if (this.hp.getResources().getConfiguration().orientation == 2) {
            this.f18398u.setTextSize(10.0f);
        } else {
            this.f18398u.setTextSize(12.0f);
        }
        this.f18398u.setText("功能");
        linearLayout.addView(this.f18398u);
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout, int i3, LinearLayout linearLayout2, View view, int i4) {
        linearLayout2.addView(w());
        this.f18392k = new TextView(this.hp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i4;
        layoutParams.rightMargin = i4;
        this.f18392k.setLayoutParams(layoutParams);
        this.f18392k.setAlpha(0.75f);
        this.f18392k.setTextColor(Color.parseColor("#66161823"));
        if (this.hp.getResources().getConfiguration().orientation == 2) {
            this.f18392k.setTextSize(10.0f);
        } else {
            this.f18392k.setTextSize(12.0f);
        }
        this.f18392k.setText("隐私");
        linearLayout2.addView(this.f18392k);
        if (!TextUtils.isEmpty(this.f18388b)) {
            linearLayout2.addView(w());
            this.f18399v = new TextView(this.hp);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.leftMargin = i4;
            layoutParams2.rightMargin = i4;
            this.f18399v.setLayoutParams(layoutParams2);
            this.f18399v.setAlpha(0.75f);
            this.f18399v.setTextColor(Color.parseColor("#66161823"));
            if (this.hp.getResources().getConfiguration().orientation == 2) {
                this.f18399v.setTextSize(10.0f);
            } else {
                this.f18399v.setTextSize(12.0f);
            }
            this.f18399v.setText("备案");
            linearLayout2.addView(this.f18399v);
        }
        this.hq.addView(linearLayout2);
        if (i2 == 0) {
            return linearLayout;
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, xh.jx(this.hp, 1.0f));
        layoutParams3.topMargin = xh.jx(this.hp, 12.0f);
        layoutParams3.addRule(2, this.xs.getId());
        view.setLayoutParams(layoutParams3);
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        this.hq.addView(view);
        hp(i3, i2);
        return linearLayout;
    }

    public jx jx(String str) {
        this.f18395o = str;
        return this;
    }

    private LinearLayout hp(int i2, LinearLayout linearLayout) {
        if (i2 == 0) {
            this.jx = new ImageView(this.hp);
            int iJx = xh.jx(this.hp, 28.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iJx, iJx);
            int iJx2 = xh.jx(this.hp, 36.0f);
            layoutParams.topMargin = iJx2;
            layoutParams.rightMargin = iJx2;
            layoutParams.leftMargin = iJx2;
            layoutParams.bottomMargin = iJx2;
            layoutParams.addRule(10);
            layoutParams.addRule(21);
            layoutParams.addRule(11);
            this.jx.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.jx.setLayoutParams(layoutParams);
            this.jx.setMaxHeight(iJx);
            this.jx.setMaxWidth(iJx);
            this.jx.setMinimumHeight(iJx);
            this.jx.setMinimumWidth(iJx);
            com.byazt.vi.l lVar = new com.byazt.vi.l(xh.jx(this.hp, 28.0f));
            lVar.hp(Color.parseColor("#66161823"));
            float fJx = xh.jx(this.hp, 2.0f);
            lVar.hp(fJx);
            com.byazt.vi.jx jxVar = new com.byazt.vi.jx(xh.jx(this.hp, 12.0f));
            jxVar.hp(-1);
            jxVar.hp(fJx);
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{lVar, jxVar});
            layerDrawable.setLayerInset(0, 0, 0, 0, 0);
            int iJx3 = xh.jx(this.hp, 8.0f);
            layerDrawable.setLayerInset(1, iJx3, iJx3, iJx3, iJx3);
            this.jx.setImageDrawable(layerDrawable);
            this.hq.addView(this.jx);
        }
        return linearLayout;
    }

    private void hp(int i2, ViewGroup viewGroup) {
        this.jl = new TextView(this.hp);
        if (i2 == 1) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(14);
            layoutParams.addRule(2, this.zy.getId());
            int iJx = xh.jx(this.hp, 16.0f);
            layoutParams.leftMargin = iJx;
            layoutParams.rightMargin = iJx;
            layoutParams.topMargin = xh.jx(this.hp, 30.0f);
            this.jl.setLayoutParams(layoutParams);
            this.jl.setGravity(17);
        } else {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = GravityCompat.START;
            this.jl.setLayoutParams(layoutParams2);
        }
        this.jl.setEllipsize(TextUtils.TruncateAt.END);
        this.jl.setTextColor(Color.parseColor("#57161823"));
        if (i2 == 0) {
            this.jl.setTextSize(10.0f);
        } else {
            this.jl.setTextSize(12.0f);
        }
        viewGroup.addView(this.jl);
    }

    private void hp(int i2, int i3) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        if (i3 == 1) {
            layoutParams.topMargin = xh.jx(this.hp, 14.0f);
            layoutParams.bottomMargin = xh.jx(this.hp, 46.0f);
            layoutParams.addRule(12);
        } else {
            layoutParams.topMargin = xh.jx(this.hp, 10.0f);
            layoutParams.bottomMargin = xh.jx(this.hp, 24.0f);
            layoutParams.addRule(2, this.zy.getId());
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(xh.jx(this.hp, 3.0f));
        this.xs.setBackground(gradientDrawable);
        this.xs.setGravity(17);
        this.xs.setText("立即下载");
        int iJx = xh.jx(this.hp, 13.0f);
        this.xs.setPadding(0, iJx, 0, iJx);
        this.xs.setTextColor(-1);
        this.xs.setLayoutParams(layoutParams);
        this.xs.setTextSize(15.0f);
        this.hq.addView(this.xs);
        if (i3 != 1 || TextUtils.isEmpty(this.f18395o)) {
            return;
        }
        int iJx2 = xh.jx(this.hp, 60.0f);
        com.byazt.gx.l lVar = new com.byazt.gx.l(this.hp);
        this.vv = lVar;
        lVar.hp("src", this.f18395o);
        this.vv.hp("loop", "true");
        this.vv.hp("autoPlay", "true");
        this.vv.hp("width", String.valueOf(iJx2));
        this.vv.hp("height", String.valueOf(iJx2));
        this.vv.hp("scaleType", "fitXY");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iJx2, iJx2);
        layoutParams2.addRule(11);
        layoutParams2.addRule(3, this.xs.getId());
        layoutParams2.rightMargin = xh.jx(this.hp, 73.0f);
        layoutParams2.topMargin = -xh.jx(this.hp, 85.0f);
        this.vv.hp(layoutParams2);
        UgenLottieView ugenLottieViewQ = this.vv.q();
        if (ugenLottieViewQ == null) {
            return;
        }
        this.vv.l();
        this.hq.addView(ugenLottieViewQ);
    }

    private View hp(RelativeLayout relativeLayout) {
        View view = new View(this.hp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, xh.jx(this.hp, 1.0f));
        layoutParams.addRule(3, relativeLayout.getId());
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        view.setId(View.generateViewId());
        this.hq.addView(view);
        return view;
    }

    public jx hp(String str) {
        this.ec = str;
        return this;
    }

    public jx hp(JSONArray jSONArray) {
        this.f18389d = jSONArray;
        return this;
    }

    public jx hp(float f2) {
        this.wv = f2;
        return this;
    }

    public jx hp(hp hpVar) {
        this.nu = hpVar;
        return this;
    }
}
