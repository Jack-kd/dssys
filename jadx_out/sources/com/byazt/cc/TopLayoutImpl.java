package com.byazt.cc;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.byazt.lf.k;
import com.byazt.xci.ec;
import com.byazt.xci.hq;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 771, 1223})
/* loaded from: classes2.dex */
public class TopLayoutImpl extends FrameLayout implements hp<TopLayoutImpl> {

    /* renamed from: a, reason: collision with root package name */
    public View f18720a;

    /* renamed from: e, reason: collision with root package name */
    public View f18721e;
    public View eb;
    public TextView ec;
    public TextView gu;
    public View hp;

    /* renamed from: j, reason: collision with root package name */
    public View f18722j;
    public View jl;
    public View jx;

    /* renamed from: k, reason: collision with root package name */
    public View f18723k;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f18724l;

    /* renamed from: n, reason: collision with root package name */
    public l f18725n;
    public mp ns;

    /* renamed from: q, reason: collision with root package name */
    public TextView f18726q;

    /* renamed from: s, reason: collision with root package name */
    public View f18727s;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public TextView f18728u;

    /* renamed from: v, reason: collision with root package name */
    public View f18729v;
    public View vv;

    /* renamed from: w, reason: collision with root package name */
    public TextView f18730w;
    public View xs;
    public View zy;

    public TopLayoutImpl(Context context) {
        this(context, null);
    }

    @Override // com.byazt.cc.hp
    public View getCloseButton() {
        return this.f18721e;
    }

    @Override // com.byazt.cc.hp
    public boolean getSkipOrCloseVisible() {
        return xh.j(this.f18721e) || (this.f18720a != null && xh.j(this.gu) && !TextUtils.isEmpty(this.gu.getText()));
    }

    public l getTopListener() {
        return this.f18725n;
    }

    @Override // com.byazt.cc.hp
    public void setDislikeLeft(boolean z2) {
        if (this.hp.getLayoutParams() instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.hp.getLayoutParams();
            layoutParams.gravity = z2 ? GravityCompat.START : GravityCompat.END;
            this.hp.setLayoutParams(layoutParams);
        }
    }

    @Override // com.byazt.cc.hp
    public void setListener(l lVar) {
        this.f18725n = lVar;
    }

    @Override // com.byazt.cc.hp
    public void setPlayAgainEntranceText(String str) {
        xh.hp(this.f18730w, str);
    }

    @Override // com.byazt.cc.hp
    public void setShowAgain(boolean z2) {
        xh.hp(this.f18722j, z2 ? 0 : 8);
    }

    @Override // com.byazt.cc.hp
    public void setShowBack(boolean z2) {
        View view = this.jx;
        if (view != null) {
            view.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.byazt.cc.hp
    public void setShowDislike(boolean z2) {
        View view = this.hp;
        if (view != null) {
            view.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.byazt.cc.hp
    public void setShowSound(boolean z2) {
        ImageView imageView = this.f18724l;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.byazt.cc.hp
    public void setSoundMute(boolean z2) {
        this.sz = z2;
        v.hp(getContext(), this.sz ? "tt_mute" : "tt_unmute", this.f18724l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    @Override // com.byazt.cc.hp
    public void setVisible(boolean z2) {
        setVisibility(z2 ? 0 : 8);
    }

    public TopLayoutImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void j() {
        xh.hp(this.hp, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.jx(view);
                }
            }
        }, "top_dislike_button");
        xh.hp(this.f18724l, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TopLayoutImpl.this.sz = !r0.sz;
                v.hp(TopLayoutImpl.this.getContext(), TopLayoutImpl.this.sz ? "tt_mute" : "tt_unmute", TopLayoutImpl.this.f18724l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.l(view);
                }
            }
        }, "top_mute_button");
        xh.hp(this.eb, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "top_before_button");
        xh.hp(this.f18721e, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("topListener", TopLayoutImpl.this.f18725n);
                    jSONObject.put("topImpl", 1);
                } catch (Throwable unused) {
                }
                if (!hq.hp(TopLayoutImpl.this.ns) || com.byazt.am.j.hp(String.valueOf(ky.zy(TopLayoutImpl.this.ns)))) {
                    k.hp().hp(TopLayoutImpl.this.ns, "stats_reward_full_click_native_close", jSONObject);
                }
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.hp(view);
                }
            }
        }, "top_skip_button");
        xh.hp(this.jx, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.j(view);
                }
            }
        }, "top_back_button");
        xh.hp(this.f18722j, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.w(view);
                }
            }
        }, "top_again_button");
        xh.hp(this.f18720a, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.a(view);
                }
            }
        }, "top_skip_border");
        xh.hp(this.vv, new View.OnClickListener() { // from class: com.byazt.cc.TopLayoutImpl.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopLayoutImpl.this.f18725n != null) {
                    TopLayoutImpl.this.f18725n.eb(view);
                }
            }
        }, "top_next_video_cancel");
    }

    @Override // com.byazt.cc.hp
    public void jx() {
        View view = this.hp;
        if (view != null) {
            view.performClick();
        }
    }

    @Override // com.byazt.cc.hp
    public void l() {
        ImageView imageView = this.f18724l;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    public TopLayoutImpl(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public TopLayoutImpl hp(mp mpVar) {
        this.ns = mpVar;
        if (ec.zy(mpVar)) {
            addView(com.byazt.vi.a.s(getContext()));
        } else if (zx.s(this.ns)) {
            addView(com.byazt.vi.a.eb(getContext()));
        } else {
            addView(com.byazt.vi.a.a(getContext()));
        }
        this.hp = findViewById(2114387845);
        this.f18724l = (ImageView) findViewById(2114387758);
        this.jx = findViewById(2114387819);
        this.f18722j = findViewById(2114387673);
        this.f18730w = (TextView) findViewById(2114387632);
        this.f18720a = findViewById(2114387713);
        this.eb = findViewById(2114387951);
        this.f18727s = findViewById(2114387725);
        this.f18726q = (TextView) findViewById(2114387606);
        this.f18721e = findViewById(2114387635);
        this.gu = (TextView) findViewById(2114387785);
        this.jl = findViewById(2114387738);
        this.zy = findViewById(2114387924);
        this.f18723k = findViewById(2114387950);
        this.f18729v = findViewById(2114387949);
        this.f18728u = (TextView) findViewById(2114387948);
        this.xs = findViewById(2114387947);
        this.vv = findViewById(2114387946);
        this.ec = (TextView) findViewById(2114387945);
        View view = this.f18721e;
        if (view != null) {
            view.setEnabled(false);
            this.f18721e.setClickable(false);
        }
        j();
        return this;
    }

    @Override // com.byazt.cc.hp
    public void hp(boolean z2, String str, String str2, boolean z3, boolean z4) {
        xh.hp(this.f18720a, 0);
        boolean z5 = z2 || !TextUtils.isEmpty(str);
        boolean z6 = z3 || !TextUtils.isEmpty(str2);
        boolean z7 = z5 && z6;
        xh.hp(this.f18720a, (z5 || z6) ? 0 : 4);
        xh.hp(this.eb, z5 ? 0 : 8);
        xh.hp(this.f18721e, z6 ? 0 : 8);
        xh.hp(this.zy, z7 ? 0 : 8);
        xh.hp(this.f18727s, z2 ? 0 : 8);
        xh.hp((View) this.f18726q, !TextUtils.isEmpty(str) ? 0 : 8);
        xh.hp(this.jl, z3 ? 0 : 8);
        xh.hp((View) this.gu, TextUtils.isEmpty(str2) ? 8 : 0);
        if (!TextUtils.isEmpty(str)) {
            xh.hp(this.f18726q, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            xh.hp(this.gu, str2);
        }
        View view = this.f18721e;
        if (view != null) {
            view.setEnabled(z4);
            this.f18721e.setClickable(z4);
        }
    }

    @Override // com.byazt.cc.hp
    public void hp(String str, String str2, boolean z2) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        boolean z3 = (zIsEmpty || zIsEmpty2) ? false : true;
        xh.hp(this.f18723k, (zIsEmpty && zIsEmpty2) ? 4 : 0);
        xh.hp(this.f18729v, !zIsEmpty ? 0 : 8);
        xh.hp(this.vv, !zIsEmpty2 ? 0 : 8);
        xh.hp(this.xs, z3 ? 0 : 8);
        xh.hp((View) this.f18728u, !TextUtils.isEmpty(str) ? 0 : 8);
        xh.hp((View) this.ec, TextUtils.isEmpty(str2) ? 8 : 0);
        if (!TextUtils.isEmpty(str)) {
            xh.hp(this.f18728u, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            xh.hp(this.ec, str2);
        }
        View view = this.f18721e;
        if (view != null) {
            view.setEnabled(z2);
            this.f18721e.setClickable(z2);
        }
    }

    @Override // com.byazt.cc.hp
    public void hp() {
        View view = this.f18721e;
        if (view != null) {
            view.performClick();
        }
    }
}
