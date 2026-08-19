package com.beizi.ad.v2.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.view.CustomRoundImageView;
import com.beizi.fusion.R;
import com.beizi.fusion.aj;
import com.beizi.fusion.bp;
import com.beizi.fusion.eq;
import com.beizi.fusion.g5;
import com.beizi.fusion.h5;
import com.beizi.fusion.m8;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.nh;
import com.beizi.fusion.nj;
import com.beizi.fusion.nn;
import com.beizi.fusion.oj;
import com.beizi.fusion.q1;
import com.beizi.fusion.rf;
import com.beizi.fusion.rh;
import com.beizi.fusion.rl;
import com.beizi.fusion.rn;
import com.beizi.fusion.s7;
import com.beizi.fusion.tf;
import com.beizi.fusion.vn;
import com.beizi.fusion.w5;
import com.beizi.fusion.widget.BZLpView;
import com.beizi.fusion.wl;
import com.beizi.fusion.wo;
import com.beizi.fusion.yp;
import com.beizi.fusion.zk;
import com.beizi.fusion.zn;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class BeiZiNewInterstitialActivity extends Activity {

    /* renamed from: A, reason: collision with root package name */
    private View f12132A;

    /* renamed from: D, reason: collision with root package name */
    private boolean f12135D;

    /* renamed from: E, reason: collision with root package name */
    private MediaPlayer f12136E;

    /* renamed from: G, reason: collision with root package name */
    private int f12138G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f12139H;

    /* renamed from: I, reason: collision with root package name */
    private int f12140I;

    /* renamed from: J, reason: collision with root package name */
    private CountDownTimer f12141J;

    /* renamed from: L, reason: collision with root package name */
    private String f12143L;

    /* renamed from: M, reason: collision with root package name */
    private String f12144M;

    /* renamed from: N, reason: collision with root package name */
    private String f12145N;

    /* renamed from: O, reason: collision with root package name */
    private String f12146O;

    /* renamed from: P, reason: collision with root package name */
    private String f12147P;

    /* renamed from: Q, reason: collision with root package name */
    private AdSpacesBean.BuyerBean f12148Q;

    /* renamed from: R, reason: collision with root package name */
    private wl f12149R;

    /* renamed from: S, reason: collision with root package name */
    private vn f12150S;

    /* renamed from: T, reason: collision with root package name */
    private nn f12151T;

    /* renamed from: U, reason: collision with root package name */
    private s7 f12152U;

    /* renamed from: V, reason: collision with root package name */
    private m8 f12153V;

    /* renamed from: X, reason: collision with root package name */
    private Timer f12155X;

    /* renamed from: Y, reason: collision with root package name */
    private TimerTask f12156Y;

    /* renamed from: Z, reason: collision with root package name */
    private boolean f12157Z;

    /* renamed from: a, reason: collision with root package name */
    private aj f12158a;

    /* renamed from: b, reason: collision with root package name */
    private rn f12160b;

    /* renamed from: b0, reason: collision with root package name */
    private oj f12161b0;

    /* renamed from: c, reason: collision with root package name */
    private RelativeLayout f12162c;

    /* renamed from: c0, reason: collision with root package name */
    private g5 f12163c0;

    /* renamed from: d, reason: collision with root package name */
    private RelativeLayout f12164d;

    /* renamed from: d0, reason: collision with root package name */
    private int f12165d0;

    /* renamed from: e, reason: collision with root package name */
    private LinearLayout f12166e;

    /* renamed from: e0, reason: collision with root package name */
    private int f12167e0;

    /* renamed from: f, reason: collision with root package name */
    private LinearLayout f12168f;

    /* renamed from: f0, reason: collision with root package name */
    private String f12169f0;

    /* renamed from: g, reason: collision with root package name */
    private LinearLayout f12170g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f12172h;

    /* renamed from: h0, reason: collision with root package name */
    private BZLpView f12173h0;

    /* renamed from: i, reason: collision with root package name */
    private TextView f12174i;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f12175i0;

    /* renamed from: j, reason: collision with root package name */
    private TextView f12176j;

    /* renamed from: j0, reason: collision with root package name */
    private boolean f12177j0;

    /* renamed from: k, reason: collision with root package name */
    private TextView f12178k;

    /* renamed from: l, reason: collision with root package name */
    private TextView f12180l;

    /* renamed from: l0, reason: collision with root package name */
    private boolean f12181l0;

    /* renamed from: m, reason: collision with root package name */
    private RelativeLayout f12182m;

    /* renamed from: m0, reason: collision with root package name */
    private boolean f12183m0;

    /* renamed from: n, reason: collision with root package name */
    private RelativeLayout f12184n;

    /* renamed from: n0, reason: collision with root package name */
    private boolean f12185n0;

    /* renamed from: o, reason: collision with root package name */
    private RelativeLayout f12186o;

    /* renamed from: p, reason: collision with root package name */
    private RelativeLayout f12187p;

    /* renamed from: q, reason: collision with root package name */
    private RelativeLayout f12188q;

    /* renamed from: r, reason: collision with root package name */
    private RelativeLayout f12189r;

    /* renamed from: s, reason: collision with root package name */
    private FrameLayout f12190s;

    /* renamed from: t, reason: collision with root package name */
    private CustomRoundImageView f12191t;

    /* renamed from: u, reason: collision with root package name */
    private CustomRoundImageView f12192u;

    /* renamed from: v, reason: collision with root package name */
    private ImageView f12193v;

    /* renamed from: w, reason: collision with root package name */
    private ImageView f12194w;

    /* renamed from: x, reason: collision with root package name */
    private ImageView f12195x;

    /* renamed from: y, reason: collision with root package name */
    private VideoView f12196y;

    /* renamed from: z, reason: collision with root package name */
    private View f12197z;

    /* renamed from: B, reason: collision with root package name */
    private boolean f12133B = false;

    /* renamed from: C, reason: collision with root package name */
    private boolean f12134C = false;

    /* renamed from: F, reason: collision with root package name */
    private boolean f12137F = false;

    /* renamed from: K, reason: collision with root package name */
    private boolean f12142K = true;

    /* renamed from: W, reason: collision with root package name */
    private boolean f12154W = true;

    /* renamed from: a0, reason: collision with root package name */
    protected Handler f12159a0 = new k(Looper.getMainLooper());

    /* renamed from: g0, reason: collision with root package name */
    private ViewGroup f12171g0 = null;

    /* renamed from: k0, reason: collision with root package name */
    private boolean f12179k0 = true;

    public class a implements MediaPlayer.OnPreparedListener {
        public a() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                BeiZiNewInterstitialActivity.this.f12136E = mediaPlayer;
                nh.a("BeiZisAd", "onPrepared: 准备完成");
                if (BeiZiNewInterstitialActivity.this.f12134C) {
                    BeiZiNewInterstitialActivity.this.f12136E.setVolume(0.0f, 1.0f);
                } else {
                    BeiZiNewInterstitialActivity.this.f12136E.setVolume(0.0f, 0.0f);
                }
                if (BeiZiNewInterstitialActivity.this.f12196y != null) {
                    if (BeiZiNewInterstitialActivity.this.f12138G > 0) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            BeiZiNewInterstitialActivity.this.f12136E.seekTo(BeiZiNewInterstitialActivity.this.f12138G, 3);
                        }
                    } else if (Build.VERSION.SDK_INT >= 26) {
                        BeiZiNewInterstitialActivity.this.f12136E.seekTo(2L, 3);
                    }
                    if (BeiZiNewInterstitialActivity.this.f12187p != null && BeiZiNewInterstitialActivity.this.f12187p.getVisibility() == 8) {
                        BeiZiNewInterstitialActivity.this.f12196y.start();
                    }
                }
                if (BeiZiNewInterstitialActivity.this.f12154W) {
                    if (!BeiZiNewInterstitialActivity.this.f12139H || BeiZiNewInterstitialActivity.this.f12140I <= 0) {
                        int duration = mediaPlayer.getDuration() / 1000;
                        if (BeiZiNewInterstitialActivity.this.f12174i != null) {
                            BeiZiNewInterstitialActivity.this.f12174i.setText(String.valueOf(duration));
                        }
                    }
                    BeiZiNewInterstitialActivity.this.F();
                    BeiZiNewInterstitialActivity.this.a();
                    BeiZiNewInterstitialActivity.this.o();
                    BeiZiNewInterstitialActivity.this.k();
                    Handler handler = BeiZiNewInterstitialActivity.this.f12159a0;
                    if (handler != null) {
                        handler.sendEmptyMessageDelayed(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, 1000L);
                    }
                    BeiZiNewInterstitialActivity.this.B();
                }
                BeiZiNewInterstitialActivity.this.f12154W = false;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements MediaPlayer.OnErrorListener {
        public b() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
            try {
                yp ypVarC = yp.c();
                BeiZiNewInterstitialActivity beiZiNewInterstitialActivity = BeiZiNewInterstitialActivity.this;
                ypVarC.a(beiZiNewInterstitialActivity, beiZiNewInterstitialActivity.f12146O);
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                BeiZiNewInterstitialActivity.this.e();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (BeiZiNewInterstitialActivity.this.f12134C) {
                    BeiZiNewInterstitialActivity.this.f12193v.setImageResource(R.drawable.beizi_voice_off);
                    if (BeiZiNewInterstitialActivity.this.f12136E != null) {
                        BeiZiNewInterstitialActivity.this.f12136E.setVolume(0.0f, 0.0f);
                    }
                } else {
                    BeiZiNewInterstitialActivity.this.f12193v.setImageResource(R.drawable.beizi_voice_on);
                    if (BeiZiNewInterstitialActivity.this.f12136E != null) {
                        BeiZiNewInterstitialActivity.this.f12136E.setVolume(0.0f, 1.0f);
                    }
                }
                BeiZiNewInterstitialActivity.this.f12134C = !r3.f12134C;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f12202a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f12203b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f12204c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f12205d;

        public e(String str, String str2, String str3, String str4) {
            this.f12202a = str;
            this.f12203b = str2;
            this.f12204c = str3;
            this.f12205d = str4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent(BeiZiNewInterstitialActivity.this, (Class<?>) DownloadAppInfoActivity.class);
                intent.putExtra("title_content_key", this.f12202a);
                intent.putExtra("privacy_content_key", this.f12203b);
                intent.putExtra("permission_content_key", this.f12204c);
                intent.putExtra("intro_content_key", this.f12205d);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                BeiZiNewInterstitialActivity.this.startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements wl.c {
        public f() {
        }

        @Override // com.beizi.fusion.wl.c
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            nh.a("BeiZisAd", "handleRegionalClickViewContent click");
            BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
        }
    }

    public class g implements vn.f {
        public g() {
        }

        @Override // com.beizi.fusion.vn.f
        public void a() {
            nh.a("BeiZisAd", "handleShakeViewContent click");
            BeiZiNewInterstitialActivity.this.d();
            BeiZiNewInterstitialActivity.this.a("", "", "", "", "", "", "", "", 2);
            BeiZiNewInterstitialActivity.this.C();
        }
    }

    public class h implements nn.d {
        public h() {
        }

        @Override // com.beizi.fusion.nn.d
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            if (BeiZiNewInterstitialActivity.this.f12153V == null || !BeiZiNewInterstitialActivity.this.f12153V.a()) {
                return;
            }
            nh.a("BeiZisAd", "handleScrollViewContent scroll click");
            BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
        }

        @Override // com.beizi.fusion.nn.d
        public void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            nh.a("BeiZisAd", "handleScrollViewContent scroll");
            BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
        }
    }

    public class i implements s7.e {
        public i() {
        }

        @Override // com.beizi.fusion.s7.e
        public void a() {
            nh.a("BeiZisAd", "handleEulerAngleViewContent click");
            BeiZiNewInterstitialActivity.this.a("", "", "", "", "", "", "", "", 2);
        }
    }

    public class j implements m8.b {
        public j() {
        }

        @Override // com.beizi.fusion.m8.b
        public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
            nh.a("BeiZisAd", "handleFullScreenClickContent click");
            BeiZiNewInterstitialActivity.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
        }
    }

    public class k extends Handler {
        public k(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 10001) {
                BeiZiNewInterstitialActivity.this.l();
                return;
            }
            if (i2 != 10010) {
                return;
            }
            try {
                Handler handler = BeiZiNewInterstitialActivity.this.f12159a0;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK, 1000L);
                }
                if (BeiZiNewInterstitialActivity.this.f12135D && BeiZiNewInterstitialActivity.this.f12196y != null && BeiZiNewInterstitialActivity.this.f12196y.isPlaying()) {
                    BeiZiNewInterstitialActivity.this.a(BeiZiNewInterstitialActivity.this.f12196y.getDuration(), BeiZiNewInterstitialActivity.this.f12196y.getCurrentPosition());
                }
            } catch (Exception unused) {
            }
        }
    }

    public class l extends TimerTask {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int duration;
                try {
                    if (BeiZiNewInterstitialActivity.this.f12174i == null || (duration = (BeiZiNewInterstitialActivity.this.f12196y.getDuration() - BeiZiNewInterstitialActivity.this.f12196y.getCurrentPosition()) / 1000) <= 0) {
                        return;
                    }
                    BeiZiNewInterstitialActivity.this.f12174i.setText(String.valueOf(duration));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public l() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                if (BeiZiNewInterstitialActivity.this.f12196y == null || !BeiZiNewInterstitialActivity.this.f12196y.isPlaying()) {
                    return;
                }
                BeiZiNewInterstitialActivity.this.runOnUiThread(new a());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class m implements oj.e {
        public m() {
        }

        @Override // com.beizi.fusion.oj.e
        public void a() {
            BeiZiNewInterstitialActivity.this.l();
        }

        @Override // com.beizi.fusion.oj.e
        public void b() {
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BeiZiNewInterstitialActivity.this.f12137F) {
                return;
            }
            BeiZiNewInterstitialActivity.this.f12167e0 = 2;
            BeiZiNewInterstitialActivity.this.l();
            BeiZiNewInterstitialActivity.this.C();
        }
    }

    public class o implements BZLpView.d {
        public o() {
        }

        @Override // com.beizi.fusion.widget.BZLpView.d
        public void onDetachedFromWindow() {
            BeiZiNewInterstitialActivity.this.x();
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (BeiZiNewInterstitialActivity.this.f12179k0) {
                    BeiZiNewInterstitialActivity.this.z();
                    BeiZiNewInterstitialActivity.this.x();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class q extends CountDownTimer {
        public q(long j2, long j3) {
            super(j2, j3);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            try {
                nh.a("BeiZisAd", "onFinish");
                if (!BeiZiNewInterstitialActivity.this.f12139H || BeiZiNewInterstitialActivity.this.f12140I <= 0) {
                    return;
                }
                BeiZiNewInterstitialActivity.this.e();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j2) {
            try {
                int i2 = (int) ((j2 / 1000) + 1);
                if (BeiZiNewInterstitialActivity.this.f12174i != null) {
                    BeiZiNewInterstitialActivity.this.f12174i.setText(String.valueOf(i2));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class s implements View.OnClickListener {
        public s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiNewInterstitialActivity.this.M();
        }
    }

    public class u implements rf.f {
        public u() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                if (BeiZiNewInterstitialActivity.this.f12192u != null) {
                    BeiZiNewInterstitialActivity.this.f12192u.setImageBitmap(bitmap);
                }
                BeiZiNewInterstitialActivity.this.f12192u.setRectRadius(eq.a(BeiZiNewInterstitialActivity.this, 6.0f));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class v implements View.OnClickListener {
        public v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (BeiZiNewInterstitialActivity.this.f12187p != null) {
                    BeiZiNewInterstitialActivity.this.f12187p.setVisibility(8);
                }
                if (BeiZiNewInterstitialActivity.this.f12196y != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        BeiZiNewInterstitialActivity.this.f12136E.seekTo(0L, 3);
                    }
                    BeiZiNewInterstitialActivity.this.f12196y.start();
                }
                int duration = BeiZiNewInterstitialActivity.this.f12136E.getDuration() / 1000;
                if (BeiZiNewInterstitialActivity.this.f12174i != null) {
                    BeiZiNewInterstitialActivity.this.f12174i.setText(String.valueOf(duration));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class x implements MediaPlayer.OnCompletionListener {
        public x() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            nh.a("BeiZisAd", "onCompletion: 播放完成");
            try {
                BeiZiNewInterstitialActivity.this.f12138G = 0;
                if (BeiZiNewInterstitialActivity.this.f12187p != null) {
                    BeiZiNewInterstitialActivity.this.f12187p.setVisibility(0);
                }
                if (!BeiZiNewInterstitialActivity.this.f12139H || BeiZiNewInterstitialActivity.this.f12140I <= 0) {
                    if (BeiZiNewInterstitialActivity.this.f12139H) {
                        BeiZiNewInterstitialActivity.this.e();
                    } else if (BeiZiNewInterstitialActivity.this.f12174i != null) {
                        BeiZiNewInterstitialActivity.this.f12174i.setText("0");
                    }
                }
                BeiZiNewInterstitialActivity.this.A();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void G() {
        try {
            if (this.f12160b == null) {
                return;
            }
            if (TextUtils.isEmpty(this.f12143L)) {
                View view = this.f12197z;
                if (view != null) {
                    view.setVisibility(8);
                }
                CustomRoundImageView customRoundImageView = this.f12192u;
                if (customRoundImageView != null) {
                    customRoundImageView.setVisibility(8);
                    return;
                }
                return;
            }
            int iA = eq.a(this, 20.0f);
            CustomRoundImageView customRoundImageView2 = this.f12192u;
            if (customRoundImageView2 != null) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) customRoundImageView2.getLayoutParams();
                int i2 = iA * 2;
                layoutParams.width = i2;
                layoutParams.height = i2;
                this.f12192u.setLayoutParams(layoutParams);
                this.f12192u.setVisibility(0);
            }
            View view2 = this.f12197z;
            if (view2 != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view2.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = iA;
                this.f12197z.setLayoutParams(layoutParams2);
                this.f12197z.setVisibility(0);
            }
            rf.a(this).a(this.f12143L, new u());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void H() {
        RelativeLayout relativeLayout = this.f12184n;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new c());
        }
        ImageView imageView = this.f12193v;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
    }

    private void I() {
        AdSpacesBean.ComplainBean complain;
        TextView textView;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f12148Q;
            if (buyerBean == null || (complain = buyerBean.getComplain()) == null || complain.getOpen() != 1 || (textView = this.f12172h) == null) {
                return;
            }
            textView.setVisibility(0);
            this.f12172h.setOnClickListener(new s());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void J() {
        try {
            rn rnVar = this.f12160b;
            if (rnVar == null) {
                return;
            }
            int iF = rnVar.F();
            if (iF != 2 && iF != 5) {
                return;
            }
            this.f12176j.setVisibility(0);
            String strJ = this.f12160b.j();
            String strK = this.f12160b.k();
            String strQ = this.f12160b.q();
            String strO = this.f12160b.o();
            String strN = !TextUtils.isEmpty(strO) ? strO : this.f12160b.n();
            String strP = this.f12160b.p();
            String strR = this.f12160b.r();
            this.f12176j.setText(Html.fromHtml("应用名称：" + strJ + " | 开发者：" + strK + " | 应用版本：" + strQ + " | <u>权限详情</u> | <u>隐私协议</u> | <u>功能介绍</u>"));
            this.f12176j.setOnClickListener(new e(strJ, strP, strN, strR));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void K() {
        try {
            if (!this.f12135D && this.f12191t != null && !TextUtils.isEmpty(this.f12146O)) {
                this.f12191t.setVisibility(0);
                rf.a(this).a(this.f12146O, new r());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void L() {
        try {
            if (this.f12135D && this.f12196y != null && !TextUtils.isEmpty(this.f12146O)) {
                RelativeLayout relativeLayout = this.f12186o;
                if (relativeLayout != null) {
                    zn.a(relativeLayout, "#000000", 0, (String) null, eq.a(this, 6.0f));
                }
                ImageView imageView = this.f12193v;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    if (this.f12134C) {
                        this.f12193v.setImageResource(R.drawable.beizi_voice_on);
                    } else {
                        this.f12193v.setImageResource(R.drawable.beizi_voice_off);
                    }
                }
                RelativeLayout relativeLayout2 = this.f12187p;
                if (relativeLayout2 != null) {
                    zn.a(relativeLayout2, "#66303030", 0, (String) null, eq.a(this, 6.0f));
                    this.f12187p.setOnClickListener(new v());
                }
                if (this.f12195x != null) {
                    int iA = eq.a(this, 54.0f);
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f12195x.getLayoutParams();
                    layoutParams.width = iA;
                    layoutParams.height = iA;
                    this.f12195x.setLayoutParams(layoutParams);
                }
                this.f12196y.setVisibility(0);
                yp.c().a(this, this.f12146O, new w());
                this.f12196y.setOnCompletionListener(new x());
                this.f12196y.setOnPreparedListener(new a());
                this.f12196y.setOnErrorListener(new b());
                if (!this.f12139H || this.f12140I <= 0) {
                    P();
                } else {
                    O();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        try {
            p();
            w5.a aVar = new w5.a(this);
            aVar.a(new t());
            aVar.a().show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void N() {
        nj njVarR;
        try {
            rn rnVar = this.f12160b;
            if (rnVar != null && this.f12162c != null && (njVarR = rnVar.R()) != null) {
                this.f12161b0 = new oj();
                this.f12161b0.a(this.f12162c, wo.h(this), wo.g(this), njVarR, new m());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() throws NumberFormatException {
        try {
            this.f12141J = null;
            int i2 = this.f12140I;
            TextView textView = this.f12174i;
            if (textView != null) {
                try {
                    String string = textView.getText().toString();
                    if (!TextUtils.isEmpty(string) && !"0".equals(string)) {
                        i2 = Integer.parseInt(string);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                this.f12174i.setText(String.valueOf(i2));
            }
            try {
                q qVar = new q(i2 * 1000, 1000L);
                this.f12141J = qVar;
                qVar.start();
            } catch (Exception e3) {
                e = e3;
                e.printStackTrace();
            }
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
        }
    }

    public void P() {
        try {
            if (this.f12155X == null) {
                this.f12155X = new Timer();
            }
            if (this.f12156Y == null) {
                this.f12156Y = new l();
            }
            this.f12155X.scheduleAtFixedRate(this.f12156Y, 0L, 1000L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_beizi_interstitial);
            g();
            i();
            D();
            I();
            G();
            K();
            L();
            j();
            E();
            H();
            J();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            wl wlVar = this.f12149R;
            if (wlVar != null) {
                wlVar.b();
            }
            this.f12149R = null;
            vn vnVar = this.f12150S;
            if (vnVar != null) {
                vnVar.k();
            }
            this.f12150S = null;
            s7 s7Var = this.f12152U;
            if (s7Var != null) {
                s7Var.j();
            }
            this.f12152U = null;
            nn nnVar = this.f12151T;
            if (nnVar != null) {
                nnVar.b();
            }
            this.f12151T = null;
            m8 m8Var = this.f12153V;
            if (m8Var != null) {
                m8Var.b();
            }
            this.f12153V = null;
            Timer timer = this.f12155X;
            if (timer != null) {
                timer.cancel();
            }
            this.f12155X = null;
            TimerTask timerTask = this.f12156Y;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this.f12156Y = null;
            Handler handler = this.f12159a0;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f12159a0 = null;
            f();
            z();
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
        p();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        rn rnVarZ;
        try {
            aj ajVar = this.f12158a;
            if (ajVar == null || (rnVarZ = ajVar.z()) == null) {
                return;
            }
            rnVarZ.a(this.f12182m, this.f12158a.x());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        rn rnVarZ;
        try {
            aj ajVar = this.f12158a;
            if (ajVar == null || (rnVarZ = ajVar.z()) == null) {
                return;
            }
            rnVarZ.e(this.f12182m, this.f12158a.x());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void D() {
        RelativeLayout.LayoutParams layoutParams;
        double d2;
        double d3;
        RelativeLayout.LayoutParams layoutParams2;
        LinearLayout.LayoutParams layoutParams3;
        try {
            int iA = eq.a(this, 10.0f);
            zn.a(this.f12166e, "#FFFFFF", 0, (String) null, iA);
            int iA2 = eq.a(this, 49.0f);
            int iA3 = eq.a(this, 19.0f);
            int iA4 = eq.a(this, 8.0f);
            int iA5 = eq.a(this, 52.0f);
            TextView textView = this.f12172h;
            if (textView != null) {
                zn.a(textView, "#66303030", 0, (String) null, iA);
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f12172h.getLayoutParams();
                layoutParams4.width = iA2;
                layoutParams4.height = iA3;
                layoutParams4.setMargins(iA4, iA4, 0, 0);
                layoutParams4.addRule(17);
                this.f12172h.setLayoutParams(layoutParams4);
            }
            ImageView imageView = this.f12193v;
            if (imageView != null && this.f12135D) {
                RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams5.width = iA3;
                layoutParams5.height = iA3;
                layoutParams5.setMargins(0, iA4, iA, 0);
                this.f12193v.setLayoutParams(layoutParams5);
            }
            LinearLayout linearLayout = this.f12168f;
            if (linearLayout != null) {
                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                layoutParams6.width = iA5;
                layoutParams6.height = iA3;
                layoutParams6.setMargins(0, iA4, iA4, 0);
                this.f12168f.setLayoutParams(layoutParams6);
                zn.a(this.f12168f, "#66303030", 0, (String) null, iA);
            }
            TextView textView2 = this.f12174i;
            if (textView2 != null) {
                LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) textView2.getLayoutParams();
                layoutParams7.width = iA3;
                layoutParams7.height = iA3;
                this.f12174i.setLayoutParams(layoutParams7);
                zn.a(this.f12174i, "#66303030", 0, (String) null, iA * 2);
            }
            ImageView imageView2 = this.f12194w;
            if (imageView2 != null) {
                RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
                layoutParams8.width = iA3;
                layoutParams8.height = iA3;
                layoutParams8.setMargins(0, iA4, iA4, 0);
                this.f12194w.setLayoutParams(layoutParams8);
            }
            int iH = wo.h(this);
            int iG = wo.g(this);
            double d4 = iH;
            int i2 = (int) (0.65d * d4);
            int iA6 = eq.a(this, 5.0f);
            if (this.f12133B) {
                i2 = (int) (d4 * 0.85d);
                iA6 = eq.a(this, 10.0f);
                this.f12189r.setVisibility(0);
                RelativeLayout relativeLayout = this.f12189r;
                if (relativeLayout != null && (layoutParams3 = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams()) != null) {
                    layoutParams3.width = i2 - (iA6 * 3);
                    layoutParams3.height = -2;
                    if (!TextUtils.isEmpty(this.f12143L) && TextUtils.isEmpty(this.f12144M) && TextUtils.isEmpty(this.f12145N)) {
                        layoutParams3.setMargins(0, iA6, 0, eq.a(this, 5.0f));
                    } else {
                        layoutParams3.setMargins(0, (int) (iA6 * 1.5d), 0, eq.a(this, 5.0f));
                    }
                    this.f12189r.setLayoutParams(layoutParams3);
                }
            } else {
                this.f12188q.setVisibility(0);
                RelativeLayout relativeLayout2 = this.f12188q;
                if (relativeLayout2 != null && (layoutParams = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams()) != null) {
                    layoutParams.width = i2;
                    layoutParams.height = -2;
                    layoutParams.setMargins(0, iA6 * 3, 0, 0);
                    this.f12188q.setLayoutParams(layoutParams);
                }
            }
            LinearLayout linearLayout2 = this.f12166e;
            if (linearLayout2 != null && (layoutParams2 = (RelativeLayout.LayoutParams) linearLayout2.getLayoutParams()) != null) {
                layoutParams2.width = i2;
                layoutParams2.height = -2;
                this.f12166e.setLayoutParams(layoutParams2);
                this.f12166e.setPadding(iA6, iA6, iA6, iA6);
            }
            RelativeLayout relativeLayout3 = this.f12186o;
            if (relativeLayout3 != null) {
                int i3 = i2 - (iA6 * 2);
                if (this.f12133B) {
                    d2 = i3;
                    d3 = 0.56d;
                } else {
                    d2 = i3;
                    d3 = 1.78d;
                }
                int i4 = (int) (d2 * d3);
                double d5 = iG;
                if (i4 > 0.7d * d5) {
                    i4 = (int) (d5 * 0.5d);
                }
                RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) relativeLayout3.getLayoutParams();
                if (layoutParams9 != null) {
                    layoutParams9.width = i3;
                    layoutParams9.height = i4;
                    this.f12186o.setLayoutParams(layoutParams9);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void E() {
        try {
            if (TextUtils.isEmpty(this.f12144M) && TextUtils.isEmpty(this.f12145N)) {
                this.f12170g.setVisibility(8);
            } else {
                this.f12170g.setVisibility(0);
            }
            if (this.f12178k != null) {
                if (TextUtils.isEmpty(this.f12144M)) {
                    this.f12178k.setVisibility(8);
                } else {
                    this.f12178k.setVisibility(0);
                    this.f12178k.setText(this.f12144M);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f12178k.getLayoutParams();
                    if (layoutParams != null) {
                        if (TextUtils.isEmpty(this.f12145N)) {
                            layoutParams.setMargins(0, eq.a(this, 13.0f), 0, 0);
                        } else {
                            layoutParams.setMargins(0, eq.a(this, 10.0f), 0, 0);
                        }
                        this.f12178k.setLayoutParams(layoutParams);
                    }
                    this.f12178k.setPadding(0, 0, 0, 0);
                }
            }
            if (this.f12180l != null) {
                if (TextUtils.isEmpty(this.f12145N)) {
                    this.f12180l.setVisibility(8);
                } else {
                    this.f12180l.setVisibility(0);
                    this.f12180l.setText(this.f12145N);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f12180l.getLayoutParams();
                    if (TextUtils.isEmpty(this.f12144M)) {
                        layoutParams2.setMargins(0, eq.a(this, 13.0f), 0, 0);
                    } else {
                        layoutParams2.setMargins(0, eq.a(this, 8.0f), 0, 0);
                    }
                    if (layoutParams2 != null) {
                        this.f12180l.setLayoutParams(layoutParams2);
                    }
                    this.f12180l.setPadding(0, 0, 0, 0);
                }
            }
            if (this.f12133B) {
                View view = this.f12132A;
                if (view != null) {
                    view.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.f12132A != null) {
                if (TextUtils.isEmpty(this.f12144M) && TextUtils.isEmpty(this.f12145N) && TextUtils.isEmpty(this.f12143L)) {
                    this.f12132A.setVisibility(8);
                    return;
                }
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f12132A.getLayoutParams();
                layoutParams3.width = -2;
                if (TextUtils.isEmpty(this.f12144M) && TextUtils.isEmpty(this.f12145N) && !TextUtils.isEmpty(this.f12143L)) {
                    layoutParams3.height = eq.a(this, 5.0f);
                } else {
                    layoutParams3.height = eq.a(this, 10.0f);
                }
                this.f12132A.setLayoutParams(layoutParams3);
                this.f12132A.setVisibility(0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        try {
            if (this.f12196y == null) {
                return;
            }
            int width = this.f12186o.getWidth();
            int height = this.f12186o.getHeight();
            this.f12196y.measure(0, 0);
            int measuredWidth = this.f12196y.getMeasuredWidth();
            int measuredHeight = this.f12196y.getMeasuredHeight();
            float f2 = (float) ((measuredWidth * 1.0d) / measuredHeight);
            ViewGroup.LayoutParams layoutParams = this.f12196y.getLayoutParams();
            int i2 = -2;
            int i3 = -1;
            if (measuredWidth < width && (measuredHeight > height || width - measuredWidth > height - measuredHeight)) {
                i3 = -2;
                i2 = -1;
            }
            if (layoutParams != null) {
                layoutParams.width = i3;
                layoutParams.height = i2;
                this.f12196y.setLayoutParams(layoutParams);
            }
            if (Math.abs((this.f12133B ? 1.78f : 0.56f) - f2) < 0.0f || Math.abs(r0) > 0.15d) {
                return;
            }
            this.f12196y.setOutlineProvider(new bp(eq.a(this, 6.0f)));
            this.f12196y.setClipToOutline(true);
            RelativeLayout relativeLayout = this.f12186o;
            if (relativeLayout != null) {
                zn.a(relativeLayout, "#FFFFFF", 0, (String) null, eq.a(this, 6.0f));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void c() {
        Handler handler;
        try {
            int iH = h();
            if (iH > 0 && (handler = this.f12159a0) != null) {
                handler.postDelayed(new n(), iH);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            g5 g5Var = this.f12163c0;
            if (g5Var != null && this.f12150S != null && this.f12167e0 == 1) {
                double dB = g5Var.b();
                double dA = this.f12163c0.a();
                double d2 = this.f12150S.d();
                double dE = this.f12150S.e();
                if (dA > 0.0d && d2 > 0.0d && d2 < dA) {
                    this.f12167e0 = 2;
                } else {
                    if (dB <= 0.0d || dE <= 0.0d || dE >= dB) {
                        return;
                    }
                    this.f12167e0 = 2;
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        CountDownTimer countDownTimer = this.f12141J;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f12141J = null;
        }
        aj ajVar = this.f12158a;
        if (ajVar != null) {
            ajVar.O();
        }
        finish();
    }

    private void f() {
        try {
            oj ojVar = this.f12161b0;
            if (ojVar != null) {
                ojVar.b();
            }
            this.f12161b0 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void g() {
        this.f12162c = (RelativeLayout) findViewById(R.id.beizi_interstitial_root_container_rl);
        this.f12182m = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_content_rl);
        this.f12166e = (LinearLayout) findViewById(R.id.beizi_interstitial_ad_container_ll);
        this.f12164d = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_content_container_rl);
        this.f12172h = (TextView) findViewById(R.id.beizi_interstitial_ad_complain_tv);
        this.f12184n = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_close_container_rl);
        this.f12168f = (LinearLayout) findViewById(R.id.beizi_interstitial_ad_close_text_container_ll);
        this.f12194w = (ImageView) findViewById(R.id.beizi_interstitial_ad_close_iv);
        this.f12174i = (TextView) findViewById(R.id.beizi_interstitial_ad_countdown_tv);
        this.f12186o = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_material_container_rl);
        this.f12187p = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_video_replay_container_rl);
        this.f12195x = (ImageView) findViewById(R.id.beizi_interstitial_ad_video_replay_iv);
        this.f12190s = (FrameLayout) findViewById(R.id.beizi_interstitial_ad_logo_container_fl);
        this.f12191t = (CustomRoundImageView) findViewById(R.id.beizi_interstitial_ad_img_iv);
        this.f12196y = (VideoView) findViewById(R.id.beizi_interstitial_ad_video_vv);
        this.f12192u = (CustomRoundImageView) findViewById(R.id.beizi_interstitial_ad_app_icon_iv);
        this.f12197z = findViewById(R.id.beizi_interstitial_ad_divide_view);
        this.f12193v = (ImageView) findViewById(R.id.beizi_interstitial_ad_voice_iv);
        this.f12170g = (LinearLayout) findViewById(R.id.beizi_interstitial_ad_title_container_ll);
        this.f12178k = (TextView) findViewById(R.id.beizi_interstitial_ad_title_tv);
        this.f12180l = (TextView) findViewById(R.id.beizi_interstitial_ad_subtitle_tv);
        this.f12132A = findViewById(R.id.beizi_interstitial_ad_title_divider_view);
        this.f12189r = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_interaction_container_landscape_rl);
        this.f12188q = (RelativeLayout) findViewById(R.id.beizi_interstitial_ad_interaction_container_portrait_rl);
        this.f12176j = (TextView) findViewById(R.id.beizi_interstitial_ad_app_download_info_tv);
    }

    private void i() {
        try {
            aj ajVar = aj.f12644Q;
            this.f12158a = ajVar;
            this.f12148Q = ajVar.g();
            this.f12157Z = this.f12158a.C();
            AdSpacesBean.BuyerBean buyerBean = this.f12148Q;
            if (buyerBean == null) {
                return;
            }
            if (buyerBean.getTemplate() == 1) {
                this.f12133B = true;
            } else {
                this.f12133B = false;
            }
            rn rnVarZ = this.f12158a.z();
            this.f12160b = rnVarZ;
            if (rnVarZ == null) {
                return;
            }
            this.f12147P = rnVarZ.c();
            boolean zP0 = this.f12160b.p0();
            this.f12135D = zP0;
            if (zP0) {
                this.f12146O = this.f12160b.f0();
            } else {
                this.f12146O = this.f12160b.E();
            }
            this.f12143L = this.f12160b.m();
            this.f12139H = this.f12160b.h0();
            this.f12140I = this.f12160b.L();
            this.f12144M = this.f12160b.c0();
            this.f12145N = this.f12160b.Z();
            this.f12134C = !this.f12160b.m0();
            g5 g5VarW = this.f12160b.w();
            this.f12163c0 = g5VarW;
            if (g5VarW != null) {
                int iC = g5VarW.c();
                this.f12165d0 = iC;
                if (iC != 0) {
                    this.f12167e0 = this.f12163c0.f() + 1;
                }
            }
            this.f12169f0 = this.f12160b.G();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void j() {
        try {
            if (!w()) {
                this.f12168f.setVisibility(8);
                this.f12194w.setVisibility(0);
            } else {
                this.f12168f.setVisibility(0);
                this.f12194w.setVisibility(8);
                this.f12168f.measure(0, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        rn rnVarZ;
        try {
            aj ajVar = this.f12158a;
            if (ajVar == null || (rnVarZ = ajVar.z()) == null) {
                return;
            }
            rnVarZ.f(this.f12166e, this.f12158a.x());
            this.f12158a.P();
            N();
            y();
            c();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        int width;
        int height;
        try {
            if (this.f12137F) {
                return;
            }
            int[] iArr = new int[2];
            if (this.f12133B) {
                width = this.f12189r.getWidth();
                height = this.f12189r.getHeight();
                this.f12189r.getLocationOnScreen(iArr);
            } else {
                width = this.f12188q.getWidth();
                height = this.f12188q.getHeight();
                this.f12188q.getLocationOnScreen(iArr);
            }
            int[] iArrB = rl.b(width / 2, height / 2);
            a(String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void m() {
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule;
        try {
            if (this.f12148Q != null && !u() && !q1.i().v() && (eulerAngleRule = this.f12148Q.getEulerAngleRule()) != null) {
                s7 s7Var = new s7(this, eulerAngleRule, this.f12148Q.getSpaceId(), this.f12147P);
                this.f12152U = s7Var;
                if (this.f12133B) {
                    s7Var.b(this.f12189r);
                } else {
                    s7Var.b(this.f12188q);
                }
                this.f12152U.a(new i());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void n() {
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f12148Q;
            if (buyerBean == null || (fullScreenClick = buyerBean.getFullScreenClick()) == null) {
                return;
            }
            m8 m8Var = new m8(this, fullScreenClick, this.f12147P);
            this.f12153V = m8Var;
            m8Var.a(this.f12182m, new j());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            if (this.f12148Q == null) {
                return;
            }
            n();
            r();
            t();
            s();
            m();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void p() {
        try {
            if (this.f12196y != null && this.f12135D) {
                if (this.f12187p.getVisibility() == 0) {
                    this.f12138G = 0;
                } else {
                    int currentPosition = this.f12196y.getCurrentPosition();
                    if (currentPosition > 0) {
                        this.f12138G = currentPosition;
                    }
                }
                this.f12196y.pause();
            }
            vn vnVar = this.f12150S;
            if (vnVar != null) {
                vnVar.l();
            }
            s7 s7Var = this.f12152U;
            if (s7Var != null) {
                s7Var.k();
            }
            CountDownTimer countDownTimer = this.f12141J;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.f12141J = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            VideoView videoView = this.f12196y;
            if (videoView != null && this.f12135D && !videoView.isPlaying()) {
                this.f12196y.resume();
            }
            vn vnVar = this.f12150S;
            if (vnVar != null) {
                vnVar.m();
            }
            s7 s7Var = this.f12152U;
            if (s7Var != null) {
                s7Var.l();
            }
            if (!this.f12142K && this.f12139H && this.f12140I > 0) {
                O();
            }
            this.f12142K = false;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void r() {
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f12148Q;
            if (buyerBean == null) {
                return;
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = buyerBean.getRegionalClickView();
            if (regionalClickView == null) {
                regionalClickView = new AdSpacesBean.BuyerBean.RegionalClickViewBean();
                regionalClickView.setBackgroundAlpha(1.0d);
                regionalClickView.setBackgroundColor("#3976FF");
                regionalClickView.setTitle("点击跳转网页或第三方应用");
                regionalClickView.setTitleColor("#FFFFFF");
            }
            wl wlVar = new wl(this, regionalClickView, this.f12147P, this.f12157Z);
            this.f12149R = wlVar;
            if (this.f12133B) {
                wlVar.b(this.f12189r);
            } else {
                wlVar.b(this.f12188q);
            }
            this.f12149R.a(new f());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void s() {
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClick;
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f12148Q;
            if (buyerBean == null || (scrollClick = buyerBean.getScrollClick()) == null) {
                return;
            }
            nn nnVar = new nn(this, scrollClick, this.f12148Q.getSpaceId(), this.f12147P);
            this.f12151T = nnVar;
            nnVar.a(v());
            if (this.f12133B) {
                this.f12151T.b(this.f12189r);
            } else {
                this.f12151T.b(this.f12188q);
            }
            this.f12151T.a(this.f12182m, new h());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void t() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (this.f12148Q != null && !u() && !q1.i().v() && (shakeView = this.f12148Q.getShakeView()) != null) {
                vn vnVar = new vn(this, shakeView, this.f12148Q.getSpaceId(), this.f12147P);
                this.f12150S = vnVar;
                if (this.f12133B) {
                    vnVar.d(this.f12189r);
                } else {
                    vnVar.d(this.f12188q);
                }
                g5 g5Var = this.f12163c0;
                if (g5Var != null) {
                    this.f12150S.a(g5Var.b());
                }
                this.f12150S.a(new g());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean v() {
        zk zkVarS;
        try {
            rn rnVar = this.f12160b;
            if (rnVar == null || (zkVarS = rnVar.S()) == null) {
                return false;
            }
            return zkVarS.d() == 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean w() {
        if (this.f12135D) {
            return true;
        }
        return this.f12139H && this.f12140I > 0;
    }

    private void y() {
        zk zkVarS;
        int iA;
        rn rnVar = this.f12160b;
        if (rnVar == null || this.f12159a0 == null) {
            return;
        }
        try {
            if (!this.f12137F && (zkVarS = rnVar.S()) != null && (iA = zkVarS.a()) > 0) {
                this.f12159a0.sendEmptyMessageDelayed(10001, iA);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        BZLpView bZLpView;
        BZLpView bZLpView2;
        try {
            ViewGroup viewGroup = this.f12171g0;
            if (viewGroup != null && (bZLpView2 = this.f12173h0) != null) {
                viewGroup.removeView(bZLpView2);
            }
            this.f12171g0 = null;
            RelativeLayout relativeLayout = this.f12164d;
            if (relativeLayout != null && (bZLpView = this.f12173h0) != null) {
                relativeLayout.removeView(bZLpView);
            }
            this.f12173h0 = null;
        } catch (Throwable unused) {
        }
    }

    public void C() {
        try {
            g5 g5Var = this.f12163c0;
            if (g5Var != null) {
                int iC = g5Var.c();
                this.f12165d0 = iC;
                if (iC != 0) {
                    this.f12167e0 = this.f12163c0.f() + 1;
                } else {
                    this.f12167e0 = 0;
                }
            } else {
                this.f12167e0 = 0;
            }
            rn rnVar = this.f12160b;
            if (rnVar != null) {
                rnVar.b(this.f12167e0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public int h() {
        rh rhVarE;
        try {
            g5 g5Var = this.f12163c0;
            if (g5Var == null || (rhVarE = g5Var.e()) == null) {
                return 0;
            }
            int iA = rhVarE.a();
            if (iA > 0) {
                if (rhVarE.e() != 2) {
                    return 0;
                }
            }
            return iA;
        } catch (Exception unused) {
            return 0;
        }
    }

    public boolean u() {
        try {
            g5 g5Var = this.f12163c0;
            if (g5Var != null) {
                if (g5Var.d() == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public void x() {
        try {
            if (!this.f12177j0) {
                q();
                return;
            }
            vn vnVar = this.f12150S;
            if (vnVar != null) {
                vnVar.m();
                this.f12150S.a(1.9d, 1.5d);
            }
            if (this.f12152U != null) {
                this.f12150S.m();
            }
        } catch (Exception unused) {
        }
    }

    public class w implements yp.e {
        public w() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a(String str) {
            try {
                nh.a("BeiZisAd", "onVideoLoaded: 加载成功");
                BeiZiNewInterstitialActivity.this.f12196y.setVideoPath(str);
                BeiZiNewInterstitialActivity.this.f12196y.requestFocus();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.yp.e
        public void a() {
            BeiZiNewInterstitialActivity.this.finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0153 A[Catch: Exception -> 0x0058, TryCatch #3 {Exception -> 0x0058, blocks: (B:3:0x0006, B:6:0x0010, B:9:0x0016, B:12:0x001e, B:15:0x0026, B:17:0x002f, B:20:0x005b, B:24:0x0076, B:55:0x0131, B:57:0x0153, B:64:0x017e, B:66:0x0184, B:68:0x0188, B:70:0x0193, B:80:0x01a6, B:82:0x01aa, B:83:0x01ae, B:85:0x01b2, B:86:0x01c1, B:88:0x01c5, B:78:0x01a1, B:79:0x01a4, B:59:0x015d, B:60:0x0165, B:63:0x016e, B:53:0x0128, B:25:0x007f), top: B:97:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0184 A[Catch: Exception -> 0x0058, TryCatch #3 {Exception -> 0x0058, blocks: (B:3:0x0006, B:6:0x0010, B:9:0x0016, B:12:0x001e, B:15:0x0026, B:17:0x002f, B:20:0x005b, B:24:0x0076, B:55:0x0131, B:57:0x0153, B:64:0x017e, B:66:0x0184, B:68:0x0188, B:70:0x0193, B:80:0x01a6, B:82:0x01aa, B:83:0x01ae, B:85:0x01b2, B:86:0x01c1, B:88:0x01c5, B:78:0x01a1, B:79:0x01a4, B:59:0x015d, B:60:0x0165, B:63:0x016e, B:53:0x0128, B:25:0x007f), top: B:97:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0193 A[Catch: Exception -> 0x0058, TryCatch #3 {Exception -> 0x0058, blocks: (B:3:0x0006, B:6:0x0010, B:9:0x0016, B:12:0x001e, B:15:0x0026, B:17:0x002f, B:20:0x005b, B:24:0x0076, B:55:0x0131, B:57:0x0153, B:64:0x017e, B:66:0x0184, B:68:0x0188, B:70:0x0193, B:80:0x01a6, B:82:0x01aa, B:83:0x01ae, B:85:0x01b2, B:86:0x01c1, B:88:0x01c5, B:78:0x01a1, B:79:0x01a4, B:59:0x015d, B:60:0x0165, B:63:0x016e, B:53:0x0128, B:25:0x007f), top: B:97:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01aa A[Catch: Exception -> 0x0058, TryCatch #3 {Exception -> 0x0058, blocks: (B:3:0x0006, B:6:0x0010, B:9:0x0016, B:12:0x001e, B:15:0x0026, B:17:0x002f, B:20:0x005b, B:24:0x0076, B:55:0x0131, B:57:0x0153, B:64:0x017e, B:66:0x0184, B:68:0x0188, B:70:0x0193, B:80:0x01a6, B:82:0x01aa, B:83:0x01ae, B:85:0x01b2, B:86:0x01c1, B:88:0x01c5, B:78:0x01a1, B:79:0x01a4, B:59:0x015d, B:60:0x0165, B:63:0x016e, B:53:0x0128, B:25:0x007f), top: B:97:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ae A[Catch: Exception -> 0x0058, TryCatch #3 {Exception -> 0x0058, blocks: (B:3:0x0006, B:6:0x0010, B:9:0x0016, B:12:0x001e, B:15:0x0026, B:17:0x002f, B:20:0x005b, B:24:0x0076, B:55:0x0131, B:57:0x0153, B:64:0x017e, B:66:0x0184, B:68:0x0188, B:70:0x0193, B:80:0x01a6, B:82:0x01aa, B:83:0x01ae, B:85:0x01b2, B:86:0x01c1, B:88:0x01c5, B:78:0x01a1, B:79:0x01a4, B:59:0x015d, B:60:0x0165, B:63:0x016e, B:53:0x0128, B:25:0x007f), top: B:97:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity.b():void");
    }

    public class t implements w5.b {
        public t() {
        }

        @Override // com.beizi.fusion.w5.b
        public void a(String str) {
            try {
                if (BeiZiNewInterstitialActivity.this.f12158a == null) {
                    return;
                }
                BeiZiNewInterstitialActivity.this.f12158a.g(str);
                BeiZiNewInterstitialActivity.this.f12158a.O();
                BeiZiNewInterstitialActivity.this.finish();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.w5.b
        public void a() {
            BeiZiNewInterstitialActivity.this.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this, this.f12160b.I());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this, this.f12160b.h());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            if (this.f12190s != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 85);
                int iA = eq.a(this, 8.0f);
                layoutParams2.setMargins(0, 0, iA, iA);
                this.f12190s.addView(linearLayout, layoutParams2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public class r implements rf.f {
        public r() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                if (BeiZiNewInterstitialActivity.this.f12191t != null) {
                    if (BeiZiNewInterstitialActivity.this.f12186o != null) {
                        BeiZiNewInterstitialActivity.this.f12186o.measure(0, 0);
                        ViewGroup.LayoutParams layoutParams = BeiZiNewInterstitialActivity.this.f12191t.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.width = BeiZiNewInterstitialActivity.this.f12186o.getMeasuredWidth();
                            layoutParams.height = BeiZiNewInterstitialActivity.this.f12186o.getMeasuredHeight();
                            BeiZiNewInterstitialActivity.this.f12191t.setLayoutParams(layoutParams);
                        }
                    }
                    BeiZiNewInterstitialActivity.this.f12191t.setRectRadius(eq.a(BeiZiNewInterstitialActivity.this, 6.0f));
                    BeiZiNewInterstitialActivity.this.f12191t.setBackground(new BitmapDrawable(tf.a(BeiZiNewInterstitialActivity.this, bitmap, 20.0f)));
                    BeiZiNewInterstitialActivity.this.f12191t.setImageBitmap(bitmap);
                    BeiZiNewInterstitialActivity.this.a();
                    BeiZiNewInterstitialActivity.this.o();
                    BeiZiNewInterstitialActivity.this.k();
                    if (!BeiZiNewInterstitialActivity.this.f12139H || BeiZiNewInterstitialActivity.this.f12140I <= 0) {
                        return;
                    }
                    BeiZiNewInterstitialActivity.this.O();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
            BeiZiNewInterstitialActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2) {
        rn rnVarZ;
        try {
            if (this.f12158a != null && hasWindowFocus() && (rnVarZ = this.f12158a.z()) != null) {
                String strX = this.f12158a.x();
                h5 h5Var = new h5();
                h5Var.g(str);
                h5Var.c(str5);
                h5Var.h(str2);
                h5Var.d(str6);
                h5Var.e(str3);
                h5Var.a(str7);
                h5Var.f(str4);
                h5Var.b(str8);
                h5Var.a(this.f12167e0);
                rnVarZ.c(true);
                rnVarZ.b(this.f12167e0);
                rnVarZ.a(this.f12166e, h5Var, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f12137F, strX, i2);
                this.f12137F = true;
                b();
                this.f12158a.N();
                oj ojVar = this.f12161b0;
                if (ojVar != null) {
                    ojVar.c();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        double d2 = i3;
        double d3 = i2;
        if (d2 >= 0.25d * d3 && !this.f12181l0) {
            this.f12181l0 = true;
            a(25);
        }
        if (d2 >= 0.5d * d3 && !this.f12183m0) {
            this.f12183m0 = true;
            a(50);
        }
        if (d2 < d3 * 0.75d || this.f12185n0) {
            return;
        }
        this.f12185n0 = true;
        a(75);
    }

    private void a(int i2) {
        rn rnVarZ;
        aj ajVar = this.f12158a;
        if (ajVar == null || (rnVarZ = ajVar.z()) == null) {
            return;
        }
        String strX = this.f12158a.x();
        if (i2 == 25) {
            rnVarZ.b(this.f12182m, strX);
        } else if (i2 == 50) {
            rnVarZ.c(this.f12182m, strX);
        } else if (i2 == 75) {
            rnVarZ.d(this.f12182m, strX);
        }
    }
}
