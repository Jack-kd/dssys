package com.byazt.qk;

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
import com.byazt.nk.RoundImageView;
import com.byazt.nk.TTRatingBar;
import com.byazt.oh.NativeDrawVideoTsView;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 64, 302})
/* loaded from: classes3.dex */
public class zy extends BackupView {
    public static vv[] zy = {new vv(2, 3.0241935f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 124), new vv(3, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300), new vv(4, 1.4044944f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME), new vv(16, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300), new vv(5, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300), new vv(15, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 300)};
    public TextView ec;

    /* renamed from: k, reason: collision with root package name */
    public int f24907k;
    public ImageView sz;

    /* renamed from: u, reason: collision with root package name */
    public NativeExpressView f24908u;

    /* renamed from: v, reason: collision with root package name */
    public View f24909v;
    public TextView vv;
    public com.byazt.gog.jx xs;

    public zy(Context context) {
        super(context);
        this.hp = context;
    }

    private void a() {
        View viewNd = com.byazt.vi.a.nd(this.hp);
        this.f24909v = viewNd;
        addView(viewNd);
        this.f24909v.findViewById(2114387734).setVisibility(8);
        this.f24909v.findViewById(2114387955).setVisibility(0);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387936);
        this.sz = (ImageView) this.f24909v.findViewById(2114387854);
        this.ec = (TextView) this.f24909v.findViewById(2114387920);
        this.vv = (TextView) this.f24909v.findViewById(2114387940);
        TextView textView = (TextView) this.f24909v.findViewById(2114387633);
        xh.hp((TextView) this.f24909v.findViewById(2114387658), this.f24763l);
        imageView.setAdjustViewBounds(true);
        imageView.setMaxHeight(this.eb);
        hp(imageView);
        this.sz.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                zy.this.hp();
            }
        });
        this.ec.setText(getDescription());
        this.vv.setText(getTitle());
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView.setText(this.f24763l.ll());
        }
        hp(this, false);
        hp(textView, true);
    }

    private void e() {
        View viewVq = com.byazt.vi.a.vq(this.hp);
        this.f24909v = viewVq;
        addView(viewVq);
        this.f24909v.findViewById(2114387734).setVisibility(8);
        this.f24909v.findViewById(2114387955).setVisibility(0);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387936);
        this.sz = (ImageView) this.f24909v.findViewById(2114387854);
        this.ec = (TextView) this.f24909v.findViewById(2114387920);
        this.vv = (TextView) this.f24909v.findViewById(2114387940);
        TextView textView = (TextView) this.f24909v.findViewById(2114387633);
        xh.hp((TextView) this.f24909v.findViewById(2114387658), this.f24763l);
        hp(imageView);
        this.sz.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                zy.this.hp();
            }
        });
        this.ec.setText(getDescription());
        this.vv.setText(getTitle());
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView.setText(this.f24763l.ll());
        }
        hp(this, false);
        hp(textView, true);
    }

    private void eb() {
        View viewVq = com.byazt.vi.a.vq(this.hp);
        this.f24909v = viewVq;
        addView(viewVq);
        this.f24909v.findViewById(2114387734).setVisibility(0);
        this.f24909v.findViewById(2114387955).setVisibility(8);
        FrameLayout frameLayout = (FrameLayout) this.f24909v.findViewById(2114387965);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387913);
        this.sz = (ImageView) this.f24909v.findViewById(2114387854);
        this.ec = (TextView) this.f24909v.findViewById(2114387920);
        this.vv = (TextView) this.f24909v.findViewById(2114387940);
        TextView textView = (TextView) this.f24909v.findViewById(2114387855);
        TextView textView2 = (TextView) this.f24909v.findViewById(2114387856);
        TextView textView3 = (TextView) this.f24909v.findViewById(2114387633);
        TextView textView4 = (TextView) this.f24909v.findViewById(2114387908);
        TTRatingBar tTRatingBar = (TTRatingBar) this.f24909v.findViewById(2114387874);
        xh.hp((TextView) this.f24909v.findViewById(2114387617), this.f24763l);
        com.byazt.ws.l.hp(this.f24763l.nq()).to(imageView);
        this.sz.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                zy.this.hp();
            }
        });
        int iW = this.f24763l.v() != null ? this.f24763l.v().w() : 4;
        textView4.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(iW)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(iW);
        tTRatingBar.setStarImageWidth(xh.jx(this.hp, 15.0f));
        tTRatingBar.setStarImageHeight(xh.jx(this.hp, 14.0f));
        tTRatingBar.setStarImagePadding(xh.jx(this.hp, 4.0f));
        tTRatingBar.hp();
        textView.setText(getNameOrSource());
        textView2.setText(getTitle());
        this.ec.setText(getDescription());
        this.vv.setText(getTitle());
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView3.setText(this.f24763l.ll());
        }
        View viewHp = hp(this.f24908u);
        if (viewHp != null) {
            int i2 = (this.f24760a * 123) / MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS;
            frameLayout.removeAllViews();
            frameLayout.addView(viewHp, new ViewGroup.LayoutParams(i2, (i2 * 16) / 9));
        }
        hp(this, false);
        hp(textView3, true);
    }

    private void gu() {
        String strValueOf;
        String strValueOf2;
        if (this.f24763l == null) {
            return;
        }
        View viewRz = com.byazt.vi.a.rz(this.hp);
        this.f24909v = viewRz;
        addView(viewRz);
        FrameLayout frameLayout = (FrameLayout) this.f24909v.findViewById(2114387765);
        TextView textView = (TextView) this.f24909v.findViewById(2114387899);
        View view = (RelativeLayout) this.f24909v.findViewById(2114387650);
        RoundImageView roundImageView = (RoundImageView) this.f24909v.findViewById(2114387818);
        RelativeLayout relativeLayout = (RelativeLayout) this.f24909v.findViewById(2114387777);
        TextView textView2 = (TextView) this.f24909v.findViewById(2114387768);
        TextView textView3 = (TextView) this.f24909v.findViewById(2114387619);
        TextView textView4 = (TextView) this.f24909v.findViewById(2114387895);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387881);
        if (com.byazt.we.hp.hp(this.f24763l)) {
            String strQ = ms.q(this.f24763l);
            if (TextUtils.isEmpty(strQ) || roundImageView == null) {
                xh.hp((View) relativeLayout, 8);
            } else {
                xh.hp((View) relativeLayout, 0);
                com.byazt.ws.l.hp(strQ).to(roundImageView);
            }
            if (textView != null) {
                textView.setText(ms.jx(this.f24763l));
            }
            if (textView2 != null) {
                int iJ = ms.j(this.f24763l);
                if (iJ < 0) {
                    textView2.setVisibility(4);
                    xh.hp((View) imageView, 4);
                } else {
                    if (iJ > 10000) {
                        strValueOf2 = (iJ / 10000.0f) + "w";
                    } else {
                        strValueOf2 = String.valueOf(iJ);
                    }
                    textView2.setText(String.format("粉丝 %1$s", strValueOf2));
                }
            }
            if (textView3 != null) {
                int iW = ms.w(this.f24763l);
                if (iW < 0) {
                    xh.hp((View) imageView, 4);
                    textView3.setVisibility(4);
                } else {
                    if (iW > 10000) {
                        strValueOf = (iW / 10000.0f) + "w";
                    } else {
                        strValueOf = String.valueOf(iW);
                    }
                    textView3.setText(String.format("观看 %1$s", strValueOf));
                }
            }
            if (textView4 != null) {
                textView4.setText(ms.a(this.f24763l));
            }
            View viewHp = hp(this.f24908u);
            if (viewHp != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(viewHp, new ViewGroup.LayoutParams(-1, -1));
            }
            com.byazt.go.hp hpVarZy = zy();
            hp(roundImageView, hpVarZy, "click_live_avata");
            hp(textView, hpVarZy, "click_live_author_nickname");
            hp(textView2, hpVarZy, "click_live_author_follower_count");
            hp(textView3, hpVarZy, "click_live_author_following_count");
            hp(textView4, hpVarZy, "click_live_author_description");
            hp(frameLayout, hpVarZy, "click_live_feed");
            hp(view, hpVarZy, "click_live_button");
        }
    }

    private vv j(int i2) {
        vv[] vvVarArr = zy;
        vv vvVar = vvVarArr[0];
        try {
            for (vv vvVar2 : vvVarArr) {
                if (vvVar2.hp == i2) {
                    return vvVar2;
                }
            }
        } catch (Throwable unused) {
        }
        return vvVar;
    }

    private void jl() {
        String strValueOf;
        String strValueOf2;
        if (this.f24763l == null) {
            return;
        }
        View viewHd = com.byazt.vi.a.hd(this.hp);
        this.f24909v = viewHd;
        addView(viewHd);
        FrameLayout frameLayout = (FrameLayout) this.f24909v.findViewById(2114387621);
        TextView textView = (TextView) this.f24909v.findViewById(2114387827);
        TextView textView2 = (TextView) this.f24909v.findViewById(2114387937);
        View view = (TextView) this.f24909v.findViewById(2114387861);
        RoundImageView roundImageView = (RoundImageView) this.f24909v.findViewById(2114387902);
        RelativeLayout relativeLayout = (RelativeLayout) this.f24909v.findViewById(2114387851);
        TextView textView3 = (TextView) this.f24909v.findViewById(2114387622);
        TextView textView4 = (TextView) this.f24909v.findViewById(2114387672);
        TextView textView5 = (TextView) this.f24909v.findViewById(2114387703);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387881);
        if (com.byazt.we.hp.hp(this.f24763l)) {
            String strQ = ms.q(this.f24763l);
            if (TextUtils.isEmpty(strQ) || roundImageView == null) {
                xh.hp((View) relativeLayout, 8);
            } else {
                xh.hp((View) relativeLayout, 0);
                com.byazt.ws.l.hp(strQ).to(roundImageView);
            }
            if (textView2 != null) {
                textView2.setText(ms.jx(this.f24763l));
            }
            if (textView3 != null) {
                int iJ = ms.j(this.f24763l);
                if (iJ < 0) {
                    textView3.setVisibility(4);
                    xh.hp((View) imageView, 4);
                } else {
                    if (iJ > 10000) {
                        strValueOf2 = (iJ / 10000.0f) + "w";
                    } else {
                        strValueOf2 = String.valueOf(iJ);
                    }
                    textView3.setText(String.format("粉丝 %1$s", strValueOf2));
                }
            }
            if (textView4 != null) {
                int iW = ms.w(this.f24763l);
                if (iW < 0) {
                    textView4.setVisibility(4);
                    xh.hp((View) imageView, 4);
                } else {
                    if (iW > 10000) {
                        strValueOf = (iW / 10000.0f) + "w";
                    } else {
                        strValueOf = String.valueOf(iW);
                    }
                    textView4.setText(String.format("观看 %1$s", strValueOf));
                }
            }
            if (textView != null) {
                textView.setText(ms.a(this.f24763l));
            }
            View viewHp = hp(this.f24908u);
            if (viewHp != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(viewHp, new ViewGroup.LayoutParams(-1, -1));
            }
            com.byazt.go.hp hpVarZy = zy();
            hp(roundImageView, hpVarZy, "click_live_avata");
            hp(textView2, hpVarZy, "click_live_author_nickname");
            hp(textView3, hpVarZy, "click_live_author_follower_count");
            hp(textView4, hpVarZy, "click_live_author_following_count");
            hp(textView, hpVarZy, "click_live_author_description");
            hp(frameLayout, hpVarZy, "click_live_feed");
            hp(view, hpVarZy, "click_live_button");
            textView5.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    zy.this.hp();
                }
            });
        }
    }

    private void jx(int i2) {
        vv vvVarJ = j(this.f24763l.hy());
        this.f24760a = xh.jx(this.hp, this.f24908u.getExpectExpressWidth());
        this.eb = xh.jx(this.hp, this.f24908u.getExpectExpressHeight());
        if (this.f24760a <= 0) {
            this.f24760a = xh.j(this.hp);
        }
        if (this.eb <= 0) {
            this.eb = Float.valueOf(this.f24760a / vvVarJ.jx).intValue();
        }
        int i3 = this.f24760a;
        if (i3 > 0 && i3 > xh.j(this.hp)) {
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
        if (i2 == 9) {
            this.f24766w = "draw_ad";
            if (com.byazt.we.hp.hp(this.f24763l)) {
                gu();
                return;
            } else {
                s();
                return;
            }
        }
        this.f24766w = com.byazt.ih.l.AD_TAG_FEED;
        int iHy = this.f24763l.hy();
        if (iHy == 2) {
            j();
            return;
        }
        if (iHy == 3) {
            a();
            return;
        }
        if (iHy == 4) {
            w();
            return;
        }
        if (iHy == 5) {
            q();
            return;
        }
        if (iHy == 15) {
            eb();
            return;
        }
        if (iHy == 16) {
            e();
            return;
        }
        if (iHy == 131) {
            e();
        } else if (iHy != 166) {
            e();
        } else {
            jl();
        }
    }

    private void q() {
        View viewNd = com.byazt.vi.a.nd(this.hp);
        this.f24909v = viewNd;
        addView(viewNd);
        FrameLayout frameLayout = (FrameLayout) this.f24909v.findViewById(2114387734);
        frameLayout.setVisibility(0);
        this.f24909v.findViewById(2114387955).setVisibility(8);
        this.sz = (ImageView) this.f24909v.findViewById(2114387854);
        this.ec = (TextView) this.f24909v.findViewById(2114387920);
        this.vv = (TextView) this.f24909v.findViewById(2114387940);
        TextView textView = (TextView) this.f24909v.findViewById(2114387633);
        xh.hp((TextView) this.f24909v.findViewById(2114387658), this.f24763l);
        this.sz.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                zy.this.hp();
            }
        });
        this.ec.setText(getDescription());
        this.vv.setText(getTitle());
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView.setText(this.f24763l.ll());
        }
        View viewHp = hp(this.f24908u);
        if (viewHp != null) {
            frameLayout.removeAllViews();
            int i2 = this.f24760a;
            frameLayout.addView(viewHp, new ViewGroup.LayoutParams(i2, (i2 * 9) / 16));
        }
        hp(this, false);
        hp(textView, true);
    }

    private void s() {
        View viewYr = com.byazt.vi.a.yr(this.hp);
        this.f24909v = viewYr;
        addView(viewYr);
        FrameLayout frameLayout = (FrameLayout) this.f24909v.findViewById(2114387734);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387936);
        TextView textView = (TextView) this.f24909v.findViewById(2114387920);
        TextView textView2 = (TextView) this.f24909v.findViewById(2114387940);
        TextView textView3 = (TextView) this.f24909v.findViewById(2114387633);
        TextView textView4 = (TextView) this.f24909v.findViewById(2114387658);
        textView.setText(getDescription());
        textView2.setText(getTitle());
        xh.hp(textView4, this.f24763l);
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView3.setText(this.f24763l.ll());
        }
        if (mp.jx(this.f24763l)) {
            imageView.setVisibility(8);
        } else {
            hp(imageView);
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        }
        View viewHp = hp(this.f24908u);
        NativeExpressView nativeExpressView = this.f24908u;
        if ((nativeExpressView instanceof NativeExpressVideoView) && (viewHp instanceof NativeVideoTsView)) {
            NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) nativeExpressView;
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) viewHp;
            nativeVideoTsView.setVideoAdLoadListener(nativeExpressVideoView);
            nativeVideoTsView.setVideoAdInteractionListener(nativeExpressVideoView);
        }
        if (viewHp != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(viewHp, new ViewGroup.LayoutParams(-1, -1));
        } else {
            this.f24909v.setBackgroundColor(-16777216);
        }
        hp(textView2, false);
        hp(textView, false);
        hp(textView3, true);
    }

    private void w() {
        View viewZx = com.byazt.vi.a.zx(this.hp);
        this.f24909v = viewZx;
        addView(viewZx);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387695);
        ImageView imageView2 = (ImageView) this.f24909v.findViewById(2114387692);
        ImageView imageView3 = (ImageView) this.f24909v.findViewById(2114387690);
        ImageView imageView4 = (ImageView) this.f24909v.findViewById(2114387931);
        this.sz = (ImageView) this.f24909v.findViewById(2114387854);
        this.ec = (TextView) this.f24909v.findViewById(2114387920);
        this.vv = (TextView) this.f24909v.findViewById(2114387940);
        TextView textView = (TextView) this.f24909v.findViewById(2114387633);
        xh.hp((TextView) this.f24909v.findViewById(2114387658), this.f24763l);
        com.byazt.ws.l.hp(this.f24763l.vi().get(0)).to(imageView);
        com.byazt.ws.l.hp(this.f24763l.vi().get(1)).to(imageView2);
        com.byazt.ws.l.hp(this.f24763l.vi().get(2)).to(imageView3);
        com.byazt.ws.l.hp(this.f24763l.nq()).to(imageView4);
        this.sz.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                zy.this.hp();
            }
        });
        this.ec.setText(getDescription());
        this.vv.setText(getTitle());
        if (!TextUtils.isEmpty(this.f24763l.ll())) {
            textView.setText(this.f24763l.ll());
        }
        hp(this, false);
        hp(textView, true);
    }

    private com.byazt.go.hp zy() {
        Context context = this.hp;
        mp mpVar = this.f24763l;
        String str = this.f24766w;
        final com.byazt.go.hp hpVar = new com.byazt.go.hp(context, mpVar, str, ky.j(str)) { // from class: com.byazt.qk.zy.8
            @Override // com.byazt.go.l, com.byazt.go.j
            public void hp(View view, com.byazt.xci.e eVar) {
                if (view == null) {
                    super.hp(view, eVar);
                    return;
                }
                HashMap map = new HashMap();
                map.put("click_live_element", view.getTag());
                ((com.byazt.ey.hp) hp(com.byazt.ey.hp.class)).hp(map);
                super.hp(view, eVar);
            }
        };
        jx jxVar = new jx() { // from class: com.byazt.qk.zy.9
            @Override // com.byazt.qk.jx
            public void hp(View view, int i2, com.byazt.xci.b bVar) throws JSONException {
                try {
                    bVar.hp().put("click_extra_map", ((com.byazt.ey.hp) hpVar.hp(com.byazt.ey.hp.class)).w());
                } catch (JSONException unused) {
                }
                zy.this.hp(view, i2, bVar);
            }
        };
        com.byazt.kfd.hp hpVar2 = (com.byazt.kfd.hp) hpVar.hp(com.byazt.kfd.hp.class);
        if (hpVar2 != null) {
            hpVar2.hp(jxVar);
            hpVar2.hp(2);
        }
        return hpVar;
    }

    @Override // com.byazt.qk.BackupView, com.byazt.ek.hp
    public void b_(int i2) {
        super.b_(i2);
        w(i2);
    }

    public void hp(mp mpVar, NativeExpressView nativeExpressView, com.byazt.gog.jx jxVar) {
        setBackgroundColor(-1);
        this.f24763l = mpVar;
        this.f24908u = nativeExpressView;
        this.xs = jxVar;
        int iZy = ky.zy(mpVar);
        this.f24907k = iZy;
        l(iZy);
        int iJl = ky.jl(this.f24763l);
        jx(iJl);
        w(com.byazt.jz.s.u().zx());
        int i2 = iJl != 9 ? -2 : -1;
        this.f24908u.addView(this, new ViewGroup.LayoutParams(i2, i2));
    }

    public void l() {
        if (this.vv == null || this.ec == null) {
            return;
        }
        int iHy = this.f24763l.hy();
        if (iHy == 2) {
            this.vv.setTextColor(Color.parseColor("#FFBCBCBC"));
            this.ec.setTextColor(Color.parseColor("#FF999999"));
            return;
        }
        if (iHy != 3) {
            if (iHy == 4) {
                this.vv.setTextColor(Color.parseColor("#FF3E3E3E"));
                this.ec.setTextColor(Color.parseColor("#FF3E3E3E"));
                return;
            } else if (iHy != 5 && iHy != 15 && iHy != 16) {
                return;
            }
        }
        this.vv.setTextColor(Color.parseColor("#FF222222"));
        this.ec.setTextColor(Color.parseColor("#FF505050"));
    }

    private void j() {
        View viewKg = com.byazt.vi.a.kg(this.hp);
        this.f24909v = viewKg;
        addView(viewKg);
        ImageView imageView = (ImageView) this.f24909v.findViewById(2114387936);
        this.sz = (ImageView) this.f24909v.findViewById(2114387854);
        this.ec = (TextView) this.f24909v.findViewById(2114387920);
        this.vv = (TextView) this.f24909v.findViewById(2114387940);
        hp((LinearLayout) this.f24909v.findViewById(2114387660), (TextView) this.f24909v.findViewById(2114387658), this.f24763l);
        hp(imageView);
        this.ec.setText(getDescription());
        this.vv.setText(getTitle());
        this.sz.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.qk.zy.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                zy.this.hp();
            }
        });
        hp(this, true);
    }

    private void hp(ImageView imageView) {
        com.byazt.ws.l.hp(this.f24763l.vi().get(0)).to(imageView);
        if (com.byazt.nwu.hp.j(this.f24763l)) {
            UpieImageView upieImageView = new UpieImageView(imageView.getContext(), com.byazt.nwu.hp.q(this.f24763l), com.byazt.fbd.hp.hp(this.f24763l), com.byazt.nwu.hp.e(this.f24763l));
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            com.byazt.nwu.hp.hp(imageView, upieImageView);
        }
    }

    private void hp(View view, TextView textView, mp mpVar) {
        if (view == null || textView == null) {
            return;
        }
        if (mpVar == null) {
            view.setVisibility(0);
            return;
        }
        if (TextUtils.isEmpty(mpVar.nn())) {
            view.setVisibility(0);
            textView.setVisibility(8);
            xh.hp(view, mpVar);
        } else {
            view.setVisibility(8);
            textView.setVisibility(0);
            xh.hp(textView, mpVar);
        }
    }

    private void w(int i2) {
        if (i2 == 1) {
            jx();
            this.f24909v.setBackgroundColor(0);
            if (this.sz != null) {
                com.byazt.ymw.v.hp(getContext(), "tt_dislike_icon_night", this.sz, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                return;
            }
            return;
        }
        l();
        this.f24909v.setBackgroundColor(-1);
        if (this.sz != null) {
            com.byazt.ymw.v.hp(getContext(), "tt_dislike_icon2", this.sz, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        }
    }

    private void hp(View view, com.byazt.go.l lVar, String str) {
        if (view == null || lVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        view.setTag(str);
        view.setOnClickListener(lVar);
    }

    @Override // com.byazt.qk.BackupView
    public void hp(View view, int i2, com.byazt.xci.b bVar) throws JSONException {
        NativeExpressView nativeExpressView = this.f24908u;
        if (nativeExpressView != null) {
            if (i2 == 1 && nativeExpressView.getClickListener() != null) {
                this.f24908u.getClickListener().l(this.sz);
            }
            if (i2 == 2 && this.f24908u.getClickCreativeListener() != null) {
                this.f24908u.getClickCreativeListener().l(this.sz);
            }
            this.f24908u.hp(view, i2, bVar, -1);
        }
    }

    public void jx() {
        TextView textView = this.vv;
        if (textView == null || this.ec == null) {
            return;
        }
        textView.setTextColor(-1);
        this.ec.setTextColor(-1);
    }

    @Override // com.byazt.qk.BackupView
    public NativeVideoTsView hp(Context context, mp mpVar, String str, boolean z2, boolean z3) {
        if ("draw_ad".equals(str)) {
            return new NativeDrawVideoTsView(context, mpVar, str, z2, z3);
        }
        return new NativeVideoTsView(context, mpVar, str, z2, z3);
    }
}
