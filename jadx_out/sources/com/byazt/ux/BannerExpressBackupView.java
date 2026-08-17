package com.byazt.ux;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.jz.s;
import com.byazt.nk.TTRatingBar;
import com.byazt.qk.BackupView;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.vv;
import com.byazt.vi.a;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.b;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 115, MediaPlayer.MEDIA_PLAYER_OPTION_FILE_SIZE})
/* loaded from: classes3.dex */
public class BannerExpressBackupView extends BackupView {
    public static vv[] zy = {new vv(1, 6.4f, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 100), new vv(3, 1.2f, 600, 500)};
    public TextView ec;

    /* renamed from: k, reason: collision with root package name */
    public View f26439k;

    /* renamed from: n, reason: collision with root package name */
    public ImageView f26440n;
    public TextView sz;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.gog.jx f26441u;

    /* renamed from: v, reason: collision with root package name */
    public NativeExpressView f26442v;
    public vv vv;
    public int xs;

    public BannerExpressBackupView(Context context) {
        super(context);
        this.xs = 1;
        this.hp = context;
    }

    private void j() {
        int i2 = this.vv.hp;
        if (i2 != 2 && i2 != 3) {
            TextView textView = this.ec;
            if (textView != null) {
                textView.setTextColor(Color.parseColor("#FF333333"));
            }
            if (this.f26440n != null) {
                v.hp(getContext(), "tt_dislike_icon", this.f26440n, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                return;
            }
            return;
        }
        TextView textView2 = this.ec;
        if (textView2 != null) {
            textView2.setTextColor(Color.parseColor("#FFAEAEAE"));
        }
        TextView textView3 = this.sz;
        if (textView3 != null) {
            textView3.setTextColor(Color.parseColor("#3E3E3E"));
        }
        if (this.f26440n != null) {
            this.f26440n.setImageDrawable(a.f(this.hp));
        }
    }

    private void jx() {
        float fJx = (this.eb * 1.0f) / xh.jx(this.hp, 50.0f);
        float f2 = this.eb * 1.0f;
        int i2 = this.f24760a;
        if (f2 / i2 > 0.21875f) {
            fJx = (i2 * 1.0f) / xh.jx(this.hp, 320.0f);
        }
        View viewMp = a.mp(this.hp);
        this.f26439k = viewMp;
        addView(viewMp);
        this.f26440n = (ImageView) this.f26439k.findViewById(2114387854);
        ImageView imageView = (ImageView) this.f26439k.findViewById(2114387931);
        this.ec = (TextView) this.f26439k.findViewById(2114387940);
        TextView textView = (TextView) this.f26439k.findViewById(2114387794);
        TTRatingBar tTRatingBar = (TTRatingBar) this.f26439k.findViewById(2114387891);
        TextView textView2 = (TextView) this.f26439k.findViewById(2114387633);
        this.ec.setTextSize(2, xh.l(this.hp, r5.getTextSize()) * fJx);
        textView.setTextSize(2, xh.l(this.hp, textView.getTextSize()) * fJx);
        textView2.setTextSize(2, xh.l(this.hp, textView2.getTextSize()) * fJx);
        TextView textView3 = (TextView) this.f26439k.findViewById(2114387658);
        this.f26440n.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ux.BannerExpressBackupView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.hp();
            }
        });
        xh.hp(textView3, this.f24763l, 27, 11);
        com.byazt.ws.l.hp(this.f24763l.nq()).to(imageView);
        this.ec.setText(getTitle());
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (xh.jx(this.hp, 45.0f) * fJx);
            layoutParams.height = (int) (xh.jx(this.hp, 45.0f) * fJx);
        }
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView2.setText(this.f24763l.ll());
        }
        int iW = this.f24763l.v() != null ? this.f24763l.v().w() : 4;
        textView.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(iW)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(iW);
        tTRatingBar.setStarImageWidth(xh.jx(this.hp, 15.0f) * fJx);
        tTRatingBar.setStarImageHeight(xh.jx(this.hp, 14.0f) * fJx);
        tTRatingBar.setStarImagePadding(xh.jx(this.hp, 4.0f));
        tTRatingBar.hp();
        hp((View) this, true);
        hp((View) textView2, true);
    }

    private void l() {
        this.vv = hp(this.f26442v.getExpectExpressWidth(), this.f26442v.getExpectExpressHeight());
        if (this.f26442v.getExpectExpressWidth() <= 0 || this.f26442v.getExpectExpressHeight() <= 0) {
            int iJ = xh.j(this.hp);
            this.f24760a = iJ;
            this.eb = Float.valueOf(iJ / this.vv.jx).intValue();
        } else {
            this.f24760a = xh.jx(this.hp, this.f26442v.getExpectExpressWidth());
            this.eb = xh.jx(this.hp, this.f26442v.getExpectExpressHeight());
        }
        int i2 = this.f24760a;
        if (i2 > 0 && i2 > xh.j(this.hp)) {
            this.f24760a = xh.j(this.hp);
            this.eb = Float.valueOf(this.eb * (xh.j(this.hp) / this.f24760a)).intValue();
        }
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
        vv vvVar = this.vv;
        int i3 = vvVar.hp;
        if (i3 == 1 || i3 != 3) {
            jx();
        } else {
            hp(vvVar);
        }
    }

    private void w() {
        int i2 = this.vv.hp;
        if (i2 == 2 || i2 == 3) {
            TextView textView = this.ec;
            if (textView != null) {
                textView.setTextColor(-1);
            }
            TextView textView2 = this.sz;
            if (textView2 != null) {
                textView2.setTextColor(-1);
            }
        } else {
            TextView textView3 = this.ec;
            if (textView3 != null) {
                textView3.setTextColor(-1);
            }
        }
        if (this.f26440n != null) {
            v.hp(getContext(), "tt_dislike_icon_night", this.f26440n, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
    }

    @Override // com.byazt.qk.BackupView, com.byazt.ek.hp
    public void b_(int i2) {
        super.b_(i2);
        jx(i2);
    }

    @Override // com.byazt.qk.BackupView
    public void hp(View view, int i2, b bVar) throws JSONException {
        if (this.f26442v != null) {
            if (i2 == 1 || i2 == 2) {
                View viewFindViewById = this.f26439k.findViewById(2114387854);
                if (i2 == 1) {
                    this.f26442v.getClickListener().l(viewFindViewById);
                } else {
                    this.f26442v.getClickCreativeListener().l(viewFindViewById);
                }
            }
            this.f26442v.hp(view, i2, bVar, -1);
        }
    }

    public void hp(mp mpVar, NativeExpressView nativeExpressView, com.byazt.gog.jx jxVar) {
        setBackgroundColor(-1);
        this.f24763l = mpVar;
        this.f26442v = nativeExpressView;
        this.f26441u = jxVar;
        this.f24766w = com.byazt.ih.l.AD_TAG_BANNER;
        nativeExpressView.addView(this, new ViewGroup.LayoutParams(-2, -2));
        int iZy = ky.zy(this.f24763l);
        this.f24765s = iZy;
        l(iZy);
        l();
        jx(s.u().zx());
    }

    private void hp(ImageView imageView) {
        com.byazt.ws.l.hp(this.f24763l.vi().get(0)).to(imageView);
        if (com.byazt.nwu.hp.j(this.f24763l)) {
            UpieImageView upieImageView = new UpieImageView(imageView.getContext(), com.byazt.nwu.hp.q(this.f24763l), com.byazt.fbd.hp.hp(this.f24763l), com.byazt.nwu.hp.e(this.f24763l));
            upieImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            com.byazt.nwu.hp.hp(imageView, upieImageView);
        }
    }

    private void hp(vv vvVar) {
        View viewHp;
        float fJx = (this.eb * 1.0f) / xh.jx(this.hp, 250.0f);
        View viewM = a.m(this.hp);
        this.f26439k = viewM;
        addView(viewM);
        FrameLayout frameLayout = (FrameLayout) this.f26439k.findViewById(2114387772);
        this.f26440n = (ImageView) this.f26439k.findViewById(2114387854);
        ImageView imageView = (ImageView) this.f26439k.findViewById(2114387936);
        ImageView imageView2 = (ImageView) this.f26439k.findViewById(2114387931);
        this.ec = (TextView) this.f26439k.findViewById(2114387940);
        this.sz = (TextView) this.f26439k.findViewById(2114387920);
        TextView textView = (TextView) this.f26439k.findViewById(2114387927);
        TextView textView2 = (TextView) this.f26439k.findViewById(2114387633);
        xh.hp((TextView) this.f26439k.findViewById(2114387658), this.f24763l);
        LinearLayout linearLayout = (LinearLayout) this.f26439k.findViewById(2114387871);
        ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (xh.jx(this.hp, 45.0f) * fJx);
            layoutParams.height = (int) (xh.jx(this.hp, 45.0f) * fJx);
        }
        this.ec.setTextSize(2, xh.l(this.hp, r8.getTextSize()) * fJx);
        this.sz.setTextSize(2, xh.l(this.hp, r8.getTextSize()) * fJx);
        textView.setTextSize(2, xh.l(this.hp, textView.getTextSize()) * fJx);
        textView2.setTextSize(2, xh.l(this.hp, textView2.getTextSize()) * fJx);
        try {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            float f2 = fJx - 1.0f;
            if (f2 > 0.0f) {
                layoutParams2.topMargin = xh.jx(this.hp, f2 * 8.0f);
            }
            ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).setMargins(0, (int) (xh.jx(this.hp, 16.0f) * fJx), 0, 0);
        } catch (Throwable unused) {
        }
        this.f26440n.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ux.BannerExpressBackupView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.hp();
            }
        });
        int iJx = xh.jx(this.hp, 15.0f);
        xh.hp(this.f26440n, iJx, iJx, iJx, iJx);
        if (df.v(this.f24763l) != null && (viewHp = hp(this.f26442v)) != null) {
            int i2 = (this.f24760a * 406) / 600;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, (i2 * 9) / 16);
            int i3 = vvVar.f24894l;
            if (i3 == 1) {
                int i4 = (this.f24760a * 406) / 600;
                layoutParams3 = new FrameLayout.LayoutParams(i4, (i4 * 9) / 16);
            } else if (i3 == 2) {
                layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
            } else if (i3 == 3) {
                int i5 = (this.eb * MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) / MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME;
                layoutParams3 = new FrameLayout.LayoutParams((i5 * 16) / 9, i5);
            } else if (i3 == 4) {
                int i6 = (this.f24760a * 480) / 690;
                layoutParams3 = new FrameLayout.LayoutParams(i6, (i6 * 9) / 16);
            }
            layoutParams3.gravity = 17;
            frameLayout.addView(viewHp, 0, layoutParams3);
            xh.hp((View) imageView, 8);
        } else {
            hp(imageView);
            xh.hp((View) imageView, 0);
        }
        com.byazt.ws.l.hp(this.f24763l.nq()).to(imageView2);
        textView.setText(getNameOrSource());
        this.ec.setText(String.format(Locale.getDefault(), "%s提供的广告", getNameOrSource()));
        this.sz.setText(getDescription());
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView2.setText(this.f24763l.ll());
        }
        hp((View) this, true);
        hp((View) textView2, true);
        hp(frameLayout);
    }

    private void jx(int i2) {
        if (i2 == 1) {
            w();
            this.f26439k.setBackgroundColor(0);
        } else {
            j();
            this.f26439k.setBackgroundColor(-1);
        }
    }

    private vv hp(int i2, int i3) {
        try {
            return ((double) i3) >= Math.floor((((double) i2) * 300.0d) / 600.0d) ? zy[1] : zy[0];
        } catch (Throwable unused) {
            return zy[0];
        }
    }
}
