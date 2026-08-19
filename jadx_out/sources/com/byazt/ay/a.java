package com.byazt.ay;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.nk.TTProgressBar;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 525, 54})
/* loaded from: classes2.dex */
public class a extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public TextView f18345a;

    /* renamed from: e, reason: collision with root package name */
    public View f18346e;
    public Button eb;
    public boolean ec;
    public ViewGroup gu;
    public TTProgressBar hp;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f18347j;
    public Context jl;
    public View.OnClickListener jx;

    /* renamed from: k, reason: collision with root package name */
    public String f18348k;

    /* renamed from: l, reason: collision with root package name */
    public hp f18349l;

    /* renamed from: q, reason: collision with root package name */
    public Button f18350q;

    /* renamed from: s, reason: collision with root package name */
    public Button f18351s;
    public View sz;

    /* renamed from: u, reason: collision with root package name */
    public String f18352u;

    /* renamed from: v, reason: collision with root package name */
    public String f18353v;
    public String vv;

    /* renamed from: w, reason: collision with root package name */
    public TextView f18354w;
    public int xs;
    public String zy;

    public interface hp {
        void hp();

        void l();
    }

    public a(Context context) {
        super(context);
        this.xs = -1;
        this.ec = false;
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.jl = context;
    }

    private void j() {
        Button button;
        if (this.f18354w != null) {
            if (TextUtils.isEmpty(this.f18348k)) {
                this.f18354w.setVisibility(8);
            } else {
                this.f18354w.setText(this.f18348k);
                this.f18354w.setVisibility(0);
            }
        }
        if (this.f18345a != null && !TextUtils.isEmpty(this.zy)) {
            this.f18345a.setText(this.zy);
        }
        if (this.f18351s != null) {
            if (TextUtils.isEmpty(this.f18353v)) {
                this.f18351s.setText("确定");
            } else {
                this.f18351s.setText(this.f18353v);
            }
            int i2 = this.xs;
            if (i2 != -1) {
                this.f18351s.setBackgroundColor(i2);
            }
        }
        if (this.eb != null) {
            if (TextUtils.isEmpty(this.f18352u)) {
                this.eb.setText("取消");
            } else {
                this.eb.setText(this.f18352u);
            }
        }
        ImageView imageView = this.f18347j;
        if (imageView != null) {
            String str = this.vv;
            if (str != null) {
                com.byazt.ymw.v.hp(this.jl, str, imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                this.f18347j.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        View view = this.f18346e;
        if (view == null || (button = this.eb) == null) {
            return;
        }
        if (this.ec) {
            view.setVisibility(8);
            this.eb.setVisibility(8);
            return;
        }
        button.setVisibility(0);
        View view2 = this.f18346e;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void jx() {
        xh.hp(this.f18351s, new View.OnClickListener() { // from class: com.byazt.ay.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp hpVar = a.this.f18349l;
                if (hpVar != null) {
                    hpVar.hp();
                }
            }
        }, "positiveBn");
        xh.hp(this.eb, new View.OnClickListener() { // from class: com.byazt.ay.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp hpVar = a.this.f18349l;
                if (hpVar != null) {
                    hpVar.l();
                }
            }
        }, "negtiveBn");
        xh.hp(this.f18350q, new View.OnClickListener() { // from class: com.byazt.ay.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View.OnClickListener onClickListener = a.this.jx;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
            }
        }, "dialog_change_btn");
    }

    private void w() {
        this.eb = (Button) findViewById(2114387829);
        this.f18351s = (Button) findViewById(2114387914);
        this.f18354w = (TextView) findViewById(2114387802);
        this.f18345a = (TextView) findViewById(2114387857);
        this.f18347j = (ImageView) findViewById(2114387832);
        this.f18346e = findViewById(2114387775);
        this.gu = (ViewGroup) findViewById(2114387849);
        this.f18350q = (Button) findViewById(2114387749);
    }

    public a l(String str) {
        this.f18348k = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        View viewRv = this.sz;
        if (viewRv == null) {
            viewRv = com.byazt.vi.a.rv(this.jl);
        }
        setContentView(viewRv);
        w();
        j();
        jx();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            j();
        } catch (Exception unused) {
        }
    }

    public a hp(hp hpVar) {
        this.f18349l = hpVar;
        return this;
    }

    public void l() {
        ViewGroup viewGroup = this.gu;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public a hp(View.OnClickListener onClickListener) {
        this.jx = onClickListener;
        return this;
    }

    public a hp(String str) {
        this.zy = str;
        return this;
    }

    public a jx(String str) {
        this.f18353v = str;
        return this;
    }

    public a hp(int i2) {
        this.xs = i2;
        return this;
    }

    public a hp(View view) {
        this.sz = view;
        return this;
    }

    public void hp() {
        if (this.gu == null) {
            return;
        }
        if (this.hp == null) {
            try {
                this.hp = new TTProgressBar(this.jl);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                layoutParams.gravity = 17;
                this.hp.setLayoutParams(layoutParams);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Color.parseColor("#77000000"));
                gradientDrawable.setCornerRadius(xh.jx(this.jl, 2.0f));
                this.hp.setBackground(gradientDrawable);
                int iJx = xh.jx(this.jl, 10.0f);
                this.hp.setPadding(iJx, iJx, iJx, iJx);
                com.byazt.ymw.v.hp(this.jl, "tt_normalscreen_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.ay.a.4
                    @Override // com.byazt.oxb.hp
                    public void hp(Bitmap bitmap) {
                        a.this.hp.setIndeterminateDrawable(com.byazt.vi.w.hp(a.this.jl, new BitmapDrawable(a.this.jl.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
                    }
                }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                this.gu.addView(this.hp);
            } catch (Exception unused) {
            }
        }
        this.gu.setVisibility(0);
    }

    public a w(String str) {
        this.vv = str;
        return this;
    }

    public a j(String str) {
        this.f18352u = str;
        return this;
    }
}
