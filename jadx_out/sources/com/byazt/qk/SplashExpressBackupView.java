package com.byazt.qk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.su.jx;
import com.byazt.vt.UpieImageView;
import com.byazt.wnd.GifView;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.zn.xh;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 64, 2138})
/* loaded from: classes3.dex */
public class SplashExpressBackupView extends BackupView implements jx.InterfaceC0367jx {
    public com.byazt.pjc.l ec;

    /* renamed from: k, reason: collision with root package name */
    public View f24811k;

    /* renamed from: n, reason: collision with root package name */
    public jx.InterfaceC0367jx f24812n;
    public NativeVideoTsView sz;

    /* renamed from: u, reason: collision with root package name */
    public TextView f24813u;

    /* renamed from: v, reason: collision with root package name */
    public GifView f24814v;
    public FrameLayout vv;
    public Button xs;
    public NativeExpressView zy;

    public SplashExpressBackupView(Context context) {
        super(context);
        this.hp = context;
        this.f24766w = "splash_ad";
    }

    private void a() {
        e();
        this.f24814v.setVisibility(0);
        this.vv.setVisibility(8);
        hp(this.f24814v, this.f24763l, this.ec);
        this.f24813u.setText(this.f24763l.cu());
        if (this.f24763l.sh() != null) {
            xh.hp((View) this.xs, 8);
        } else {
            xh.hp((View) this.xs, 0);
            this.xs.setText(this.f24763l.ll());
            hp((View) this.xs, true);
        }
        setExpressBackupListener(this.f24811k);
    }

    private void e() {
        View viewHp = hp(this.hp);
        if (viewHp == null) {
            return;
        }
        addView(viewHp);
    }

    private void eb() {
        e();
        this.f24814v.setVisibility(8);
        this.vv.setVisibility(0);
        if (df.v(this.f24763l) != null) {
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) hp(this.zy);
            this.sz = nativeVideoTsView;
            nativeVideoTsView.setVideoAdInteractionListener(this);
            if (this.sz == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.vv.addView(this.sz, layoutParams);
        }
        this.f24813u.setText(this.f24763l.cu());
        if (this.f24763l.sh() != null) {
            xh.hp((View) this.xs, 8);
        } else {
            xh.hp((View) this.xs, 0);
            this.xs.setText(this.f24763l.ll());
            hp((View) this.xs, true);
        }
        setExpressBackupListener(this.f24811k);
    }

    private boolean j() {
        mp mpVar = this.f24763l;
        return mpVar != null && mpVar.wf() == 2;
    }

    private boolean jx() {
        return !(this.zy instanceof NativeExpressVideoView);
    }

    private void l() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f24760a, this.eb);
        }
        layoutParams.width = this.f24760a;
        layoutParams.height = this.eb;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        hp(this.f24763l.hy(), this.f24763l);
    }

    private void q() {
        GifView gifView = new GifView(this.hp);
        gifView.setScaleType(ImageView.ScaleType.FIT_XY);
        hp(gifView, this.f24763l, this.ec);
        addView(gifView, new ViewGroup.LayoutParams(-1, -1));
        setExpressBackupListener(this);
    }

    private void s() {
        NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) hp(this.zy);
        this.sz = nativeVideoTsView;
        nativeVideoTsView.setVideoAdInteractionListener(this);
        NativeVideoTsView nativeVideoTsView2 = this.sz;
        if (nativeVideoTsView2 == null) {
            return;
        }
        addView(nativeVideoTsView2);
        setExpressBackupListener(this);
    }

    private void setExpressBackupListener(View view) {
        mp mpVar = this.f24763l;
        if (mpVar == null || mpVar.fu() != 1) {
            return;
        }
        hp(view, true);
    }

    private void w() {
        e();
        this.f24814v.setVisibility(0);
        this.vv.setVisibility(8);
        ViewGroup.LayoutParams layoutParams = this.f24814v.getLayoutParams();
        layoutParams.height = xh.jx(this.hp, 291.0f);
        this.f24814v.setLayoutParams(layoutParams);
        hp(this.f24814v, this.f24763l, this.ec);
        this.f24813u.setText(this.f24763l.cu());
        if (this.f24763l.sh() != null) {
            xh.hp((View) this.xs, 8);
        } else {
            xh.hp((View) this.xs, 0);
            this.xs.setText(this.f24763l.ll());
            hp((View) this.xs, true);
        }
        setExpressBackupListener(this.f24811k);
    }

    public com.byazt.su.jx getVideoController() {
        NativeVideoTsView nativeVideoTsView = this.sz;
        if (nativeVideoTsView == null) {
            return null;
        }
        return nativeVideoTsView.getNativeVideoController();
    }

    @Override // com.byazt.qk.BackupView
    public void hp(View view, int i2, com.byazt.xci.b bVar) throws JSONException {
        NativeExpressView nativeExpressView = this.zy;
        if (nativeExpressView != null) {
            nativeExpressView.hp(view, i2, bVar, -1);
        }
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onProgressUpdate(long j2, long j3) {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdContinuePlay() {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdPaused() {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoAdStartPlay() {
    }

    @Override // com.byazt.su.jx.InterfaceC0367jx
    public void onVideoComplete() {
        jx.InterfaceC0367jx interfaceC0367jx = this.f24812n;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onVideoComplete();
        }
    }

    public void setVideoAdListener(jx.InterfaceC0367jx interfaceC0367jx) {
        this.f24812n = interfaceC0367jx;
    }

    public void hp(com.byazt.pjc.l lVar, mp mpVar, NativeExpressView nativeExpressView) {
        this.f24763l = mpVar;
        this.zy = nativeExpressView;
        this.f24760a = xh.jx(this.hp, nativeExpressView.getExpectExpressWidth());
        this.eb = xh.jx(this.hp, this.zy.getExpectExpressWidth());
        this.ec = lVar;
        l();
        this.zy.addView(this, new ViewGroup.LayoutParams(-1, -1));
    }

    private void hp(int i2, mp mpVar) {
        if (!jx()) {
            if (i2 != 5) {
                s();
                return;
            } else {
                eb();
                return;
            }
        }
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        q();
                        return;
                    }
                }
            }
            if (j()) {
                q();
                return;
            } else {
                a();
                return;
            }
        }
        w();
    }

    private View hp(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackground(com.byazt.vi.w.l());
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = xh.jx(context, 79.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setText("今日推荐");
        textView.setGravity(17);
        textView.setTextSize(2, 30.0f);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextColor(Color.parseColor("#895434"));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        this.f24813u = textView2;
        textView2.setId(2114387471);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 218.0f, resources.getDisplayMetrics()), -2);
        layoutParams3.topMargin = xh.jx(context, 31.0f);
        layoutParams3.gravity = 1;
        this.f24813u.setLayoutParams(layoutParams3);
        this.f24813u.setGravity(1);
        this.f24813u.setTextSize(2, 15.0f);
        this.f24813u.setTextColor(Color.parseColor("#895434"));
        this.f24813u.setSingleLine(false);
        linearLayout.addView(this.f24813u);
        GifView gifView = new GifView(context);
        this.f24814v = gifView;
        gifView.setId(2114387470);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 219.0f, resources.getDisplayMetrics()));
        layoutParams4.topMargin = xh.jx(context, 29.0f);
        layoutParams4.setMarginStart(xh.jx(context, 15.0f));
        layoutParams4.setMarginEnd(xh.jx(context, 15.0f));
        layoutParams4.gravity = 1;
        this.f24814v.setLayoutParams(layoutParams4);
        this.f24814v.setScaleType(ImageView.ScaleType.FIT_XY);
        linearLayout.addView(this.f24814v);
        FrameLayout frameLayout = new FrameLayout(context);
        this.vv = frameLayout;
        frameLayout.setId(2114387469);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 185.0f, resources.getDisplayMetrics()));
        layoutParams5.setMarginStart(xh.jx(context, 15.0f));
        layoutParams5.setMarginEnd(xh.jx(context, 15.0f));
        this.vv.setLayoutParams(layoutParams5);
        this.vv.setVisibility(8);
        linearLayout.addView(this.vv);
        Button button = new Button(context);
        this.xs = button;
        button.setId(2114387468);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 145.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 43.0f, resources.getDisplayMetrics()));
        layoutParams6.topMargin = xh.jx(context, 37.0f);
        layoutParams6.gravity = 1;
        this.xs.setLayoutParams(layoutParams6);
        this.xs.setText("立即下载");
        this.xs.setTextColor(Color.parseColor("#ffffff"));
        this.xs.setTypeface(Typeface.defaultFromStyle(1));
        this.xs.setBackground(com.byazt.vi.w.l(context));
        linearLayout.addView(this.xs);
        return linearLayout;
    }

    private void hp(GifView gifView) {
        dy dyVar = this.f24763l.vi().get(0);
        if (dyVar != null) {
            com.byazt.ws.l.hp(dyVar).to(gifView);
        }
        if (com.byazt.nwu.hp.j(this.f24763l)) {
            UpieImageView upieImageView = new UpieImageView(gifView.getContext(), com.byazt.nwu.hp.q(this.f24763l), com.byazt.fbd.hp.hp(this.f24763l), com.byazt.nwu.hp.e(this.f24763l));
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            com.byazt.nwu.hp.hp(gifView, upieImageView);
        }
    }

    public void hp(byte[] bArr, GifView gifView) {
        if (bArr == null || gifView == null) {
            return;
        }
        gifView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        gifView.hp(bArr, false);
    }

    public void hp(Drawable drawable, GifView gifView) {
        if (drawable == null || gifView == null) {
            return;
        }
        gifView.setImageDrawable(drawable);
    }

    public void hp(GifView gifView, mp mpVar, com.byazt.pjc.l lVar) {
        Drawable drawableHp;
        if (lVar == null) {
            hp(gifView);
            return;
        }
        if (lVar.w()) {
            hp(lVar.jx(), gifView);
            return;
        }
        if (mpVar.vi() == null || mpVar.vi().get(0) == null) {
            return;
        }
        if (lVar.hp() != null) {
            drawableHp = new BitmapDrawable(lVar.hp());
        } else {
            drawableHp = com.byazt.zn.u.hp(lVar.jx(), mpVar.vi().get(0).l());
        }
        hp(drawableHp, gifView);
        if (com.byazt.nwu.hp.j(this.f24763l)) {
            UpieImageView upieImageView = new UpieImageView(gifView.getContext(), com.byazt.nwu.hp.q(this.f24763l), com.byazt.fbd.hp.hp(this.f24763l), com.byazt.nwu.hp.e(this.f24763l));
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            com.byazt.nwu.hp.hp(gifView, upieImageView);
        }
    }

    @Override // com.byazt.qk.BackupView
    public void hp(View view, boolean z2) {
        mp mpVar = this.f24763l;
        if (mpVar == null || mpVar.sh() == null || this.f24763l.sh().hp() != 1) {
            return;
        }
        super.hp(view, z2);
    }
}
