package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.anythink.core.common.f.g;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.download.BeiZiWebView;
import com.beizi.ad.internal.view.CustomRoundImageView;
import com.beizi.fusion.R;
import com.beizi.fusion.ap;
import com.beizi.fusion.b5;
import com.beizi.fusion.dj;
import com.beizi.fusion.eq;
import com.beizi.fusion.g5;
import com.beizi.fusion.h5;
import com.beizi.fusion.k5;
import com.beizi.fusion.ll;
import com.beizi.fusion.lm;
import com.beizi.fusion.m8;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.nh;
import com.beizi.fusion.nj;
import com.beizi.fusion.nl;
import com.beizi.fusion.nn;
import com.beizi.fusion.oj;
import com.beizi.fusion.q1;
import com.beizi.fusion.q6;
import com.beizi.fusion.qg;
import com.beizi.fusion.rf;
import com.beizi.fusion.rl;
import com.beizi.fusion.rn;
import com.beizi.fusion.s7;
import com.beizi.fusion.tf;
import com.beizi.fusion.un;
import com.beizi.fusion.vn;
import com.beizi.fusion.w5;
import com.beizi.fusion.widget.BZCarouselView;
import com.beizi.fusion.wl;
import com.beizi.fusion.wo;
import com.beizi.fusion.x3;
import com.beizi.fusion.y1;
import com.beizi.fusion.yp;
import com.beizi.fusion.zk;
import com.beizi.fusion.zn;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class BeiZiNewRewardVideoActivity extends Activity {

    /* renamed from: A, reason: collision with root package name */
    private TextView f12320A;

    /* renamed from: A0, reason: collision with root package name */
    private boolean f12321A0;

    /* renamed from: B, reason: collision with root package name */
    private FrameLayout f12322B;

    /* renamed from: B0, reason: collision with root package name */
    private boolean f12323B0;

    /* renamed from: C, reason: collision with root package name */
    private CustomRoundImageView f12324C;

    /* renamed from: C0, reason: collision with root package name */
    private boolean f12325C0;

    /* renamed from: D, reason: collision with root package name */
    private CustomRoundImageView f12326D;

    /* renamed from: D0, reason: collision with root package name */
    private boolean f12327D0;

    /* renamed from: E, reason: collision with root package name */
    private VideoView f12328E;

    /* renamed from: F, reason: collision with root package name */
    private ProgressBar f12330F;

    /* renamed from: H, reason: collision with root package name */
    private boolean f12334H;

    /* renamed from: H0, reason: collision with root package name */
    private int f12335H0;

    /* renamed from: I0, reason: collision with root package name */
    private int f12337I0;

    /* renamed from: J0, reason: collision with root package name */
    private int f12339J0;

    /* renamed from: K, reason: collision with root package name */
    private int f12340K;

    /* renamed from: L, reason: collision with root package name */
    private int f12342L;

    /* renamed from: L0, reason: collision with root package name */
    private boolean f12343L0;

    /* renamed from: M, reason: collision with root package name */
    private boolean f12344M;

    /* renamed from: M0, reason: collision with root package name */
    private List f12345M0;

    /* renamed from: N, reason: collision with root package name */
    private MediaPlayer f12346N;

    /* renamed from: N0, reason: collision with root package name */
    private List f12347N0;

    /* renamed from: P, reason: collision with root package name */
    private int f12350P;

    /* renamed from: P0, reason: collision with root package name */
    private BZCarouselView f12351P0;

    /* renamed from: Q, reason: collision with root package name */
    private boolean f12352Q;

    /* renamed from: Q0, reason: collision with root package name */
    private k5 f12353Q0;

    /* renamed from: R, reason: collision with root package name */
    private int f12354R;

    /* renamed from: R0, reason: collision with root package name */
    private k5 f12355R0;

    /* renamed from: S0, reason: collision with root package name */
    private int f12357S0;

    /* renamed from: T, reason: collision with root package name */
    private String f12358T;

    /* renamed from: T0, reason: collision with root package name */
    private int f12359T0;

    /* renamed from: U, reason: collision with root package name */
    private String f12360U;

    /* renamed from: U0, reason: collision with root package name */
    private ap f12361U0;

    /* renamed from: V, reason: collision with root package name */
    private String f12362V;

    /* renamed from: V0, reason: collision with root package name */
    private ap f12363V0;

    /* renamed from: W, reason: collision with root package name */
    private String f12364W;

    /* renamed from: W0, reason: collision with root package name */
    private ap f12365W0;

    /* renamed from: X, reason: collision with root package name */
    private String f12366X;

    /* renamed from: X0, reason: collision with root package name */
    private ap f12367X0;

    /* renamed from: Y, reason: collision with root package name */
    private AdSpacesBean.BuyerBean f12368Y;

    /* renamed from: Y0, reason: collision with root package name */
    private LinearLayout f12369Y0;

    /* renamed from: Z, reason: collision with root package name */
    private wl f12370Z;

    /* renamed from: Z0, reason: collision with root package name */
    private RelativeLayout f12371Z0;

    /* renamed from: a, reason: collision with root package name */
    private dj f12372a;

    /* renamed from: a0, reason: collision with root package name */
    private vn f12373a0;

    /* renamed from: a1, reason: collision with root package name */
    private TextView f12374a1;

    /* renamed from: b, reason: collision with root package name */
    private rn f12375b;

    /* renamed from: b0, reason: collision with root package name */
    private nn f12376b0;

    /* renamed from: b1, reason: collision with root package name */
    private TextView f12377b1;

    /* renamed from: c, reason: collision with root package name */
    private RelativeLayout f12378c;

    /* renamed from: c0, reason: collision with root package name */
    private s7 f12379c0;

    /* renamed from: c1, reason: collision with root package name */
    private TextView f12380c1;

    /* renamed from: d, reason: collision with root package name */
    private RelativeLayout f12381d;

    /* renamed from: d0, reason: collision with root package name */
    private m8 f12382d0;

    /* renamed from: d1, reason: collision with root package name */
    private TextView f12383d1;

    /* renamed from: e, reason: collision with root package name */
    private LinearLayout f12384e;

    /* renamed from: e1, reason: collision with root package name */
    private q6 f12386e1;

    /* renamed from: f, reason: collision with root package name */
    private LinearLayout f12387f;

    /* renamed from: f0, reason: collision with root package name */
    private boolean f12388f0;

    /* renamed from: f1, reason: collision with root package name */
    private boolean f12389f1;

    /* renamed from: g, reason: collision with root package name */
    private LinearLayout f12390g;

    /* renamed from: g0, reason: collision with root package name */
    private String f12391g0;

    /* renamed from: g1, reason: collision with root package name */
    private boolean f12392g1;

    /* renamed from: h, reason: collision with root package name */
    private LinearLayout f12393h;

    /* renamed from: h0, reason: collision with root package name */
    private String f12394h0;

    /* renamed from: h1, reason: collision with root package name */
    private FrameLayout f12395h1;

    /* renamed from: i, reason: collision with root package name */
    private LinearLayout f12396i;

    /* renamed from: i0, reason: collision with root package name */
    private String f12397i0;

    /* renamed from: i1, reason: collision with root package name */
    private TextView f12398i1;

    /* renamed from: j, reason: collision with root package name */
    private LinearLayout f12399j;

    /* renamed from: j0, reason: collision with root package name */
    private long f12400j0;

    /* renamed from: j1, reason: collision with root package name */
    private ImageView f12401j1;

    /* renamed from: k, reason: collision with root package name */
    private View f12402k;

    /* renamed from: k1, reason: collision with root package name */
    private int f12404k1;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f12405l;

    /* renamed from: l0, reason: collision with root package name */
    private boolean f12406l0;

    /* renamed from: l1, reason: collision with root package name */
    private int f12407l1;

    /* renamed from: m, reason: collision with root package name */
    private ImageView f12408m;

    /* renamed from: m0, reason: collision with root package name */
    private boolean f12409m0;

    /* renamed from: m1, reason: collision with root package name */
    private int f12410m1;

    /* renamed from: n, reason: collision with root package name */
    private ImageView f12411n;

    /* renamed from: n0, reason: collision with root package name */
    private boolean f12412n0;

    /* renamed from: o, reason: collision with root package name */
    private TextView f12414o;

    /* renamed from: o0, reason: collision with root package name */
    private boolean f12415o0;

    /* renamed from: p, reason: collision with root package name */
    private TextView f12417p;

    /* renamed from: p0, reason: collision with root package name */
    private String f12418p0;

    /* renamed from: q, reason: collision with root package name */
    private TextView f12420q;

    /* renamed from: q0, reason: collision with root package name */
    private int f12421q0;

    /* renamed from: r, reason: collision with root package name */
    private TextView f12423r;

    /* renamed from: r0, reason: collision with root package name */
    private boolean f12424r0;

    /* renamed from: s, reason: collision with root package name */
    private TextView f12426s;

    /* renamed from: s0, reason: collision with root package name */
    private boolean f12427s0;

    /* renamed from: t, reason: collision with root package name */
    private TextView f12429t;

    /* renamed from: t0, reason: collision with root package name */
    private boolean f12430t0;

    /* renamed from: u, reason: collision with root package name */
    private TextView f12432u;

    /* renamed from: u0, reason: collision with root package name */
    private boolean f12433u0;

    /* renamed from: u1, reason: collision with root package name */
    private int f12434u1;

    /* renamed from: v, reason: collision with root package name */
    private TextView f12435v;

    /* renamed from: v0, reason: collision with root package name */
    private boolean f12436v0;

    /* renamed from: v1, reason: collision with root package name */
    private oj f12437v1;

    /* renamed from: w, reason: collision with root package name */
    private TextView f12438w;

    /* renamed from: w0, reason: collision with root package name */
    private lm f12439w0;

    /* renamed from: w1, reason: collision with root package name */
    private boolean f12440w1;

    /* renamed from: x, reason: collision with root package name */
    private TextView f12441x;

    /* renamed from: x0, reason: collision with root package name */
    private int f12442x0;

    /* renamed from: y, reason: collision with root package name */
    private TextView f12443y;

    /* renamed from: y0, reason: collision with root package name */
    private ll f12444y0;

    /* renamed from: z, reason: collision with root package name */
    private TextView f12445z;

    /* renamed from: z0, reason: collision with root package name */
    private int f12446z0;

    /* renamed from: G, reason: collision with root package name */
    private boolean f12332G = false;

    /* renamed from: I, reason: collision with root package name */
    private boolean f12336I = false;

    /* renamed from: J, reason: collision with root package name */
    private int f12338J = 30;

    /* renamed from: O, reason: collision with root package name */
    private boolean f12348O = false;

    /* renamed from: S, reason: collision with root package name */
    private boolean f12356S = true;

    /* renamed from: e0, reason: collision with root package name */
    private boolean f12385e0 = true;

    /* renamed from: k0, reason: collision with root package name */
    private boolean f12403k0 = false;

    /* renamed from: E0, reason: collision with root package name */
    private int f12329E0 = 0;

    /* renamed from: F0, reason: collision with root package name */
    private int f12331F0 = 0;

    /* renamed from: G0, reason: collision with root package name */
    private int f12333G0 = 1;

    /* renamed from: K0, reason: collision with root package name */
    private Handler f12341K0 = new k(Looper.getMainLooper());

    /* renamed from: O0, reason: collision with root package name */
    private int f12349O0 = 0;

    /* renamed from: n1, reason: collision with root package name */
    private int f12413n1 = 1;

    /* renamed from: o1, reason: collision with root package name */
    private int f12416o1 = 2;

    /* renamed from: p1, reason: collision with root package name */
    private int f12419p1 = 0;

    /* renamed from: q1, reason: collision with root package name */
    private int f12422q1 = 5;

    /* renamed from: r1, reason: collision with root package name */
    private int f12425r1 = 15;

    /* renamed from: s1, reason: collision with root package name */
    private int f12428s1 = 15;

    /* renamed from: t1, reason: collision with root package name */
    private int f12431t1 = 0;

    public class a implements MediaPlayer.OnErrorListener {
        public a() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
            try {
                nh.a("BeiZisAd", "setOnErrorListener: 播放失败");
                yp ypVarC = yp.c();
                BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                ypVarC.a(beiZiNewRewardVideoActivity, beiZiNewRewardVideoActivity.f12364W);
                if (BeiZiNewRewardVideoActivity.this.f12392g1) {
                    return true;
                }
                BeiZiNewRewardVideoActivity.this.k();
                BeiZiNewRewardVideoActivity.this.t();
                BeiZiNewRewardVideoActivity.this.l();
                BeiZiNewRewardVideoActivity.this.i();
                BeiZiNewRewardVideoActivity.this.X();
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public class b implements MediaPlayer.OnInfoListener {
        public b() {
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
            if (mediaPlayer == null || i2 != 701) {
                return false;
            }
            try {
                BeiZiNewRewardVideoActivity.this.b(mediaPlayer.getCurrentPosition());
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public class b0 implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ CustomRoundImageView f12450a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f12451b;

        public b0(CustomRoundImageView customRoundImageView, int i2) {
            this.f12450a = customRoundImageView;
            this.f12451b = i2;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                CustomRoundImageView customRoundImageView = this.f12450a;
                if (customRoundImageView != null) {
                    customRoundImageView.setImageBitmap(bitmap);
                    this.f12450a.setRectRadius(this.f12451b / 2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (BeiZiNewRewardVideoActivity.this.f12336I) {
                    BeiZiNewRewardVideoActivity.this.f12405l.setImageResource(R.drawable.beizi_voice_off);
                    if (BeiZiNewRewardVideoActivity.this.f12346N != null) {
                        BeiZiNewRewardVideoActivity.this.f12346N.setVolume(0.0f, 0.0f);
                    }
                } else {
                    BeiZiNewRewardVideoActivity.this.f12405l.setImageResource(R.drawable.beizi_voice_on);
                    if (BeiZiNewRewardVideoActivity.this.f12346N != null) {
                        BeiZiNewRewardVideoActivity.this.f12346N.setVolume(0.0f, 1.0f);
                    }
                }
                BeiZiNewRewardVideoActivity.this.f12336I = !r3.f12336I;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f12456a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f12457b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f12458c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f12459d;

        public d(String str, String str2, String str3, String str4) {
            this.f12456a = str;
            this.f12457b = str2;
            this.f12458c = str3;
            this.f12459d = str4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent(BeiZiNewRewardVideoActivity.this, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", this.f12456a);
                intent.putExtra("privacy_content_key", this.f12457b);
                intent.putExtra("permission_content_key", this.f12458c);
                intent.putExtra("intro_content_key", this.f12459d);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                BeiZiNewRewardVideoActivity.this.startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d0 implements BZCarouselView.e {
        public d0() {
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x00ea A[Catch: Exception -> 0x0075, TryCatch #0 {Exception -> 0x0075, blocks: (B:2:0x0000, B:4:0x0022, B:6:0x002e, B:8:0x003a, B:10:0x004e, B:13:0x0078, B:15:0x0080, B:17:0x008a, B:18:0x00b0, B:20:0x00b8, B:22:0x00c4, B:24:0x00ca, B:25:0x00ce, B:27:0x00d4, B:29:0x00e0, B:34:0x00ea, B:36:0x00fc, B:38:0x0102, B:40:0x0108, B:42:0x011b, B:43:0x013f), top: B:47:0x0000 }] */
        @Override // com.beizi.fusion.widget.BZCarouselView.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(int r6) {
            /*
                Method dump skipped, instructions count: 329
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.d0.a(int):void");
        }
    }

    public class e implements wl.c {
        public e() {
        }

        @Override // com.beizi.fusion.wl.c
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            nh.a("BeiZisAd", "handleRegionalClickViewContent click");
            BeiZiNewRewardVideoActivity.this.a(0, str, str2, str3, str4, str5, str6, str7, str8, 0);
        }
    }

    public class e0 implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f12463a;

        /* renamed from: b, reason: collision with root package name */
        float f12464b;

        /* renamed from: c, reason: collision with root package name */
        float f12465c;

        /* renamed from: d, reason: collision with root package name */
        float f12466d;

        public e0() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f12463a = motionEvent.getX();
                this.f12464b = motionEvent.getY();
                this.f12465c = motionEvent.getX();
                this.f12466d = motionEvent.getY();
            } else if (action == 1) {
                if (this.f12465c - this.f12463a < 0.0f) {
                    BeiZiNewRewardVideoActivity.this.d0();
                    BeiZiNewRewardVideoActivity.this.Z();
                }
                if (this.f12465c - this.f12463a > 0.0f && BeiZiNewRewardVideoActivity.this.f12349O0 > 0) {
                    BeiZiNewRewardVideoActivity.this.c0();
                    BeiZiNewRewardVideoActivity.this.Z();
                }
            } else if (action == 2) {
                this.f12465c = motionEvent.getX();
                this.f12466d = motionEvent.getY();
            }
            return true;
        }
    }

    public class f implements vn.f {
        public f() {
        }

        @Override // com.beizi.fusion.vn.f
        public void a() {
            nh.a("BeiZisAd", "handleShakeViewContent click");
            BeiZiNewRewardVideoActivity.this.a(0, "", "", "", "", "", "", "", "", 2);
        }
    }

    public class f0 implements MediaPlayer.OnCompletionListener {
        public f0() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            nh.a("BeiZisAd", "onCompletion: 播放完成");
            try {
                BeiZiNewRewardVideoActivity.this.f12424r0 = true;
                if (BeiZiNewRewardVideoActivity.this.f12330F != null) {
                    BeiZiNewRewardVideoActivity.this.f12330F.setVisibility(8);
                }
                BeiZiNewRewardVideoActivity.this.f12350P = 0;
                if (mediaPlayer != null) {
                    BeiZiNewRewardVideoActivity.this.e(mediaPlayer.getDuration());
                }
                BeiZiNewRewardVideoActivity.this.K();
                if (BeiZiNewRewardVideoActivity.this.f12392g1) {
                    return;
                }
                BeiZiNewRewardVideoActivity.this.j();
                BeiZiNewRewardVideoActivity.this.i();
                BeiZiNewRewardVideoActivity.this.X();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements s7.e {
        public g() {
        }

        @Override // com.beizi.fusion.s7.e
        public void a() {
            nh.a("BeiZisAd", "handleEulerAngleViewContent click");
            BeiZiNewRewardVideoActivity.this.a(0, "", "", "", "", "", "", "", "", 2);
        }
    }

    public class g0 implements MediaPlayer.OnPreparedListener {
        public g0() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                BeiZiNewRewardVideoActivity.this.f12346N = mediaPlayer;
                if (BeiZiNewRewardVideoActivity.this.f12336I) {
                    BeiZiNewRewardVideoActivity.this.f12346N.setVolume(0.0f, 1.0f);
                } else {
                    BeiZiNewRewardVideoActivity.this.f12346N.setVolume(0.0f, 0.0f);
                }
                BeiZiNewRewardVideoActivity.this.a0();
                if (BeiZiNewRewardVideoActivity.this.f12385e0) {
                    int duration = mediaPlayer.getDuration() / 1000;
                    if (BeiZiNewRewardVideoActivity.this.f12338J > duration) {
                        BeiZiNewRewardVideoActivity.this.f12338J = duration;
                    }
                    BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                    beiZiNewRewardVideoActivity.f12340K = beiZiNewRewardVideoActivity.f12338J;
                    if (BeiZiNewRewardVideoActivity.this.f12330F != null) {
                        BeiZiNewRewardVideoActivity.this.f12330F.setMax(duration);
                    }
                    BeiZiNewRewardVideoActivity.this.a();
                    BeiZiNewRewardVideoActivity.this.t();
                    BeiZiNewRewardVideoActivity.this.l();
                    if (BeiZiNewRewardVideoActivity.this.f12341K0 != null) {
                        BeiZiNewRewardVideoActivity.this.f12341K0.sendEmptyMessageDelayed(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, 1000L);
                    }
                    BeiZiNewRewardVideoActivity.this.L();
                }
                BeiZiNewRewardVideoActivity.this.f12385e0 = false;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h implements m8.b {
        public h() {
        }

        @Override // com.beizi.fusion.m8.b
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            nh.a("BeiZisAd", "handleFullScreenClickContent click");
            BeiZiNewRewardVideoActivity.this.a(0, str, str2, str3, str4, str5, str6, str7, str8, 0);
        }
    }

    public class i implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f12473a;

        public i(ImageView imageView) {
            this.f12473a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                ImageView imageView = this.f12473a;
                if (imageView == null || bitmap == null) {
                    return;
                }
                imageView.setVisibility(0);
                this.f12473a.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class j implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f12475a;

        public j(ImageView imageView) {
            this.f12475a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                ImageView imageView = this.f12475a;
                if (imageView == null || bitmap == null) {
                    return;
                }
                imageView.setVisibility(0);
                this.f12475a.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class k extends Handler {
        public k(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                int i2 = message.what;
                int currentPosition = 0;
                if (i2 == 10001) {
                    if (BeiZiNewRewardVideoActivity.this.f12348O) {
                        return;
                    }
                    BeiZiNewRewardVideoActivity.this.a(0);
                    return;
                }
                if (i2 != 10010) {
                    return;
                }
                BeiZiNewRewardVideoActivity.this.f12341K0.sendEmptyMessageDelayed(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, 1000L);
                BeiZiNewRewardVideoActivity.this.g0();
                if (BeiZiNewRewardVideoActivity.this.f12344M && BeiZiNewRewardVideoActivity.this.f12328E != null && BeiZiNewRewardVideoActivity.this.f12328E.isPlaying()) {
                    int duration = BeiZiNewRewardVideoActivity.this.f12328E.getDuration();
                    currentPosition = BeiZiNewRewardVideoActivity.this.f12328E.getCurrentPosition();
                    BeiZiNewRewardVideoActivity.this.e(currentPosition);
                    BeiZiNewRewardVideoActivity.this.a(duration, currentPosition);
                }
                if (!BeiZiNewRewardVideoActivity.this.f12427s0 && !BeiZiNewRewardVideoActivity.this.f12409m0 && !BeiZiNewRewardVideoActivity.this.f12392g1 && !BeiZiNewRewardVideoActivity.this.f12327D0) {
                    if (!BeiZiNewRewardVideoActivity.this.f12344M) {
                        BeiZiNewRewardVideoActivity.e(BeiZiNewRewardVideoActivity.this);
                        currentPosition = BeiZiNewRewardVideoActivity.this.f12446z0 * 1000;
                    }
                    int i3 = ((BeiZiNewRewardVideoActivity.this.f12338J * 1000) - currentPosition) / 1000;
                    BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
                    beiZiNewRewardVideoActivity.f12340K = ((beiZiNewRewardVideoActivity.f12338J * 1000) - currentPosition) / 1000;
                    if (BeiZiNewRewardVideoActivity.this.f12340K <= BeiZiNewRewardVideoActivity.this.f12342L || BeiZiNewRewardVideoActivity.this.f12342L <= 0) {
                        BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity2 = BeiZiNewRewardVideoActivity.this;
                        beiZiNewRewardVideoActivity2.f12342L = beiZiNewRewardVideoActivity2.f12340K;
                        if (BeiZiNewRewardVideoActivity.this.f12410m1 == BeiZiNewRewardVideoActivity.this.f12413n1) {
                            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity3 = BeiZiNewRewardVideoActivity.this;
                            beiZiNewRewardVideoActivity3.f12419p1 = (beiZiNewRewardVideoActivity3.f12422q1 * 1000) - currentPosition;
                        }
                        if (BeiZiNewRewardVideoActivity.this.f12410m1 != BeiZiNewRewardVideoActivity.this.f12413n1 || BeiZiNewRewardVideoActivity.this.f12419p1 > 0 || i3 <= 0) {
                            BeiZiNewRewardVideoActivity.this.d(i3);
                        } else {
                            BeiZiNewRewardVideoActivity.this.R();
                        }
                        if (!BeiZiNewRewardVideoActivity.this.f12344M && i3 <= 0) {
                            BeiZiNewRewardVideoActivity.this.X();
                        }
                        if ((BeiZiNewRewardVideoActivity.this.f12422q1 * 1000) - currentPosition >= 0 || BeiZiNewRewardVideoActivity.this.f12410m1 != BeiZiNewRewardVideoActivity.this.f12416o1 || BeiZiNewRewardVideoActivity.this.f12406l0) {
                            return;
                        }
                        BeiZiNewRewardVideoActivity.this.Y();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class l implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f12478a;

        /* renamed from: b, reason: collision with root package name */
        float f12479b;

        /* renamed from: c, reason: collision with root package name */
        float f12480c;

        /* renamed from: d, reason: collision with root package name */
        float f12481d;

        /* renamed from: e, reason: collision with root package name */
        float f12482e;

        /* renamed from: f, reason: collision with root package name */
        float f12483f;

        public l() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f12478a = motionEvent.getX();
                this.f12479b = motionEvent.getY();
                this.f12480c = motionEvent.getRawX();
                this.f12481d = motionEvent.getRawY();
                this.f12482e = motionEvent.getX();
                this.f12483f = motionEvent.getY();
            } else if (action != 1) {
                if (action == 2) {
                    this.f12482e = motionEvent.getX();
                    this.f12483f = motionEvent.getY();
                }
            } else if (Math.abs(this.f12482e - this.f12478a) <= 15.0f && Math.abs(this.f12483f - this.f12479b) <= 15.0f) {
                BeiZiNewRewardVideoActivity.this.a(0, String.valueOf(this.f12478a), String.valueOf(this.f12479b), String.valueOf(this.f12480c), String.valueOf(this.f12481d), String.valueOf(this.f12478a), String.valueOf(this.f12479b), String.valueOf(this.f12480c), String.valueOf(this.f12481d), 0);
            }
            return true;
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BeiZiNewRewardVideoActivity.this.f12359T0 = 0;
        }
    }

    public class n implements View.OnClickListener {
        public n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BeiZiNewRewardVideoActivity.this.f12357S0 == 1 || BeiZiNewRewardVideoActivity.this.f12359T0 > 0) {
                return;
            }
            BeiZiNewRewardVideoActivity.this.n();
        }
    }

    public class o implements View.OnClickListener {
        public o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewRewardVideoActivity.this.b();
        }
    }

    public class p implements View.OnClickListener {
        public p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewRewardVideoActivity.this.f12427s0 = false;
            BeiZiNewRewardVideoActivity.this.b();
            BeiZiNewRewardVideoActivity.this.o();
            BeiZiNewRewardVideoActivity.this.Z();
        }
    }

    public class q implements View.OnClickListener {
        public q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public class r implements View.OnClickListener {
        public r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewRewardVideoActivity.this.q();
        }
    }

    public class s implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f12491a;

        public s(ImageView imageView) {
            this.f12491a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(tf.a(BeiZiNewRewardVideoActivity.this, bitmap, 10.0f));
                ImageView imageView = this.f12491a;
                if (imageView == null || bitmap == null) {
                    return;
                }
                imageView.setBackground(bitmapDrawable);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class t implements View.OnClickListener {
        public t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    public class u implements View.OnClickListener {
        public u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity = BeiZiNewRewardVideoActivity.this;
            beiZiNewRewardVideoActivity.f12428s1 = beiZiNewRewardVideoActivity.f12425r1;
            BeiZiNewRewardVideoActivity.this.x();
            BeiZiNewRewardVideoActivity.this.Z();
        }
    }

    public class v implements View.OnClickListener {
        public v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewRewardVideoActivity.this.V();
        }
    }

    public class w implements View.OnClickListener {
        public w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent launchIntentForPackage = BeiZiNewRewardVideoActivity.this.getPackageManager().getLaunchIntentForPackage(BeiZiNewRewardVideoActivity.this.f12375b.U());
                if (launchIntentForPackage != null) {
                    launchIntentForPackage.setFlags(C.ENCODING_PCM_MU_LAW);
                    BeiZiNewRewardVideoActivity.this.startActivity(launchIntentForPackage);
                }
                BeiZiNewRewardVideoActivity.this.f12415o0 = true;
                BeiZiNewRewardVideoActivity.this.w();
                BeiZiNewRewardVideoActivity.this.f0();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class x implements oj.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f12497a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ y1.d f12498b;

        public x(int i2, y1.d dVar) {
            this.f12497a = i2;
            this.f12498b = dVar;
        }

        @Override // com.beizi.fusion.oj.e
        public void a() {
            if (BeiZiNewRewardVideoActivity.this.f12403k0) {
                BeiZiNewRewardVideoActivity.this.a(this.f12497a);
            }
        }

        @Override // com.beizi.fusion.oj.e
        public void b() {
            BeiZiNewRewardVideoActivity.this.a(this.f12497a, this.f12498b);
        }
    }

    public class y implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap f12500a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f12501b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ BitmapDrawable f12503a;

            public a(BitmapDrawable bitmapDrawable) {
                this.f12503a = bitmapDrawable;
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView;
                try {
                    BitmapDrawable bitmapDrawable = this.f12503a;
                    if (bitmapDrawable == null || (imageView = y.this.f12501b) == null) {
                        return;
                    }
                    imageView.setBackground(bitmapDrawable);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public y(Bitmap bitmap, ImageView imageView) {
            this.f12500a = bitmap;
            this.f12501b = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Bitmap bitmap = this.f12500a;
                if (bitmap != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(tf.a(BeiZiNewRewardVideoActivity.this, bitmap, 20.0f));
                    if (BeiZiNewRewardVideoActivity.this.f12341K0 != null) {
                        BeiZiNewRewardVideoActivity.this.f12341K0.post(new a(bitmapDrawable));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class z implements vn.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f12505a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f12506b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ double f12507c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ double f12508d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f12509e;

        public z(boolean z2, int i2, double d2, double d3, int i3) {
            this.f12505a = z2;
            this.f12506b = i2;
            this.f12507c = d2;
            this.f12508d = d3;
            this.f12509e = i3;
        }

        @Override // com.beizi.fusion.vn.f
        public void a() {
            try {
                BeiZiNewRewardVideoActivity.this.f12440w1 = true;
                if (this.f12505a) {
                    AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = new AdSpacesBean.BuyerBean.ShakeViewBean();
                    shakeViewBean.setShakeCount(this.f12506b);
                    shakeViewBean.setShakeStartAmplitude(this.f12507c);
                    shakeViewBean.setShakeEndAmplitude(this.f12508d);
                    shakeViewBean.setRegulatoryAngle(this.f12509e);
                    if (BeiZiNewRewardVideoActivity.this.f12373a0 != null) {
                        BeiZiNewRewardVideoActivity.this.f12373a0.a(shakeViewBean);
                    }
                }
                nh.a("BeiZisAd", "handleShakeViewContent click");
                BeiZiNewRewardVideoActivity.this.a(0, "", "", "", "", "", "", "", "", 2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static /* synthetic */ int e(BeiZiNewRewardVideoActivity beiZiNewRewardVideoActivity) {
        int i2 = beiZiNewRewardVideoActivity.f12446z0;
        beiZiNewRewardVideoActivity.f12446z0 = i2 + 1;
        return i2;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_beizi_reward_video);
            e();
            g();
            M();
            O();
            if (this.f12329E0 != this.f12331F0) {
                S();
            } else if (this.f12344M) {
                U();
            } else {
                T();
            }
            int i2 = 3;
            y1.d dVarA = this.f12375b.a(3);
            if (dVarA == null) {
                dVarA = this.f12375b.a(this.f12329E0);
                i2 = this.f12329E0;
            } else {
                this.f12343L0 = true;
            }
            a(dVarA, i2, this.f12343L0, this.f12324C, 55, this.f12417p, this.f12420q);
            F();
            C();
            B();
            m();
            N();
            P();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            wl wlVar = this.f12370Z;
            if (wlVar != null) {
                wlVar.b();
            }
            this.f12370Z = null;
            vn vnVar = this.f12373a0;
            if (vnVar != null) {
                vnVar.k();
            }
            this.f12373a0 = null;
            s7 s7Var = this.f12379c0;
            if (s7Var != null) {
                s7Var.j();
            }
            this.f12379c0 = null;
            nn nnVar = this.f12376b0;
            if (nnVar != null) {
                nnVar.b();
            }
            this.f12376b0 = null;
            m8 m8Var = this.f12382d0;
            if (m8Var != null) {
                m8Var.b();
            }
            this.f12382d0 = null;
            Handler handler = this.f12341K0;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f12341K0 = null;
            d();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 || i2 == 3) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f12403k0 = false;
        v();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            if (this.f12375b == null || this.f12372a == null) {
                finish();
            }
            this.f12403k0 = true;
            u();
            w();
            f0();
            this.f12400j0 = 0L;
            if (this.f12415o0) {
                return;
            }
            VideoView videoView = this.f12328E;
            if (videoView != null && this.f12344M && !this.f12424r0 && !this.f12427s0 && !this.f12409m0 && !this.f12392g1 && !videoView.isPlaying()) {
                this.f12328E.resume();
            }
            if (!this.f12356S) {
                Z();
            }
            this.f12356S = false;
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.f12409m0) {
            if (!this.f12348O) {
                this.f12400j0 = 0L;
            } else if (this.f12425r1 >= 0) {
                this.f12400j0 = System.currentTimeMillis();
            } else {
                this.f12400j0 = 0L;
            }
        }
    }

    private void A() {
        this.f12409m0 = false;
        LinearLayout linearLayout = this.f12390g;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        if (this.f12392g1) {
            f0();
        } else {
            if (this.f12403k0) {
                a0();
            }
            a(this.f12408m);
        }
        Z();
    }

    private void B() {
        try {
            lm lmVar = this.f12439w0;
            if (lmVar == null) {
                return;
            }
            k5 k5VarD = lmVar.d();
            this.f12353Q0 = k5VarD;
            if (k5VarD == null) {
                this.f12353Q0 = new k5();
            }
            ap apVarB = this.f12353Q0.b();
            this.f12361U0 = apVarB;
            if (apVarB == null) {
                ap apVar = new ap();
                this.f12361U0 = apVar;
                apVar.b("__TIME__秒后可领取奖励");
                this.f12361U0.c("点击广告可提前领取奖励");
                this.f12361U0.a("已经获得奖励");
                this.f12353Q0.b(this.f12361U0);
            }
            ap apVarA = this.f12353Q0.a();
            this.f12363V0 = apVarA;
            if (apVarA == null) {
                ap apVar2 = new ap();
                this.f12363V0 = apVar2;
                apVar2.b("跳过");
                this.f12363V0.a("关闭");
                this.f12353Q0.a(this.f12363V0);
            }
            k5 k5VarB = this.f12439w0.b();
            this.f12355R0 = k5VarB;
            if (k5VarB == null) {
                this.f12355R0 = new k5();
            }
            ap apVarB2 = this.f12355R0.b();
            this.f12365W0 = apVarB2;
            if (apVarB2 == null) {
                ap apVar3 = new ap();
                this.f12365W0 = apVar3;
                apVar3.b("点击广告领取奖励");
                this.f12365W0.c("点击广告领取奖励");
                this.f12365W0.a("已经获得奖励");
                this.f12355R0.b(this.f12365W0);
            }
            ap apVarA2 = this.f12355R0.a();
            this.f12367X0 = apVarA2;
            if (apVarA2 == null) {
                ap apVar4 = new ap();
                this.f12367X0 = apVar4;
                apVar4.b("跳过");
                this.f12367X0.c("跳过");
                this.f12367X0.a("关闭");
                this.f12355R0.a(this.f12367X0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void C() {
        try {
            lm lmVar = this.f12439w0;
            if (lmVar == null) {
                return;
            }
            q6 q6VarE = lmVar.e();
            this.f12386e1 = q6VarE;
            if (q6VarE == null) {
                this.f12386e1 = new q6();
            }
            if (this.f12386e1.f() == null) {
                ap apVar = new ap();
                apVar.b("仅需再观看__TIME__秒即可获取奖励");
                this.f12386e1.d(apVar);
            }
            if (this.f12386e1.c() == null) {
                ap apVar2 = new ap();
                apVar2.b("确定退出吗");
                this.f12386e1.c(apVar2);
            }
            if (this.f12386e1.a() == null) {
                ap apVar3 = new ap();
                apVar3.b("继续观看");
                this.f12386e1.a(apVar3);
            }
            if (this.f12386e1.b() == null) {
                ap apVar4 = new ap();
                apVar4.b("关闭广告");
                this.f12386e1.b(apVar4);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void D() {
        if (this.f12389f1) {
            return;
        }
        this.f12389f1 = true;
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.beizi_reward_video_ad_end_car_container_rl);
        relativeLayout.setVisibility(0);
        int iH = wo.h(this);
        int iG = wo.g(this);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        layoutParams.width = iH;
        layoutParams.height = iG;
        relativeLayout.setLayoutParams(layoutParams);
        this.f12398i1 = (TextView) findViewById(R.id.beizi_reward_video_ad_end_car_close_tv);
        a((FrameLayout) findViewById(R.id.beizi_reward_video_ad_end_car_logo_container_fl));
        this.f12395h1 = (FrameLayout) findViewById(R.id.beizi_reward_video_ad_end_car_container_fl);
        if (this.f12398i1 != null) {
            int iA = eq.a(this, 15.0f);
            int iA2 = eq.a(this, 30.0f);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f12398i1.getLayoutParams();
            layoutParams2.width = -2;
            layoutParams2.height = iA2;
            this.f12398i1.setLayoutParams(layoutParams2);
            this.f12398i1.setVisibility(0);
            zn.a(this.f12398i1, "#66000000", 1, "#66FFFFFF", iA);
            this.f12398i1.setOnClickListener(new r());
            Q();
        }
    }

    private void E() {
        y1.d dVarA;
        String strH;
        rn rnVar;
        List listK;
        nl nlVarA;
        FrameLayout frameLayout;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.beizi_reward_video_end_car_normal, (ViewGroup) null);
        if (viewInflate != null && (frameLayout = this.f12395h1) != null) {
            frameLayout.removeAllViews();
            this.f12395h1.addView(viewInflate);
        }
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_image_iv);
        viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_image_mask_view);
        rn rnVar2 = this.f12375b;
        boolean z2 = false;
        int i2 = 5;
        if (rnVar2 != null) {
            dVarA = rnVar2.a(5);
            strH = (dVarA == null || (listK = dVarA.k()) == null || listK.size() <= 0 || (nlVarA = a(((y1.a) listK.get(0)).d())) == null) ? null : nlVarA.i();
        } else {
            dVarA = null;
            strH = null;
        }
        if (TextUtils.isEmpty(strH) && (rnVar = this.f12375b) != null) {
            strH = rnVar.H();
        }
        if (imageView != null && !TextUtils.isEmpty(strH)) {
            rf.a(this).a(strH, new s(imageView));
            if (dVarA != null) {
                a(5, dVarA);
            }
        }
        View view = (LinearLayout) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_interaction_container_ll);
        if (view != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = eq.a(this, 50.0f);
            view.setLayoutParams(layoutParams);
        }
        if (view != null) {
            zn.a(view, "#3976FF", 0, (String) null, eq.a(this, 25.0f));
        }
        CustomRoundImageView customRoundImageView = (CustomRoundImageView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_app_icon_iv);
        TextView textView = (TextView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_app_title_tv);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_app_subtitle_tv);
        if (dVarA == null) {
            dVarA = this.f12375b.a(this.f12329E0);
            i2 = this.f12329E0;
        } else {
            z2 = true;
        }
        y1.d dVar = dVarA;
        a(dVar, i2, z2, customRoundImageView, 89, textView, textView2);
        this.f12401j1 = (ImageView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_interaction_iv);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.beizi_reward_video_ad_end_car_interaction_title_tv);
        if (!TextUtils.isEmpty(this.f12391g0) && textView3 != null) {
            textView3.setText(this.f12391g0);
        }
        a(this.f12401j1);
        a(view);
        a(dVar, this.f12401j1);
    }

    private void F() {
        lm lmVar = this.f12439w0;
        if (lmVar == null) {
            return;
        }
        ll llVarJ = lmVar.j();
        this.f12444y0 = llVarJ;
        if (llVarJ == null) {
            this.f12444y0 = new ll();
            int i2 = this.f12439w0.i();
            if (i2 > 0) {
                this.f12444y0.h(i2);
            }
            int iA = this.f12439w0.a();
            if (iA > 0) {
                this.f12444y0.d(iA);
            }
            int iH = this.f12439w0.h();
            if (iH > 0) {
                this.f12444y0.i(iH);
            }
            int iN = this.f12439w0.n();
            if (iN > 0) {
                this.f12444y0.b(iN);
            }
        }
        this.f12422q1 = this.f12444y0.m();
        int iB = this.f12444y0.b();
        this.f12431t1 = iB;
        this.f12434u1 = iB;
        int iD = this.f12444y0.d();
        this.f12425r1 = iD;
        this.f12428s1 = iD;
        this.f12410m1 = this.f12444y0.l();
        this.f12407l1 = this.f12444y0.a();
        this.f12337I0 = this.f12444y0.c();
        if (this.f12444y0.o() == null) {
            ap apVar = new ap();
            apVar.b("恭喜获得特权");
            apVar.c("恭喜获得特权");
            apVar.a("恭喜获得特权");
            this.f12444y0.f(apVar);
        }
        if (this.f12444y0.n() == null) {
            ap apVar2 = new ap();
            apVar2.b("打开并体验内容");
            apVar2.c("只需再体验__TIME__秒");
            apVar2.a("任务达成");
            this.f12444y0.e(apVar2);
        }
        if (this.f12444y0.h() == null) {
            ap apVar3 = new ap();
            apVar3.b("__TIME__秒即可获得奖励");
            apVar3.c("即可获得奖励");
            apVar3.a("已经提前获取到奖励");
            this.f12444y0.d(apVar3);
        }
        if (this.f12444y0.f() == null) {
            ap apVar4 = new ap();
            apVar4.b("浏览详情，获取奖励");
            apVar4.c("继续浏览，获取奖励");
            apVar4.a("已获得奖励，继续体验");
            this.f12444y0.b(apVar4);
        }
        if (this.f12444y0.e() == null) {
            ap apVar5 = new ap();
            apVar5.b("__TIME__秒后继续播放");
            apVar5.c("浏览时间不足，无法领取奖励");
            apVar5.a("恭喜您！已提前获取奖励");
            this.f12444y0.a(apVar5);
        }
        if (this.f12444y0.g() == null) {
            ap apVar6 = new ap();
            apVar6.b("放弃特权");
            apVar6.c("放弃特权");
            apVar6.a("关闭");
            this.f12444y0.c(apVar6);
        }
    }

    private void H() {
        zk zkVarS;
        int iA;
        rn rnVar = this.f12375b;
        if (rnVar == null || this.f12341K0 == null) {
            return;
        }
        try {
            if (!this.f12348O && (zkVarS = rnVar.S()) != null && (iA = zkVarS.a()) > 0) {
                this.f12341K0.sendEmptyMessageDelayed(10001, iA);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void I() {
        VideoView videoView = this.f12328E;
        if (videoView == null) {
            return;
        }
        videoView.pause();
    }

    private void J() {
        try {
            int[] iArr = new int[2];
            this.f12387f.getLocationOnScreen(iArr);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f12387f.getLayoutParams();
            int iA = eq.a(this, 50.0f);
            int i2 = layoutParams != null ? layoutParams.width : 0;
            if (i2 <= 0) {
                i2 = wo.i(this) - eq.a(this, 30.0f);
            }
            int[] iArrB = rl.b(i2 / 2, iA / 2);
            String strX = this.f12372a.x();
            h5 h5Var = new h5();
            h5Var.g(String.valueOf(iArrB[0]));
            h5Var.c(String.valueOf(iArrB[0]));
            h5Var.h(String.valueOf(iArrB[1]));
            h5Var.d(String.valueOf(iArrB[1]));
            h5Var.e(String.valueOf(iArrB[0] + iArr[0]));
            h5Var.a(String.valueOf(iArrB[0] + iArr[0]));
            h5Var.f(String.valueOf(iArrB[1] + iArr[1]));
            h5Var.b(String.valueOf(iArrB[1] + iArr[1]));
            this.f12375b.c(true);
            this.f12375b.a(this.f12387f, h5Var, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), strX, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        rn rnVarZ;
        try {
            dj djVar = this.f12372a;
            if (djVar == null || (rnVarZ = djVar.z()) == null) {
                return;
            }
            rnVarZ.a(this.f12378c, this.f12372a.x());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        rn rnVarZ;
        try {
            dj djVar = this.f12372a;
            if (djVar == null || (rnVarZ = djVar.z()) == null) {
                return;
            }
            rnVarZ.e(this.f12378c, this.f12372a.x());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void M() {
        try {
            int iA = eq.a(this, 15.0f);
            int iA2 = eq.a(this, 30.0f);
            ImageView imageView = this.f12405l;
            if (imageView != null && this.f12344M) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams.width = iA2;
                layoutParams.height = iA2;
                this.f12405l.setLayoutParams(layoutParams);
            }
            View view = this.f12402k;
            if (view != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view.getLayoutParams();
                layoutParams2.width = iA2;
                layoutParams2.height = iA2;
                this.f12402k.setLayoutParams(layoutParams2);
                zn.a(this.f12402k, (String) null, 1, "#66FFFFFF", iA2 / 2);
            }
            LinearLayout linearLayout = this.f12384e;
            if (linearLayout != null) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                layoutParams3.width = -2;
                layoutParams3.height = iA2;
                this.f12384e.setLayoutParams(layoutParams3);
                zn.a(this.f12384e, "#66000000", 1, "#66FFFFFF", iA);
            }
            LinearLayout linearLayout2 = this.f12387f;
            if (linearLayout2 != null) {
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) linearLayout2.getLayoutParams();
                layoutParams4.width = -1;
                layoutParams4.height = eq.a(this, 44.0f);
                this.f12387f.setLayoutParams(layoutParams4);
            }
            LinearLayout linearLayout3 = this.f12393h;
            if (linearLayout3 != null) {
                zn.a(linearLayout3, "#FFFFFF", 0, (String) null, iA);
            }
            LinearLayout linearLayout4 = this.f12396i;
            if (linearLayout4 != null) {
                zn.a(linearLayout4, "#EBF1FF", 0, (String) null, iA2 / 3);
            }
            LinearLayout linearLayout5 = this.f12399j;
            if (linearLayout5 != null) {
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) linearLayout5.getLayoutParams();
                layoutParams5.width = -1;
                layoutParams5.height = eq.a(this, 50.0f);
                this.f12399j.setLayoutParams(layoutParams5);
            }
            TextView textView = this.f12438w;
            if (textView != null) {
                LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                int iA3 = eq.a(this, 120.0f);
                int iA4 = eq.a(this, 35.0f);
                layoutParams6.width = iA3;
                layoutParams6.height = iA4;
                this.f12438w.setLayoutParams(layoutParams6);
                zn.a(this.f12438w, "#4DFFFFFF", 0, (String) null, iA4 / 2);
            }
            LinearLayout linearLayout6 = this.f12369Y0;
            if (linearLayout6 != null) {
                zn.a(linearLayout6, "#FFFFFF", 0, (String) null, iA);
            }
            TextView textView2 = this.f12380c1;
            if (textView2 != null) {
                LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) textView2.getLayoutParams();
                layoutParams7.width = -1;
                int iA5 = eq.a(this, 44.0f);
                layoutParams7.height = iA5;
                zn.a(this.f12380c1, "#3976FF", 0, (String) null, iA5 / 2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void N() {
        ImageView imageView = this.f12405l;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
    }

    private void O() {
        try {
            TextView textView = (TextView) findViewById(R.id.beizi_reward_video_complaint_tv);
            textView.setVisibility(0);
            textView.setOnClickListener(new v());
            float fA = eq.a(this, 5.0f);
            zn.a(textView, "#66000000", 1, "#66FFFFFF", new float[]{0.0f, 0.0f, fA, fA, fA, fA, 0.0f, 0.0f});
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void P() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.P():void");
    }

    private void Q() {
        String strB;
        try {
            ap apVar = this.f12365W0;
            String strB2 = null;
            if (apVar == null) {
                strB = null;
            } else if (this.f12415o0) {
                strB = apVar.a();
            } else {
                strB = apVar.b();
                if (TextUtils.isEmpty(strB)) {
                    strB = this.f12365W0.c();
                }
            }
            ap apVar2 = this.f12367X0;
            if (apVar2 != null) {
                if (this.f12415o0) {
                    strB2 = apVar2.a();
                } else {
                    strB2 = apVar2.b();
                    if (TextUtils.isEmpty(strB2)) {
                        strB2 = this.f12367X0.c();
                    }
                }
            }
            TextView textView = this.f12398i1;
            if (textView != null) {
                textView.setText(strB + " ｜ " + strB2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        try {
            if (this.f12410m1 == this.f12413n1 && !this.f12415o0 && this.f12414o != null) {
                this.f12412n0 = true;
                ap apVar = this.f12361U0;
                String strC = apVar != null ? apVar.c() : null;
                ap apVar2 = this.f12363V0;
                String strB = apVar2 != null ? apVar2.b() : null;
                if (this.f12357S0 == 0 && this.f12359T0 == 0) {
                    if (TextUtils.isEmpty(strC)) {
                        strC = strB;
                    } else {
                        strC = strC + " ｜ " + strB;
                    }
                }
                if (this.f12414o == null || TextUtils.isEmpty(strC)) {
                    return;
                }
                this.f12414o.setText(strC);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void S() {
        rn rnVar;
        List<y1.d> listE;
        List listK;
        nl nlVarA;
        try {
            if (this.f12329E0 != this.f12331F0 && (rnVar = this.f12375b) != null && (listE = rnVar.e()) != null && !listE.isEmpty()) {
                for (y1.d dVar : listE) {
                    if (dVar.y() == 1) {
                        if (this.f12345M0 == null) {
                            this.f12345M0 = new ArrayList();
                        }
                        this.f12345M0.add(dVar);
                    }
                }
                List list = this.f12345M0;
                if (list != null && !list.isEmpty()) {
                    ArrayList arrayList = null;
                    for (y1.d dVar2 : this.f12345M0) {
                        if (dVar2 != null && (listK = dVar2.k()) != null && listK.size() > 0 && (nlVarA = a(((y1.a) listK.get(0)).d())) != null) {
                            String strI = nlVarA.i();
                            if (!TextUtils.isEmpty(strI)) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(strI);
                                if (this.f12347N0 == null) {
                                    this.f12347N0 = new ArrayList();
                                }
                                y1.b bVarM = dVar2.m();
                                if (bVarM != null) {
                                    nlVarA.c(bVarM.a());
                                    nlVarA.a(bVarM.n());
                                    nlVarA.a(bVarM.c());
                                    nlVarA.g(bVarM.i());
                                    nlVarA.d(bVarM.f());
                                    nlVarA.e(bVarM.g());
                                    nlVarA.f(bVarM.h());
                                    nlVarA.h(bVarM.j());
                                    nlVarA.i(bVarM.k());
                                    nlVarA.b(bVarM.d());
                                }
                                this.f12347N0.add(nlVarA);
                            }
                        }
                    }
                    if (arrayList != null && !arrayList.isEmpty()) {
                        d(this.f12338J);
                        ProgressBar progressBar = this.f12330F;
                        if (progressBar != null) {
                            progressBar.setVisibility(8);
                        }
                        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.beizi_reward_video_group_image_container_fl);
                        BZCarouselView bZCarouselView = new BZCarouselView(this);
                        this.f12351P0 = bZCarouselView;
                        bZCarouselView.setOnContentChangeListener(new d0());
                        this.f12351P0.setImageUrls(arrayList);
                        lm lmVar = this.f12439w0;
                        if (lmVar != null) {
                            this.f12351P0.setScrollInterval(lmVar.m());
                        }
                        frameLayout.setVisibility(0);
                        frameLayout.addView(this.f12351P0);
                        frameLayout.setOnTouchListener(new e0());
                        Z();
                        a();
                        t();
                        l();
                        Handler handler = this.f12341K0;
                        if (handler != null) {
                            handler.sendEmptyMessageDelayed(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, 1000L);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void T() {
        try {
            if (!this.f12344M && !TextUtils.isEmpty(this.f12418p0)) {
                d(this.f12338J);
                ProgressBar progressBar = this.f12330F;
                if (progressBar != null) {
                    progressBar.setVisibility(8);
                }
                ImageView imageView = (ImageView) findViewById(R.id.beizi_reward_video_ad_image_iv);
                imageView.setVisibility(0);
                rf.a(this).a(this.f12418p0, new c0(imageView));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void U() {
        try {
            if (this.f12344M && this.f12328E != null && !TextUtils.isEmpty(this.f12364W)) {
                d(this.f12338J);
                ImageView imageView = this.f12405l;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    if (this.f12336I) {
                        this.f12405l.setImageResource(R.drawable.beizi_voice_on);
                    } else {
                        this.f12405l.setImageResource(R.drawable.beizi_voice_off);
                    }
                }
                this.f12328E.setVisibility(0);
                if (this.f12334H) {
                    nh.a("BeiZisAd", "isVideoCacheSuccess: true");
                    b(0);
                } else {
                    nh.a("BeiZisAd", "isVideoCacheSuccess: false");
                    this.f12328E.setVideoPath(this.f12364W);
                    this.f12328E.requestFocus();
                }
                this.f12328E.setOnCompletionListener(new f0());
                this.f12328E.setOnPreparedListener(new g0());
                this.f12328E.setOnErrorListener(new a());
                this.f12328E.setOnInfoListener(new b());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        try {
            v();
            w5.a aVar = new w5.a(this);
            aVar.a(new a0());
            aVar.a().show();
            this.f12327D0 = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            this.f12327D0 = false;
        }
    }

    private void W() {
        try {
            if (this.f12371Z0 == null) {
                return;
            }
            b0();
            if (this.f12415o0) {
                X();
                return;
            }
            this.f12427s0 = true;
            v();
            this.f12371Z0.setVisibility(0);
            q6 q6Var = this.f12386e1;
            if (q6Var != null) {
                ap apVarF = q6Var.f();
                strB = apVarF != null ? apVarF.b() : null;
                a(this.f12377b1, this.f12386e1.c());
                a(this.f12380c1, this.f12386e1.a());
                a(this.f12383d1, this.f12386e1.b());
            }
            if (this.f12374a1 != null && !TextUtils.isEmpty(strB)) {
                this.f12374a1.setText(strB.replace("__TIME__", this.f12340K + ""));
            }
            TextView textView = this.f12380c1;
            if (textView != null) {
                textView.setOnClickListener(new o());
            }
            TextView textView2 = this.f12383d1;
            if (textView2 != null) {
                textView2.setOnClickListener(new p());
            }
            this.f12371Z0.setOnClickListener(new q());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        y1.d dVarA;
        try {
            if (this.f12439w0 == null) {
                return;
            }
            b0();
            if (this.f12392g1) {
                return;
            }
            this.f12392g1 = true;
            b5 b5VarC = this.f12439w0.c();
            if (b5VarC == null) {
                b5VarC = new b5();
                b5VarC.a(0);
            }
            this.f12404k1 = b5VarC.a();
            String strG = this.f12375b.G();
            if (TextUtils.isEmpty(strG)) {
                this.f12404k1 = 0;
            }
            RelativeLayout relativeLayout = this.f12381d;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            D();
            rn rnVar = this.f12375b;
            if (rnVar != null && (dVarA = rnVar.a(7)) != null) {
                a(dVarA, 7);
            }
            int i2 = this.f12404k1;
            if (i2 != 0 && i2 != 1) {
                if (i2 == 2 && this.f12375b != null) {
                    v();
                    J();
                    HashMap map = new HashMap();
                    if (this.f12375b != null) {
                        map = new HashMap();
                        map.put("isRedirectionCanJump", Boolean.valueOf(this.f12375b.i0()));
                        map.put("isDownload", Boolean.valueOf(this.f12388f0));
                        map.put("landingPageUrl", strG);
                        map.put("deeplinkUrl", this.f12375b.A());
                        map.put("webDeepLink", Boolean.valueOf(this.f12375b.q0()));
                    }
                    BeiZiWebView beiZiWebView = new BeiZiWebView(this, map);
                    beiZiWebView.loadUrl(strG);
                    this.f12395h1.addView(beiZiWebView);
                    return;
                }
                return;
            }
            p();
            E();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b7 A[Catch: Exception -> 0x01c5, TryCatch #0 {Exception -> 0x01c5, blocks: (B:72:0x01a6, B:74:0x01b7, B:76:0x01bf, B:80:0x01cc, B:79:0x01c7), top: B:84:0x01a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Y() {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.Y():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        BZCarouselView bZCarouselView;
        try {
            if (this.f12427s0 || this.f12392g1 || this.f12409m0 || (bZCarouselView = this.f12351P0) == null) {
                return;
            }
            bZCarouselView.startCarousel();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        MediaPlayer mediaPlayer;
        try {
            if (this.f12328E != null && this.f12344M && !this.f12409m0 && !this.f12427s0 && !this.f12392g1) {
                int i2 = this.f12350P;
                if (i2 > 0 && (mediaPlayer = this.f12346N) != null && Build.VERSION.SDK_INT >= 26) {
                    mediaPlayer.seekTo(i2, 3);
                }
                this.f12328E.start();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b0() {
        try {
            BZCarouselView bZCarouselView = this.f12351P0;
            if (bZCarouselView != null) {
                bZCarouselView.stopCarousel();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        try {
            BZCarouselView bZCarouselView = this.f12351P0;
            if (bZCarouselView != null) {
                bZCarouselView.performLastCarousel();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        try {
            BZCarouselView bZCarouselView = this.f12351P0;
            if (bZCarouselView != null) {
                bZCarouselView.performNextCarousel();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e0() {
        try {
            LinearLayout linearLayout = this.f12387f;
            if (linearLayout == null) {
                return;
            }
            int[] iArr = new int[2];
            linearLayout.getLocationOnScreen(iArr);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f12387f.getLayoutParams();
            int iA = eq.a(this, 50.0f);
            int i2 = layoutParams != null ? layoutParams.width : 0;
            if (i2 <= 0) {
                i2 = wo.i(this) - eq.a(this, 30.0f);
            }
            int[] iArrB = rl.b(i2 / 2, iA / 2);
            a(0, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        try {
            if (this.f12392g1) {
                Q();
                if (!this.f12409m0) {
                    a(this.f12401j1);
                }
                p();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0() {
        int i2;
        try {
            ll llVar = this.f12444y0;
            if (llVar != null && llVar.b() != 0 && this.f12409m0 && this.f12403k0 && !this.f12427s0 && (i2 = this.f12434u1) != -999 && !this.f12327D0) {
                if (i2 <= 0) {
                    if (i2 == 0) {
                        A();
                        return;
                    }
                    return;
                }
                ap apVarE = this.f12444y0.e();
                if (apVarE != null) {
                    String strB = apVarE.b();
                    if (this.f12435v != null && !TextUtils.isEmpty(strB)) {
                        this.f12435v.setText(strB.replace("__TIME__", this.f12434u1 + ""));
                    }
                }
                this.f12434u1--;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void m() {
        k5 k5Var;
        try {
            if (this.f12439w0 != null && (k5Var = this.f12353Q0) != null) {
                this.f12357S0 = k5Var.f();
                this.f12359T0 = this.f12353Q0.h();
                ap apVarB = this.f12353Q0.b();
                this.f12361U0 = apVarB;
                String strReplace = null;
                String strB = apVarB != null ? apVarB.b() : null;
                ap apVarA = this.f12353Q0.a();
                this.f12363V0 = apVarA;
                String strB2 = apVarA != null ? apVarA.b() : null;
                if (!TextUtils.isEmpty(strB)) {
                    strReplace = strB.replace("__TIME__", this.f12338J + "");
                }
                if (this.f12357S0 != 0 || this.f12359T0 != 0) {
                    strB2 = strReplace;
                } else if (!TextUtils.isEmpty(strReplace)) {
                    strB2 = strReplace + " ｜ " + strB2;
                }
                if (this.f12414o != null && !TextUtils.isEmpty(strB2)) {
                    this.f12414o.setText(strB2);
                }
                if (this.f12357S0 == 0 && this.f12359T0 > 0) {
                    new Handler().postDelayed(new m(), this.f12359T0 * 1000);
                }
                TextView textView = this.f12414o;
                if (textView != null) {
                    textView.setOnClickListener(new n());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        k5 k5Var;
        try {
            if (this.f12439w0 != null && (k5Var = this.f12353Q0) != null) {
                int iC = k5Var.c();
                if (!rl.a(this.f12353Q0.d())) {
                    iC = 0;
                }
                if (this.f12415o0) {
                    iC = 0;
                }
                int iE = this.f12353Q0.e();
                if (iC != 0) {
                    if (iC == 1) {
                        this.f12353Q0.b(0);
                        Y();
                        return;
                    } else {
                        if (iC != 2) {
                            return;
                        }
                        this.f12353Q0.b(0);
                        e0();
                        return;
                    }
                }
                if (this.f12353Q0.c() == 1 && iE == 1 && this.f12409m0) {
                    return;
                }
                if (this.f12415o0) {
                    h();
                } else {
                    W();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            if (this.f12439w0 == null) {
                h();
                return;
            }
            q6 q6Var = this.f12386e1;
            if (q6Var == null) {
                h();
                return;
            }
            int iD = q6Var.d();
            if (!rl.a(this.f12386e1.e())) {
                iD = 0;
            }
            if (this.f12415o0) {
                iD = 0;
            }
            if (iD == 0) {
                h();
                return;
            }
            if (iD == 1) {
                b();
                this.f12386e1.b(0);
                if (this.f12409m0) {
                    A();
                }
                X();
                return;
            }
            if (iD == 2) {
                b();
                this.f12386e1.b(0);
                Y();
            } else if (iD == 3) {
                b();
                this.f12386e1.b(0);
                e0();
            } else {
                if (iD != 4) {
                    return;
                }
                this.f12386e1.b(0);
                b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            h();
        }
    }

    private void p() {
        MediaPlayer mediaPlayer;
        try {
            if (this.f12404k1 != 1 || this.f12424r0) {
                I();
                return;
            }
            if (this.f12328E == null || !this.f12344M) {
                return;
            }
            int i2 = this.f12350P;
            if (i2 > 0 && (mediaPlayer = this.f12346N) != null && Build.VERSION.SDK_INT >= 26) {
                mediaPlayer.seekTo(i2, 3);
            }
            ImageView imageView = this.f12405l;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.beizi_voice_off);
            }
            this.f12336I = false;
            this.f12346N.setVolume(0.0f, 0.0f);
            this.f12328E.start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            if (this.f12439w0 == null) {
                c();
                return;
            }
            k5 k5Var = this.f12355R0;
            if (k5Var == null) {
                c();
                return;
            }
            int iC = k5Var.c();
            if (!rl.a(this.f12355R0.d())) {
                iC = 0;
            }
            if (this.f12415o0) {
                iC = 0;
            }
            if (iC == 0) {
                c();
                return;
            }
            if (iC == 1) {
                this.f12355R0.b(0);
                Y();
            } else {
                if (iC != 2) {
                    return;
                }
                this.f12355R0.b(0);
                e0();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            c();
        }
    }

    private void r() {
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule;
        try {
            if (this.f12368Y != null && !G() && !q1.i().v() && (eulerAngleRule = this.f12368Y.getEulerAngleRule()) != null) {
                s7 s7Var = new s7(this, eulerAngleRule, this.f12368Y.getSpaceId(), this.f12366X);
                this.f12379c0 = s7Var;
                s7Var.a(new g());
                this.f12397i0 = "eulerAngle";
                this.f12394h0 = this.f12379c0.c();
                a(this.f12408m);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void s() {
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f12368Y;
            if (buyerBean == null || (fullScreenClick = buyerBean.getFullScreenClick()) == null) {
                return;
            }
            m8 m8Var = new m8(this, fullScreenClick, this.f12366X);
            this.f12382d0 = m8Var;
            m8Var.a(this.f12378c, new h());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        try {
            if (this.f12368Y == null) {
                return;
            }
            LinearLayout linearLayout = this.f12387f;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            s();
            y();
            z();
            r();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        try {
            vn vnVar = this.f12373a0;
            if (vnVar != null) {
                vnVar.m();
            }
            s7 s7Var = this.f12379c0;
            if (s7Var != null) {
                s7Var.l();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void v() {
        try {
            VideoView videoView = this.f12328E;
            if (videoView != null && this.f12344M) {
                int currentPosition = videoView.getCurrentPosition();
                if (currentPosition > 0) {
                    this.f12350P = currentPosition;
                }
                I();
            }
            vn vnVar = this.f12373a0;
            if (vnVar != null) {
                vnVar.l();
            }
            s7 s7Var = this.f12379c0;
            if (s7Var != null) {
                s7Var.k();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        ap apVarN;
        try {
            if (this.f12356S) {
                return;
            }
            if (this.f12409m0) {
                a(this.f12411n);
            }
            if (this.f12348O && !this.f12427s0 && this.f12409m0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = this.f12400j0;
                long j3 = jCurrentTimeMillis - j2;
                if (this.f12442x0 != 3) {
                    if (j2 <= 0) {
                        return;
                    }
                    if (this.f12410m1 == this.f12413n1 && !this.f12412n0) {
                        return;
                    }
                    if ((j3 > this.f12428s1 * 1000 && this.f12407l1 == 0) || (this.f12407l1 == 1 && this.f12415o0)) {
                        i();
                        d(0);
                    }
                } else {
                    if (j2 <= 0 && this.f12425r1 > 0) {
                        return;
                    }
                    int i2 = this.f12337I0;
                    if ((i2 > 0 && this.f12335H0 >= i2) || j3 > this.f12428s1 * 1000) {
                        i();
                        d(0);
                    }
                }
                b(this.f12426s, this.f12444y0.o());
                int i3 = ((int) ((this.f12428s1 * 1000) - j3)) / 1000;
                this.f12428s1 = i3;
                if (i3 <= 0) {
                    this.f12428s1 = 1;
                }
                if (this.f12429t != null && (apVarN = this.f12444y0.n()) != null) {
                    String strC = apVarN.c();
                    if (this.f12415o0) {
                        strC = apVarN.a();
                    }
                    if (!TextUtils.isEmpty(strC)) {
                        if (strC.contains("__TIME__秒")) {
                            String str = this.f12428s1 + "秒";
                            String strReplace = strC.replace("__TIME__秒", str);
                            SpannableString spannableString = new SpannableString(strReplace);
                            int iIndexOf = strReplace.indexOf(str);
                            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#3976FF")), iIndexOf, str.length() + iIndexOf, 33);
                            this.f12429t.setText(spannableString);
                        } else {
                            this.f12429t.setText(strC);
                        }
                    }
                }
                b(this.f12432u, this.f12444y0.h());
                b(this.f12445z, this.f12444y0.f());
                this.f12434u1 = -999;
                b(this.f12435v, this.f12444y0.e());
                b(this.f12438w, this.f12444y0.g());
                if (this.f12407l1 == 1) {
                    this.f12435v.setOnClickListener(new w());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        try {
            ll llVar = this.f12444y0;
            if (llVar == null) {
                return;
            }
            int i2 = llVar.i();
            if (!rl.a(this.f12444y0.j())) {
                i2 = 0;
            }
            boolean z2 = this.f12415o0;
            if (z2) {
                i2 = 0;
            }
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                this.f12444y0.f(0);
                e0();
                return;
            }
            if (z2) {
                h();
            } else {
                A();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void y() {
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f12368Y;
            if (buyerBean == null) {
                return;
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = buyerBean.getRegionalClickView();
            String str = "#3976FF";
            if (regionalClickView == null) {
                regionalClickView = new AdSpacesBean.BuyerBean.RegionalClickViewBean();
                regionalClickView.setBackgroundAlpha(1.0d);
                regionalClickView.setBackgroundColor("#3976FF");
                regionalClickView.setTitle("点击跳转网页或第三方应用");
                regionalClickView.setTitleColor("#FFFFFF");
            }
            this.f12391g0 = regionalClickView.getTitle();
            wl wlVar = new wl(this, regionalClickView, this.f12366X, this.f12388f0);
            this.f12370Z = wlVar;
            String strA = wlVar.a();
            if (!TextUtils.isEmpty(strA)) {
                str = strA;
            }
            LinearLayout linearLayout = this.f12387f;
            if (linearLayout != null) {
                zn.a(linearLayout, str, 0, (String) null, eq.a(this, 5.0f));
                this.f12370Z.a(this.f12387f, this.f12423r);
                this.f12370Z.a(new e());
            }
            LinearLayout linearLayout2 = this.f12399j;
            if (linearLayout2 != null) {
                zn.a(linearLayout2, "#2A8BEF", 0, (String) null, eq.a(this, 25.0f));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void z() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (this.f12368Y != null && !G() && !q1.i().v() && (shakeView = this.f12368Y.getShakeView()) != null) {
                vn vnVar = new vn(this, shakeView, this.f12368Y.getSpaceId(), this.f12366X);
                this.f12373a0 = vnVar;
                vnVar.a(new f());
                this.f12397i0 = "shake";
                this.f12394h0 = this.f12373a0.c();
                a(this.f12408m);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean G() {
        g5 g5VarW;
        try {
            rn rnVar = this.f12375b;
            if (rnVar != null && (g5VarW = rnVar.w()) != null) {
                if (g5VarW.d() == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private void h() {
        k5 k5Var = this.f12353Q0;
        if ((k5Var != null ? k5Var.g() : 0) == 1) {
            if (this.f12409m0) {
                A();
            }
            X();
            return;
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        dj djVar;
        rn rnVarZ;
        try {
            if (this.f12415o0 || (djVar = this.f12372a) == null || (rnVarZ = djVar.z()) == null) {
                return;
            }
            this.f12415o0 = true;
            rnVarZ.a(this.f12372a.x(), this.f12372a.f(), this.f12372a.A());
            this.f12372a.a((String) null, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        dj djVar;
        try {
            if (this.f12323B0 || (djVar = this.f12372a) == null || djVar.z() == null) {
                return;
            }
            this.f12323B0 = true;
            this.f12372a.R();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        dj djVar;
        try {
            if (this.f12325C0 || (djVar = this.f12372a) == null || djVar.z() == null) {
                return;
            }
            this.f12325C0 = true;
            this.f12372a.S();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        rn rnVarZ;
        y1.d dVarA;
        try {
            dj djVar = this.f12372a;
            if (djVar == null || this.f12321A0 || (rnVarZ = djVar.z()) == null) {
                return;
            }
            this.f12321A0 = true;
            String strX = this.f12372a.x();
            int i2 = this.f12329E0;
            if (i2 == this.f12331F0) {
                dVarA = rnVarZ.a(i2);
            } else {
                List list = this.f12345M0;
                dVarA = (list == null || list.size() <= 0) ? null : (y1.d) this.f12345M0.get(this.f12349O0);
            }
            rnVarZ.a(dVarA, this.f12378c, strX);
            this.f12372a.T();
            y1.d dVarA2 = rnVarZ.a(2);
            if (dVarA2 != null) {
                a(dVarA2, 2);
            } else {
                a(dVarA, this.f12329E0);
            }
            H();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        try {
            String strF = f();
            if (TextUtils.isEmpty(strF)) {
                return;
            }
            this.f12328E.setVideoPath(strF);
            if (i2 == 0) {
                this.f12328E.requestFocus();
            } else {
                this.f12328E.start();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void c() {
        Handler handler = this.f12341K0;
        if (handler != null) {
            handler.removeCallbacks(null);
        }
        dj djVar = this.f12372a;
        if (djVar != null) {
            djVar.Q();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i2) {
        try {
            if (this.f12414o == null) {
                return;
            }
            if (this.f12338J > 0 && i2 <= 0) {
                ap apVar = this.f12361U0;
                String strA = apVar != null ? apVar.a() : null;
                ap apVar2 = this.f12363V0;
                strReplace = apVar2 != null ? apVar2.a() : null;
                if (this.f12357S0 == 0 && this.f12359T0 == 0) {
                    strA = strA + " ｜ " + strReplace;
                }
                this.f12414o.setText(strA);
                i();
                return;
            }
            if (this.f12415o0) {
                return;
            }
            ap apVar3 = this.f12361U0;
            String strB = apVar3 != null ? apVar3.b() : null;
            ap apVar4 = this.f12363V0;
            String strB2 = apVar4 != null ? apVar4.b() : null;
            if (!TextUtils.isEmpty(strB)) {
                strReplace = strB.replace("__TIME__", i2 + "");
            }
            if (this.f12357S0 != 0 || this.f12359T0 != 0) {
                strB2 = strReplace;
            } else if (!TextUtils.isEmpty(strReplace)) {
                strB2 = strReplace + " ｜ " + strB2;
            }
            if (this.f12414o != null && !TextUtils.isEmpty(strB2)) {
                this.f12414o.setText(strB2);
            }
            if (i2 <= 0) {
                i();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        this.f12378c = (RelativeLayout) findViewById(R.id.beizi_reward_video_ad_container_rl);
        this.f12328E = (VideoView) findViewById(R.id.beizi_reward_video_ad_video_vv);
        this.f12330F = (ProgressBar) findViewById(R.id.beizi_reward_video_progress_bar);
        this.f12381d = (RelativeLayout) findViewById(R.id.beizi_reward_video_ad_voice_close_container_rl);
        this.f12405l = (ImageView) findViewById(R.id.beizi_reward_video_ad_voice_iv);
        this.f12402k = findViewById(R.id.beizi_reward_video_ad_voice_outline_view);
        this.f12384e = (LinearLayout) findViewById(R.id.beizi_reward_video_ad_get_rewards_container_ll);
        this.f12414o = (TextView) findViewById(R.id.beizi_reward_video_ad_get_rewards_close_tv);
        this.f12324C = (CustomRoundImageView) findViewById(R.id.beizi_reward_video_ad_app_icon_iv);
        this.f12417p = (TextView) findViewById(R.id.beizi_reward_video_ad_app_title_tv);
        this.f12420q = (TextView) findViewById(R.id.beizi_reward_video_ad_app_subtitle_tv);
        this.f12322B = (FrameLayout) findViewById(R.id.beizi_reward_video_ad_logo_container_fl);
        this.f12387f = (LinearLayout) findViewById(R.id.beizi_reward_video_ad_interaction_container_ll);
        this.f12408m = (ImageView) findViewById(R.id.beizi_reward_video_ad_interaction_iv);
        this.f12423r = (TextView) findViewById(R.id.beizi_reward_video_ad_interaction_title_tv);
        this.f12320A = (TextView) findViewById(R.id.beizi_reward_video_ad_app_download_info_tv);
        this.f12390g = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_container_ll);
        this.f12393h = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_content_container_ll);
        this.f12426s = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_tip_title_tv);
        this.f12429t = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_tip_sub_title_tv);
        this.f12396i = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_app_info_ll);
        this.f12326D = (CustomRoundImageView) findViewById(R.id.beizi_reward_video_privilege_dialog_app_icon_iv);
        this.f12441x = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_app_title_tv);
        this.f12443y = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_app_subtitle_tv);
        this.f12432u = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_tip_detail_tv);
        this.f12399j = (LinearLayout) findViewById(R.id.beizi_reward_video_privilege_dialog_interaction_container_ll);
        this.f12445z = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_interaction_title_tv);
        this.f12411n = (ImageView) findViewById(R.id.beizi_reward_video_privilege_dialog_interaction_iv);
        this.f12435v = (TextView) findViewById(R.id.beizi_reward_video_privilege_dialog_countdown_tv);
        this.f12438w = (TextView) findViewById(R.id.beizi_reward_video_cancel_privilege_dialog_tv);
        this.f12371Z0 = (RelativeLayout) findViewById(R.id.beizi_reward_video_quit_dialog_container_rl);
        this.f12369Y0 = (LinearLayout) findViewById(R.id.beizi_reward_video_quit_dialog_content_container_ll);
        this.f12374a1 = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_get_reward_tv);
        this.f12377b1 = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_quit_tv);
        this.f12380c1 = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_continue_play_tv);
        this.f12383d1 = (TextView) findViewById(R.id.beizi_reward_video_quit_dialog_close_ad_tv);
    }

    private String f() {
        dj djVar = this.f12372a;
        if (djVar == null) {
            return null;
        }
        return djVar.M();
    }

    private void g() {
        try {
            dj djVar = dj.f13480S;
            this.f12372a = djVar;
            this.f12368Y = djVar.g();
            this.f12388f0 = this.f12372a.C();
            this.f12334H = this.f12372a.O();
            AdSpacesBean.BuyerBean buyerBean = this.f12368Y;
            if (buyerBean == null) {
                return;
            }
            if (buyerBean.getTemplate() == 1) {
                this.f12332G = true;
            } else {
                this.f12332G = false;
            }
            rn rnVarZ = this.f12372a.z();
            this.f12375b = rnVarZ;
            if (rnVarZ == null) {
                return;
            }
            this.f12366X = rnVarZ.c();
            boolean zP0 = this.f12375b.p0();
            this.f12344M = zP0;
            if (zP0) {
                this.f12364W = this.f12375b.f0();
            }
            this.f12421q0 = this.f12375b.e0();
            this.f12358T = this.f12375b.m();
            this.f12352Q = this.f12375b.h0();
            this.f12354R = this.f12375b.L();
            this.f12360U = this.f12375b.c0();
            this.f12362V = this.f12375b.Z();
            this.f12336I = !this.f12375b.m0();
            this.f12418p0 = this.f12375b.H();
            lm lmVarX = this.f12375b.X();
            this.f12439w0 = lmVarX;
            if (lmVarX == null) {
                lm lmVar = new lm();
                this.f12439w0 = lmVar;
                lmVar.c(30);
            }
            int iG = this.f12439w0.g();
            this.f12338J = iG;
            if (iG <= 0) {
                int iM = this.f12375b.M();
                if (iM > 0) {
                    this.f12338J = iM;
                } else {
                    this.f12338J = 30;
                }
            }
            int i2 = this.f12421q0;
            if (i2 > 0 && this.f12338J > i2) {
                this.f12338J = i2;
            }
            this.f12442x0 = this.f12439w0.k();
            this.f12340K = this.f12338J;
            this.f12329E0 = this.f12375b.f();
            this.f12339J0 = this.f12439w0.f();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public class a0 implements w5.b {
        public a0() {
        }

        @Override // com.beizi.fusion.w5.b
        public void a(String str) {
            try {
                if (BeiZiNewRewardVideoActivity.this.f12372a == null) {
                    return;
                }
                BeiZiNewRewardVideoActivity.this.f12372a.g(str);
                BeiZiNewRewardVideoActivity.this.f12372a.Q();
                BeiZiNewRewardVideoActivity.this.finish();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.w5.b
        public void a() {
            BeiZiNewRewardVideoActivity.this.f12327D0 = false;
            BeiZiNewRewardVideoActivity.this.u();
            BeiZiNewRewardVideoActivity.this.a0();
        }
    }

    public class c0 implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f12454a;

        public c0(ImageView imageView) {
            this.f12454a = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                BeiZiNewRewardVideoActivity.this.a(bitmap, this.f12454a);
                BeiZiNewRewardVideoActivity.this.a();
                BeiZiNewRewardVideoActivity.this.t();
                BeiZiNewRewardVideoActivity.this.l();
                if (BeiZiNewRewardVideoActivity.this.f12341K0 != null) {
                    BeiZiNewRewardVideoActivity.this.f12341K0.sendEmptyMessageDelayed(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, 1000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            BeiZiNewRewardVideoActivity.this.l();
        }
    }

    private void c(int i2) {
        rn rnVarZ;
        dj djVar = this.f12372a;
        if (djVar == null || (rnVarZ = djVar.z()) == null) {
            return;
        }
        String strX = this.f12372a.x();
        if (i2 == 25) {
            rnVarZ.b(this.f12378c, strX);
        } else if (i2 == 50) {
            rnVarZ.c(this.f12378c, strX);
        } else if (i2 == 75) {
            rnVarZ.d(this.f12378c, strX);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            this.f12427s0 = false;
            RelativeLayout relativeLayout = this.f12371Z0;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            u();
            a0();
            Z();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.beizi.fusion.y1.d r4, int r5, boolean r6, com.beizi.ad.internal.view.CustomRoundImageView r7, int r8, android.widget.TextView r9, android.widget.TextView r10) {
        /*
            r3 = this;
            if (r4 == 0) goto L35
            java.util.List r0 = r4.k()     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L35
            int r1 = r0.size()     // Catch: java.lang.Exception -> L2e
            if (r1 <= 0) goto L35
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L2e
            com.beizi.fusion.y1$a r0 = (com.beizi.fusion.y1.a) r0     // Catch: java.lang.Exception -> L2e
            java.lang.String r0 = r0.d()     // Catch: java.lang.Exception -> L2e
            com.beizi.fusion.nl r0 = r3.a(r0)     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L35
            java.lang.String r1 = r0.l()     // Catch: java.lang.Exception -> L2e
            java.lang.String r2 = r0.k()     // Catch: java.lang.Exception -> L2e
            if (r6 == 0) goto L30
            java.lang.String r6 = r0.i()     // Catch: java.lang.Exception -> L2e
            goto L38
        L2e:
            r4 = move-exception
            goto L42
        L30:
            java.lang.String r6 = r0.h()     // Catch: java.lang.Exception -> L2e
            goto L38
        L35:
            r1 = 0
            r6 = r1
            r2 = r6
        L38:
            r3.a(r7, r8, r6)     // Catch: java.lang.Exception -> L2e
            r3.a(r9, r10, r1, r2)     // Catch: java.lang.Exception -> L2e
            r3.a(r5, r4)     // Catch: java.lang.Exception -> L2e
            return
        L42:
            r4.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.a(com.beizi.fusion.y1$d, int, boolean, com.beizi.ad.internal.view.CustomRoundImageView, int, android.widget.TextView, android.widget.TextView):void");
    }

    private void b(TextView textView, ap apVar) {
        if (textView == null || apVar == null) {
            return;
        }
        try {
            String strC = apVar.c();
            if (this.f12415o0) {
                strC = apVar.a();
            }
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            textView.setText(strC);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public nl a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                String strE = jSONObject.has(g.a.f3271h) ? qg.e(jSONObject, g.a.f3271h) : null;
                String strE2 = jSONObject.has("desc") ? qg.e(jSONObject, "desc") : null;
                String strE3 = jSONObject.has("appIcon") ? qg.e(jSONObject, "appIcon") : null;
                String strE4 = jSONObject.has("lauchImageUrl") ? qg.e(jSONObject, "lauchImageUrl") : null;
                nl nlVar = new nl();
                nlVar.m(strE);
                nlVar.l(strE2);
                nlVar.j(strE3);
                nlVar.k(strE4);
                return nlVar;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    private void d() {
        try {
            oj ojVar = this.f12437v1;
            if (ojVar != null) {
                ojVar.b();
            }
            this.f12437v1 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CustomRoundImageView customRoundImageView, int i2, String str) {
        try {
            if (this.f12375b == null || customRoundImageView == null) {
                return;
            }
            if (TextUtils.isEmpty(str)) {
                customRoundImageView.setVisibility(8);
                return;
            }
            int iA = eq.a(this, i2);
            customRoundImageView.setVisibility(0);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) customRoundImageView.getLayoutParams();
            layoutParams.width = iA;
            layoutParams.height = iA;
            customRoundImageView.setLayoutParams(layoutParams);
            rf.a(this).a(str, new b0(customRoundImageView, iA));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TextView textView, TextView textView2, String str, String str2) {
        if (textView != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    textView.setVisibility(0);
                    textView.setText(str);
                } else {
                    textView.setVisibility(8);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (textView2 != null) {
            if (!TextUtils.isEmpty(str2)) {
                textView2.setVisibility(0);
                textView2.setText(str2);
            } else {
                textView2.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this, this.f12375b.I());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this, this.f12375b.h());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            if (this.f12322B != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 85);
                int iA = eq.a(this, 8.0f);
                layoutParams2.setMargins(0, 0, iA, iA);
                this.f12322B.addView(linearLayout, layoutParams2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i2) {
        try {
            ProgressBar progressBar = this.f12330F;
            if (progressBar == null) {
                return;
            }
            progressBar.setProgress(i2 / 1000);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity.a(int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):void");
    }

    private void a(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            if ("shake".equals(this.f12397i0)) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.mipmap.beizi_interaction_icon_shake);
                if (!TextUtils.isEmpty(this.f12394h0)) {
                    rf.a(this).b(this.f12394h0, new i(imageView));
                }
                vn vnVar = this.f12373a0;
                if (vnVar != null) {
                    vnVar.a(imageView);
                    return;
                }
                return;
            }
            if ("eulerAngle".equals(this.f12397i0)) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.mipmap.beizi_interaction_icon_euler_angle);
                if (!TextUtils.isEmpty(this.f12394h0)) {
                    rf.a(this).b(this.f12394h0, new j(imageView));
                }
                s7 s7Var = this.f12379c0;
                if (s7Var != null) {
                    s7Var.a(imageView);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        view.setOnTouchListener(new l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        double d2 = i3;
        double d3 = i2;
        if (d2 >= 0.25d * d3 && !this.f12430t0) {
            this.f12430t0 = true;
            c(25);
        }
        if (d2 >= 0.5d * d3 && !this.f12433u0) {
            this.f12433u0 = true;
            c(50);
        }
        if (d2 < d3 * 0.75d || this.f12436v0) {
            return;
        }
        this.f12436v0 = true;
        c(75);
    }

    private void a(FrameLayout frameLayout) {
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this, this.f12375b.I());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this, this.f12375b.h());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            if (frameLayout != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 85);
                layoutParams2.setMargins(0, 0, eq.a(this, 12.0f), eq.a(this, 30.0f));
                frameLayout.addView(linearLayout, layoutParams2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(TextView textView, ap apVar) {
        if (textView == null || apVar == null) {
            return;
        }
        try {
            String strB = apVar.b();
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            textView.setText(strB);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(y1.d dVar, int i2) {
        nj njVarR;
        List listK;
        nl nlVarA;
        try {
            rn rnVar = this.f12375b;
            if (rnVar != null && this.f12378c != null) {
                if (i2 == 7) {
                    njVarR = rnVar.C();
                } else {
                    njVarR = rnVar.R();
                }
                nj njVar = njVarR;
                if (njVar == null) {
                    return;
                }
                if (dVar != null && (listK = dVar.k()) != null && listK.size() > 0 && (nlVarA = a(((y1.a) listK.get(0)).d())) != null) {
                    String strI = nlVarA.i();
                    if (!TextUtils.isEmpty(strI)) {
                        njVar.c(strI);
                    }
                    String strL = nlVarA.l();
                    if (!TextUtils.isEmpty(strL)) {
                        njVar.d(strL);
                    }
                    String strK = nlVarA.k();
                    if (!TextUtils.isEmpty(strK)) {
                        njVar.b(strK);
                    }
                }
                oj ojVar = this.f12437v1;
                if (ojVar != null) {
                    ojVar.b();
                    this.f12437v1 = null;
                }
                this.f12437v1 = new oj();
                this.f12437v1.a(this.f12378c, wo.h(this), wo.g(this), njVar, new x(i2, dVar));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        try {
            int[] iArr = new int[2];
            int width = this.f12387f.getWidth();
            int height = this.f12387f.getHeight();
            this.f12387f.getLocationOnScreen(iArr);
            int[] iArrB = rl.b(width / 2, height / 2);
            a(i2, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, y1.d dVar) {
        if (i2 == 0 || dVar == null) {
            return;
        }
        try {
            dj djVar = this.f12372a;
            if (djVar == null) {
                return;
            }
            String strX = djVar.x();
            rn rnVar = this.f12375b;
            if (rnVar == null) {
                return;
            }
            rnVar.a(dVar, this.f12378c, strX);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap, ImageView imageView) {
        try {
            float fAbs = Math.abs(((float) ((wo.h(this) * 1.0d) / wo.g(this))) - ((float) ((bitmap.getWidth() * 1.0d) / bitmap.getHeight())));
            if (fAbs > 0.1f) {
                x3.c().e().execute(new y(bitmap, imageView));
            } else if (fAbs > 0.07d) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            imageView.setImageBitmap(bitmap);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(y1.d dVar, ImageView imageView) {
        un unVarX;
        try {
            if (!G() && !q1.i().v() && dVar != null && (unVarX = dVar.x()) != null) {
                vn vnVar = this.f12373a0;
                if (vnVar != null) {
                    vnVar.k();
                    this.f12373a0 = null;
                }
                int i2 = unVarX.i();
                double dK = unVarX.k();
                double dJ = unVarX.j();
                int iH = unVarX.h();
                int iB = unVarX.b();
                double d2 = unVarX.d();
                double dC = unVarX.c();
                int iA = unVarX.a();
                boolean z2 = true;
                if (unVarX.e() != 1 || iB <= 0 || d2 <= 0.0d || dC <= 0.0d) {
                    z2 = false;
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = new AdSpacesBean.BuyerBean.ShakeViewBean();
                if (this.f12440w1 && z2) {
                    shakeViewBean.setShakeCount(iB);
                    shakeViewBean.setShakeStartAmplitude(d2);
                    shakeViewBean.setShakeEndAmplitude(dC);
                    shakeViewBean.setRegulatoryAngle(iA);
                } else {
                    shakeViewBean.setShakeCount(i2);
                    shakeViewBean.setShakeStartAmplitude(dK);
                    shakeViewBean.setShakeEndAmplitude(dJ);
                    shakeViewBean.setRegulatoryAngle(iH);
                }
                vn vnVar2 = new vn(this, shakeViewBean, null, null);
                this.f12373a0 = vnVar2;
                vnVar2.a(new z(z2, iB, d2, dC, iA));
                this.f12397i0 = "shake";
                this.f12394h0 = this.f12373a0.c();
                a(imageView);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
