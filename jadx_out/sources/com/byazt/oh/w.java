package com.byazt.oh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.byazt.ay.k;
import com.byazt.dth.TTViewStub;
import com.byazt.dth.l;
import com.byazt.jz.sz;
import com.byazt.su.l;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends a {
    public int an;
    public TextView as;
    public final View.OnTouchListener bu;

    /* renamed from: c, reason: collision with root package name */
    public float f24088c;
    public ColorStateList df;
    public final ud ea;
    public float ed;

    /* renamed from: f, reason: collision with root package name */
    public View f24089f;
    public int fi;
    public boolean gb;
    public final Rect gd;
    public SeekBar hd;
    public int jd;
    public TextView kg;
    public final Rect ku;
    public TextView ky;
    public ColorStateList lp;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f24090m;
    public TextView mp;

    /* renamed from: ms, reason: collision with root package name */
    public View f24091ms;
    public View nd;
    public int nr;
    public final Rect ov;
    public int pc;
    public final Rect pi;
    public int qh;
    public int qu;
    public final Rect rk;
    public float ru;
    public boolean rv;
    public TextView rz;
    public boolean su;

    /* renamed from: t, reason: collision with root package name */
    public k f24092t;
    public boolean tw;
    public float ux;
    public ImageView vq;
    public ColorStateList wt;

    /* renamed from: x, reason: collision with root package name */
    public boolean f24093x;
    public ImageView xh;
    public boolean xv;

    /* renamed from: y, reason: collision with root package name */
    public TextView f24094y;
    public int yj;
    public ImageView yr;
    public float zb;
    public TextView zx;

    public w(Context context, View view, boolean z2, EnumSet<l.hp> enumSet, mp mpVar, com.byazt.su.jx jxVar, boolean z3) {
        super(context, view, z2, enumSet, mpVar, jxVar, z3, null);
        this.ea = new ud(Looper.getMainLooper(), this);
        this.su = false;
        this.rv = false;
        this.qu = 0;
        this.an = 0;
        this.pc = 0;
        this.fi = 0;
        this.nr = 0;
        this.rk = new Rect();
        this.gd = new Rect();
        this.yj = 0;
        this.jd = 0;
        this.qh = 0;
        this.f24092t = null;
        this.f24093x = false;
        this.bu = new View.OnTouchListener() { // from class: com.byazt.oh.w.8

            /* renamed from: l, reason: collision with root package name */
            public float f24095l;

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                float x2 = motionEvent.getX();
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 0) {
                    if (actionMasked == 1) {
                        w.this.f24093x = Math.abs(this.f24095l - motionEvent.getX()) < 10.0f;
                    } else if (actionMasked == 2) {
                        view2.getParent().requestDisallowInterceptTouchEvent(true);
                    } else if (actionMasked == 3) {
                        view2.getParent().requestDisallowInterceptTouchEvent(false);
                    }
                } else {
                    this.f24095l = x2;
                }
                return false;
            }
        };
        this.pi = new Rect();
        this.ku = new Rect();
        this.ov = new Rect();
        this.f24063o = sz.getContext().getApplicationContext();
        j(z3);
        this.hp = view;
        this.f24062n = z2;
        k kVar = new k(this);
        this.f24092t = kVar;
        kVar.hp(this.f24062n);
        DisplayMetrics displayMetrics = this.f24063o.getResources().getDisplayMetrics();
        this.jd = displayMetrics.widthPixels;
        this.qh = displayMetrics.heightPixels;
        this.f24053b = enumSet == null ? EnumSet.noneOf(l.hp.class) : enumSet;
        this.nu = jxVar;
        this.di = mpVar;
        j(8);
        hp(context, this.hp, mpVar);
        j();
        u();
    }

    private void hq() {
        DisplayMetrics displayMetrics = this.f24063o.getResources().getDisplayMetrics();
        TextView textView = this.f24094y;
        if (textView != null) {
            this.zb = textView.getTextSize();
            this.f24094y.setTextSize(2, 14.0f);
            ColorStateList textColors = this.f24094y.getTextColors();
            this.df = textColors;
            if (textColors != null) {
                this.f24094y.setTextColor(ViewCompat.MEASURED_SIZE_MASK);
            }
            this.ux = this.f24094y.getAlpha();
            this.f24094y.setAlpha(0.85f);
            this.f24094y.setShadowLayer(0.0f, xh.jx(this.f24063o, 0.5f), xh.jx(this.f24063o, 0.5f), -1308622848);
            ViewGroup.LayoutParams layoutParams = this.f24094y.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.pi.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                xh.l(this.f24094y, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.pi.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.pi.bottom);
            }
        }
        TextView textView2 = this.zx;
        if (textView2 != null) {
            this.ed = textView2.getTextSize();
            this.zx.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.zx.getTextColors();
            this.lp = textColors2;
            if (textColors2 != null) {
                this.zx.setTextColor(ViewCompat.MEASURED_SIZE_MASK);
            }
            this.f24088c = this.zx.getAlpha();
            this.zx.setAlpha(0.85f);
            this.zx.setShadowLayer(0.0f, xh.jx(this.f24063o, 0.5f), xh.jx(this.f24063o, 0.5f), -1308622848);
            ViewGroup.LayoutParams layoutParams2 = this.zx.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.ku.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                TextView textView3 = this.zx;
                int iApplyDimension = (int) TypedValue.applyDimension(1, 14.0f, displayMetrics);
                Rect rect = this.ku;
                xh.l(textView3, iApplyDimension, rect.top, rect.right, rect.bottom);
            }
        }
        ImageView imageView = this.vq;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.ov.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                ImageView imageView2 = this.vq;
                Rect rect2 = this.ov;
                xh.l(imageView2, rect2.left, rect2.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.ov.bottom);
            }
        }
        ImageView imageView3 = this.vq;
        if (imageView3 != null) {
            v.hp(this.f24063o, "tt_shrink_fullscreen", imageView3, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
        TextView textView4 = this.kg;
        if (textView4 != null) {
            ColorStateList textColors3 = textView4.getTextColors();
            this.wt = textColors3;
            if (textColors3 != null) {
                this.kg.setTextColor(ViewCompat.MEASURED_SIZE_MASK);
            }
            this.ru = this.kg.getAlpha();
            this.kg.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.kg.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.gd.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                TextView textView5 = this.kg;
                int iApplyDimension2 = (int) TypedValue.applyDimension(1, 1.0f, displayMetrics);
                Rect rect3 = this.ku;
                xh.l(textView5, iApplyDimension2, rect3.top, rect3.right, rect3.bottom);
            }
        }
        View view = this.f24091ms;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.yj = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.f24091ms.setLayoutParams(layoutParams5);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor("#66000000"), Color.parseColor("#00000000")});
            this.f24091ms.setBackground(gradientDrawable);
        }
        l(this.tw, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ShapeDrawable l(int i2, String str) {
        Context context = sz.getContext();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(Color.parseColor("#FFFFFFFF"));
        int iJx = xh.jx(context, i2);
        shapeDrawable.setIntrinsicWidth(iJx);
        shapeDrawable.setIntrinsicHeight(iJx);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(xh.jx(context, 1.0f));
        paint.setColor(Color.parseColor(str));
        return shapeDrawable;
    }

    private boolean nu() {
        mp mpVar = this.di;
        if (mpVar == null) {
            return false;
        }
        int iPg = mpVar.pg();
        return iPg == 1 || iPg == 2;
    }

    private void ud() {
        TextView textView = this.f24094y;
        if (textView != null) {
            textView.setTextSize(0, this.zb);
            ColorStateList colorStateList = this.df;
            if (colorStateList != null) {
                this.f24094y.setTextColor(colorStateList);
            }
            this.f24094y.setAlpha(this.ux);
            this.f24094y.setShadowLayer(xh.jx(this.f24063o, 1.0f), 0.0f, 0.0f, 1912602624);
            TextView textView2 = this.f24094y;
            Rect rect = this.pi;
            xh.l(textView2, rect.left, rect.top, rect.right, rect.bottom);
        }
        TextView textView3 = this.zx;
        if (textView3 != null) {
            textView3.setTextSize(0, this.ed);
            ColorStateList colorStateList2 = this.lp;
            if (colorStateList2 != null) {
                this.zx.setTextColor(colorStateList2);
            }
            this.zx.setAlpha(this.f24088c);
            this.zx.setShadowLayer(xh.jx(this.f24063o, 1.0f), 0.0f, 0.0f, 1912602624);
            TextView textView4 = this.zx;
            Rect rect2 = this.ku;
            xh.l(textView4, rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        ImageView imageView = this.vq;
        if (imageView != null) {
            Rect rect3 = this.ov;
            xh.l(imageView, rect3.left, rect3.top, rect3.right, rect3.bottom);
        }
        ImageView imageView2 = this.vq;
        if (imageView2 != null) {
            v.hp(this.f24063o, "tt_enlarge_video", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
        TextView textView5 = this.kg;
        if (textView5 != null) {
            ColorStateList colorStateList3 = this.wt;
            if (colorStateList3 != null) {
                textView5.setTextColor(colorStateList3);
            }
            this.kg.setAlpha(this.ru);
            TextView textView6 = this.kg;
            Rect rect4 = this.ku;
            xh.l(textView6, rect4.left, rect4.top, rect4.right, rect4.bottom);
        }
        View view = this.f24091ms;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.yj;
            this.f24091ms.setLayoutParams(layoutParams);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor("#FF1A1A1A"), Color.parseColor("#00000000")});
            this.f24091ms.setBackground(gradientDrawable);
        }
        l(this.tw, true);
    }

    @Override // com.byazt.oh.a
    public void a() {
        this.ea.removeMessages(1);
    }

    @Override // com.byazt.oh.a, com.byazt.ay.v.l
    public boolean e() {
        return this.su;
    }

    @Override // com.byazt.oh.a
    public void eb() {
        mp mpVar;
        if (com.byazt.we.hp.hp(this.di)) {
            ns();
            return;
        }
        xh.a(this.f24057j);
        xh.a(this.f24069w);
        xh.w(this.f24089f);
        if (this.f24052a != null && (mpVar = this.di) != null && !TextUtils.isEmpty(df.l(mpVar))) {
            xh.a(this.f24052a);
            com.byazt.ws.l.hp(df.l(this.di)).to(this.f24052a);
            hp(this.f24052a, df.l(this.di));
        }
        if (this.jx.getVisibility() == 0) {
            xh.hp((View) this.jx, 8);
        }
    }

    @Override // com.byazt.oh.a
    public boolean gu() {
        return this.f24062n;
    }

    @Override // com.byazt.oh.a, com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what != 1) {
            return;
        }
        jl();
    }

    @Override // com.byazt.oh.a
    public void j() {
        super.j();
        this.f24092t.hp(this.hp);
        xh.hp((View) this.xh, (this.f24062n || this.f24053b.contains(l.hp.hideCloseBtn)) ? 8 : 0);
        this.xh.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.w.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (w.this.n()) {
                    w wVar = w.this;
                    wVar.wv.jx(wVar, view);
                }
            }
        });
        xh.hp((View) this.ky, (!this.f24062n || this.f24053b.contains(l.hp.alwayShowBackBtn)) ? 0 : 8);
        this.ky.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.w.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (w.this.n()) {
                    w wVar = w.this;
                    wVar.wv.j(wVar, view);
                }
            }
        });
        this.f24090m.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.w.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (w.this.n()) {
                    w wVar = w.this;
                    wVar.wv.w(wVar, view);
                }
            }
        });
        this.yr.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.w.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.this.l(false, true);
                w.this.s();
                w.this.eb();
                w.this.n();
            }
        });
        this.vq.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.w.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (w.this.n()) {
                    w wVar = w.this;
                    wVar.wv.l(wVar, view);
                }
            }
        });
        this.hd.setThumbOffset(0);
        this.hd.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.byazt.oh.w.7
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
                if (w.this.n()) {
                    w wVar = w.this;
                    wVar.wv.hp(wVar, i2, z2);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!w.this.su && w.this.f24063o != null) {
                    seekBar.setThumb(w.l(22, "#1E000000"));
                }
                if (w.this.n()) {
                    seekBar.setThumbOffset(0);
                    w wVar = w.this;
                    wVar.wv.l(wVar, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!w.this.su && w.this.f24063o != null) {
                    seekBar.setThumb(w.l(15, "#1E000000"));
                }
                if (w.this.n()) {
                    seekBar.setThumbOffset(0);
                    w wVar = w.this;
                    wVar.wv.hp(wVar, seekBar.getProgress());
                }
            }
        });
        this.hd.setOnTouchListener(this.bu);
    }

    @Override // com.byazt.oh.a, com.byazt.ay.v.l
    public void jl() {
        hp(true, false);
    }

    @Override // com.byazt.oh.a
    public boolean jx(int i2) {
        SeekBar seekBar = this.hd;
        return seekBar != null && i2 > seekBar.getSecondaryProgress();
    }

    @Override // com.byazt.oh.a, com.byazt.ay.k.hp
    public void k() {
        jl();
        jx(false);
    }

    @Override // com.byazt.oh.a
    public void q() {
        this.hd.setProgress(0);
        this.hd.setSecondaryProgress(0);
        this.f24068v.setProgress(0);
        this.f24068v.setSecondaryProgress(0);
        this.zx.setText("00:00");
        this.f24094y.setText("00:00");
        j(8);
        if (wv()) {
            this.f24059l.setVisibility(8);
        }
        ImageView imageView = this.f24052a;
        if (imageView != null) {
            imageView.setImageDrawable(null);
            this.f24052a.setBackground(null);
        }
        j(8);
        xh.hp(this.nd, 8);
        xh.hp(this.f24066s, 8);
        xh.hp((View) this.f24064q, 8);
        xh.hp(this.f24055e, 8);
        xh.hp((View) this.gu, 8);
        xh.hp((View) this.jl, 8);
        xh.hp((View) this.zy, 8);
        com.byazt.ay.v vVar = this.f24054d;
        if (vVar != null) {
            vVar.hp(true);
        }
    }

    @Override // com.byazt.oh.a
    public void s() {
        xh.w(this.f24057j);
        xh.w(this.f24089f);
    }

    @Override // com.byazt.oh.a, com.byazt.ay.k.hp
    public boolean v() {
        com.byazt.ay.v vVar = this.f24054d;
        return vVar != null && vVar.hp();
    }

    @Override // com.byazt.oh.a
    public void w() {
        this.ea.removeMessages(1);
        this.ea.sendMessageDelayed(this.ea.obtainMessage(1), 2000L);
    }

    @Override // com.byazt.oh.a
    public boolean zy() {
        return this.ns;
    }

    private void a(boolean z2) {
        if (z2) {
            hq();
        } else {
            ud();
        }
    }

    @Override // com.byazt.oh.a, com.byazt.su.l
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void hp(mp mpVar, WeakReference weakReference, boolean z2) {
        hp(mpVar, (WeakReference<Context>) weakReference, z2);
    }

    @Override // com.byazt.oh.a
    public void jx(boolean z2) {
        TextView textView = this.as;
        if (textView != null) {
            xh.hp((View) textView, (!this.f24062n && z2) ? 0 : 8);
        }
    }

    @Override // com.byazt.oh.a
    public void hp(Context context, View view, mp mpVar) {
        super.hp(context, view, mpVar);
        this.ky = (TextView) view.findViewById(2114387759);
        this.xh = (ImageView) view.findViewById(2114387678);
        this.f24091ms = view.findViewById(2114387605);
        this.f24090m = (ImageView) view.findViewById(2114387897);
        this.as = (TextView) view.findViewById(2114387730);
        this.kg = (TextView) view.findViewById(2114387706);
        this.mp = (TextView) view.findViewById(2114387846);
        this.f24089f = view.findViewById(2114387823);
        this.yr = (ImageView) view.findViewById(2114387618);
        this.rz = (TextView) view.findViewById(2114387860);
        this.hd = (SeekBar) view.findViewById(2114387872);
        this.zx = (TextView) view.findViewById(2114387668);
        this.f24094y = (TextView) view.findViewById(2114387811);
        this.nd = view.findViewById(2114387628);
        this.vq = (ImageView) view.findViewById(2114387661);
        this.eb = (TTViewStub) view.findViewById(2114387744);
    }

    @Override // com.byazt.oh.a
    public void l(boolean z2) {
        int i2 = e() ? this.qh : this.xs;
        int i3 = e() ? this.jd : this.vv;
        if (this.sz <= 0 || this.ec <= 0 || i2 <= 0) {
            return;
        }
        if (!gu() && !e() && !this.f24053b.contains(l.hp.fixedSize)) {
            i3 = l.hp.f19309l;
        }
        int i4 = this.ec;
        int i5 = this.sz;
        int i6 = (int) (i5 * ((i2 * 1.0f) / i4));
        if (i6 > i3) {
            i2 = (int) (i4 * ((i3 * 1.0f) / i5));
        } else {
            i3 = i6;
        }
        if (!z2 && !e()) {
            i2 = this.xs;
            i3 = this.vv;
        }
        this.f24059l.hp(i2, i3);
    }

    @Override // com.byazt.oh.a
    public void j(int i2) {
        this.cx = i2;
        xh.hp(this.hp, i2);
        if (i2 != 0) {
            this.xv = false;
        } else if (this.gb) {
            this.xv = true;
        }
    }

    @Override // com.byazt.oh.a
    public void hp(String str) {
        TextView textView = this.as;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.kg;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.byazt.oh.a
    public void l(int i2) {
        View view = this.nd;
        if (view != null && view.getVisibility() == 0) {
            xh.hp((View) this.f24068v, 8);
            return;
        }
        xh.hp((View) this.f24068v, 0);
        this.hd.setProgress(i2);
        this.f24068v.setProgress(i2);
    }

    @Override // com.byazt.oh.a
    public void hp(long j2, long j3) {
        this.zx.setText(com.byazt.xm.hp.hp(j3));
        this.f24094y.setText(com.byazt.xm.hp.hp(j2));
        this.hd.setProgress(com.byazt.xm.hp.hp(j2, j3));
    }

    @Override // com.byazt.oh.a
    public void l(ViewGroup viewGroup) {
        View view;
        u.l("FullScreen", "Detail exitFullScreen.....");
        if (viewGroup == null || (view = this.hp) == null || !(view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.su = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.hp.getLayoutParams();
        marginLayoutParams.width = this.pc;
        marginLayoutParams.height = this.fi;
        marginLayoutParams.leftMargin = this.an;
        marginLayoutParams.topMargin = this.qu;
        this.hp.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.nr);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            Rect rect = this.rk;
            xh.l(viewGroup, rect.left, rect.top, rect.right, rect.bottom);
        }
        l(true);
        v.hp(this.f24063o, "tt_enlarge_video", this.vq, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        this.hd.setThumb(l(15, "#1E000000"));
        this.hd.setThumbOffset(0);
        com.byazt.xm.hp.hp(this.hp, true);
        a(this.su);
        xh.hp(this.f24091ms, 8);
        if (this.f24053b.contains(l.hp.alwayShowBackBtn)) {
            xh.hp((View) this.ky, 0);
        }
    }

    @Override // com.byazt.oh.a, com.byazt.su.l
    public void hp() {
        hp(false, this.f24062n);
        di();
    }

    @Override // com.byazt.oh.a
    public void hp(long j2) {
        this.f24094y.setText(com.byazt.xm.hp.hp(j2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.oh.a
    @SuppressLint({"ClickableViewAccessibility"})
    public void hp(mp mpVar, WeakReference<Context> weakReference, boolean z2) {
        mp mpVar2;
        if (mpVar == null) {
            return;
        }
        if (com.byazt.we.hp.hp(mpVar)) {
            hp(sz.getContext(), this.hp);
            vv();
            return;
        }
        hp(this.hp, sz.getContext());
        hp(false, this.f24062n);
        xh.hp(this.f24066s, 0);
        xh.hp((View) this.f24064q, 0);
        xh.hp(this.f24055e, 0);
        if (this.f24064q != null && (mpVar2 = this.di) != null && !TextUtils.isEmpty(df.l(mpVar2))) {
            com.byazt.ws.l.hp(df.l(this.di)).to(this.f24064q);
            hp(this.f24064q, df.l(this.di));
        }
        xh.hp((View) this.f24058k, 0);
        xh.hp((View) this.gu, 8);
        xh.hp((View) this.jl, 8);
        xh.hp((View) this.zy, 8);
        xh.hp(this.f24058k, "重新播放");
        xh.hp(this.f24058k, new View.OnClickListener() { // from class: com.byazt.oh.w.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l lVar = w.this.wv;
                if (lVar != null) {
                    lVar.hp();
                }
            }
        }, "video_ad_button");
        xh.hp(this.f24058k, (View.OnTouchListener) null, "video_ad_button");
        if (nu()) {
            xh.hp(this.f24055e, 8);
        }
    }

    @Override // com.byazt.oh.a
    public void hp(ViewGroup viewGroup) {
        if (viewGroup != null && (this.hp.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.su = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.hp.getLayoutParams();
            this.an = marginLayoutParams.leftMargin;
            this.qu = marginLayoutParams.topMargin;
            this.pc = marginLayoutParams.width;
            this.fi = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.hp.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.nr = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.rk.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                xh.l(viewGroup, 0, 0, 0, 0);
            }
            l(true);
            v.hp(this.f24063o, "tt_shrink_video", this.vq, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            this.hd.setThumb(l(18, "#00000000"));
            this.hd.setThumbOffset(0);
            com.byazt.xm.hp.hp(this.hp, false);
            a(this.su);
            xh.hp(this.f24091ms, 8);
            if (!this.f24062n) {
                xh.hp((View) this.xh, 8);
                xh.hp((View) this.ky, 8);
            } else if (this.f24053b.contains(l.hp.hideCloseBtn)) {
                xh.hp((View) this.xh, 8);
            }
        }
    }

    @Override // com.byazt.oh.a
    public void hp(boolean z2, boolean z3, boolean z4) {
        xh.hp(this.nd, 0);
        xh.hp((View) this.f24068v, 0);
        if (this.su) {
            xh.hp(this.f24091ms, 0);
            xh.hp((View) this.kg, 0);
        } else if (z4) {
            xh.hp(this.f24091ms, 8);
        }
        xh.hp((View) this.jx, (!z2 || this.f24057j.getVisibility() == 0) ? 8 : 0);
        if (!this.f24062n && !this.su) {
            if (!this.f24053b.contains(l.hp.hideCloseBtn) && !z4) {
                xh.hp((View) this.xh, 0);
            }
            xh.hp((View) this.ky, z4 ? 8 : 0);
        }
        xh.hp((View) this.zx, 0);
        xh.hp((View) this.f24094y, 0);
        if (nu()) {
            xh.hp((View) this.hd, 8);
        } else {
            xh.hp((View) this.hd, 0);
        }
    }

    @Override // com.byazt.oh.a
    public void hp(boolean z2, boolean z3) {
        xh.hp(this.nd, 8);
        xh.hp(this.f24091ms, 8);
        xh.hp((View) this.f24068v, z2 ? 0 : 8);
        xh.hp((View) this.jx, 8);
        if (!this.f24062n && !this.su) {
            xh.hp((View) this.xh, 8);
            if (!this.f24053b.contains(l.hp.alwayShowBackBtn)) {
                xh.hp((View) this.ky, 8);
            }
        } else if (this.f24053b.contains(l.hp.hideCloseBtn)) {
            xh.hp((View) this.xh, 8);
        }
        if (z3) {
            xh.hp((View) this.xh, 8);
            xh.hp((View) this.ky, 8);
        }
        jx(false);
    }

    @Override // com.byazt.oh.a, com.byazt.ay.k.hp
    public void hp(View view, boolean z2) {
        if (e()) {
            String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            mp mpVar = this.di;
            if (mpVar != null && !TextUtils.isEmpty(mpVar.v_())) {
                hp(this.di.v_());
            }
            this.mp.setText(str);
        } else {
            hp("");
            this.mp.setText("");
        }
        if (this.hq) {
            return;
        }
        jx(this.f24062n && !this.su);
        if (n()) {
            this.wv.hp(this, view, true, this.f24057j.getVisibility() != 0);
        }
    }
}
