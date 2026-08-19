package com.bytedance.sdk.openadsdk.core.activity.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.dth.TTViewStub;
import com.byazt.gi.BaseLandingPageActivity;
import com.byazt.ih.l;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.nc.hp;
import com.byazt.nk.RoundImageView;
import com.byazt.nk.TTProgressBar;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.oh.j;
import com.byazt.pg.jl;
import com.byazt.su.jx;
import com.byazt.vi.a;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.e;
import com.byazt.ymw.hq;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTVideoWebPageActivity extends BaseLandingPageActivity {
    private hp an;
    private FrameLayout as;
    private RoundImageView hd;
    private long kg;
    protected NativeVideoTsView ky;

    /* renamed from: ms, reason: collision with root package name */
    private RelativeLayout f28960ms;
    private TextView nd;
    private int rv;
    private RelativeLayout rz;
    protected jx xh;
    private TextView zx;
    private int mp = 0;

    /* renamed from: m, reason: collision with root package name */
    private int f28959m = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f28958f = 0;
    private int yr = 0;

    /* renamed from: y, reason: collision with root package name */
    private boolean f28961y = false;
    private final jx.l vq = new jx.l() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.1
        @Override // com.byazt.su.jx.l
        public void hp(boolean z2) {
            TTVideoWebPageActivity.this.f28961y = z2;
            if (TTVideoWebPageActivity.this.isFinishing()) {
                return;
            }
            if (!z2) {
                xh.hp((View) TTVideoWebPageActivity.this.ns, 0);
                xh.hp((View) TTVideoWebPageActivity.this.f28960ms, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoWebPageActivity.this.as.getLayoutParams();
                marginLayoutParams.width = TTVideoWebPageActivity.this.f28958f;
                marginLayoutParams.height = TTVideoWebPageActivity.this.yr;
                marginLayoutParams.leftMargin = TTVideoWebPageActivity.this.f28959m;
                marginLayoutParams.topMargin = TTVideoWebPageActivity.this.mp;
                TTVideoWebPageActivity.this.as.setLayoutParams(marginLayoutParams);
                return;
            }
            xh.hp((View) TTVideoWebPageActivity.this.ns, 8);
            xh.hp((View) TTVideoWebPageActivity.this.f28960ms, 8);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoWebPageActivity.this.as.getLayoutParams();
            TTVideoWebPageActivity.this.f28959m = marginLayoutParams2.leftMargin;
            TTVideoWebPageActivity.this.mp = marginLayoutParams2.topMargin;
            TTVideoWebPageActivity.this.f28958f = marginLayoutParams2.width;
            TTVideoWebPageActivity.this.yr = marginLayoutParams2.height;
            marginLayoutParams2.width = -1;
            marginLayoutParams2.height = -1;
            marginLayoutParams2.topMargin = 0;
            marginLayoutParams2.leftMargin = 0;
            TTVideoWebPageActivity.this.as.setLayoutParams(marginLayoutParams2);
        }
    };
    private boolean ea = false;
    private boolean su = true;
    private final com.byazt.yb.jx qu = new com.byazt.yb.jx() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.2
        @Override // com.byazt.yb.jx
        public void onNetworkChanged(Context context, Intent intent, boolean z2, int i2) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                if (TTVideoWebPageActivity.this.rv == 0 && i2 != 0) {
                    TTVideoWebPageActivity tTVideoWebPageActivity = TTVideoWebPageActivity.this;
                    if (tTVideoWebPageActivity.ns != null && tTVideoWebPageActivity.f20436e != null) {
                        e.l().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TTVideoWebPageActivity tTVideoWebPageActivity2 = TTVideoWebPageActivity.this;
                                SSWebView sSWebView = tTVideoWebPageActivity2.ns;
                                if (sSWebView != null) {
                                    sSWebView.loadUrl(tTVideoWebPageActivity2.f20436e);
                                }
                            }
                        });
                    }
                }
                NativeVideoTsView nativeVideoTsView = TTVideoWebPageActivity.this.ky;
                if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null && !TTVideoWebPageActivity.this.ec() && TTVideoWebPageActivity.this.rv != i2) {
                    ((j) TTVideoWebPageActivity.this.ky.getNativeVideoController()).hp(context, i2);
                }
                TTVideoWebPageActivity.this.rv = i2;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ec() {
        NativeVideoTsView nativeVideoTsView = this.ky;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return true;
        }
        return this.ky.getNativeVideoController().sz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        mp mpVar = this.pu;
        if (mpVar == null) {
            return false;
        }
        int iPg = mpVar.pg();
        return this.f20437j == 1 && "embeded_ad_landingpage".equals(this.jx) && (iPg == 1 || iPg == 2);
    }

    private boolean sz() {
        l lVar = this.di;
        return lVar == null || !lVar.isShow();
    }

    private long u() {
        NativeVideoTsView nativeVideoTsView = this.ky;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0L;
        }
        return this.ky.getNativeVideoController().k();
    }

    private void v() {
        if (mp.jx(this.pu)) {
            try {
                if (this instanceof TTVideoScrollWebPageActivity) {
                    Activity activity = this.f20448w;
                    this.ky = new NativeVideoTsView(activity != null ? activity.getApplicationContext() : sz.getContext(), this.pu, true, true);
                } else {
                    Activity activity2 = this.f20448w;
                    this.ky = new NativeVideoTsView(activity2 != null ? activity2.getApplicationContext() : sz.getContext(), this.pu, true, false);
                }
                if (this.ky.getNativeVideoController() != null) {
                    this.ky.getNativeVideoController().hp(false);
                    if (this.an != null) {
                        this.ky.getNativeVideoController().jx(this.an.hp);
                    }
                }
                this.ky.setVideoAdInteractionListener(new com.byazt.odi.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.4
                    @Override // com.byazt.odi.hp, com.byazt.su.jx.InterfaceC0367jx
                    public void onProgressUpdate(long j2, long j3) {
                        if (TTVideoWebPageActivity.this.n()) {
                            s.u().hp(j2);
                        }
                    }
                });
                if (!this.sz) {
                    this.kg = 0L;
                }
                if (this.an != null && this.ky.getNativeVideoController() != null) {
                    this.ky.getNativeVideoController().jx(this.an.eb);
                    this.ky.getNativeVideoController().j(this.an.f23534w);
                }
                if (this.ky.getNativeVideoController() != null) {
                    this.ky.getNativeVideoController().hp(false);
                    this.ky.getNativeVideoController().hp(this.vq);
                    this.ky.setIsQuiet(this.pu.dh() == 1);
                }
                if (this.ky.hp(this.kg, this.su, ec())) {
                    this.as.setVisibility(0);
                    this.as.removeAllViews();
                    this.as.addView(this.ky);
                }
                if (ec()) {
                    this.ky.j(true);
                }
                this.xh = this.ky.getNativeVideoController();
            } catch (Exception unused) {
            }
            if (vv.jx(this.f20448w.getApplicationContext()) == 0) {
                try {
                    hq.hp(this.f20448w, "\"无网络，请稍后再试\"", 0);
                } catch (Exception unused2) {
                }
            }
        }
    }

    private void vv() {
        mp mpVar = this.pu;
        if (mpVar == null || mpVar.q() != 4) {
            return;
        }
        xh.hp((View) this.rz, 0);
        String strV_ = !TextUtils.isEmpty(this.pu.v_()) ? this.pu.v_() : !TextUtils.isEmpty(this.pu.cu()) ? this.pu.cu() : !TextUtils.isEmpty(this.pu.qk()) ? this.pu.qk() : "";
        dy dyVarNq = this.pu.nq();
        if (dyVarNq != null && dyVarNq.hp() != null) {
            xh.hp((View) this.hd, 0);
            xh.hp((View) this.nd, 4);
            com.byazt.ws.l.hp(dyVarNq).to(this.hd);
        } else if (!TextUtils.isEmpty(strV_)) {
            xh.hp((View) this.hd, 4);
            xh.hp((View) this.nd, 0);
            this.nd.setText(strV_.substring(0, 1));
        }
        if (this.zx != null && !TextUtils.isEmpty(strV_)) {
            this.zx.setText(strV_);
        }
        if (!TextUtils.isEmpty(this.pu.ll())) {
            this.nu.setText(this.pu.ll());
        }
        xh.hp((View) this.zx, 0);
        if (n()) {
            xh.hp((View) this.nu, 8);
        } else {
            xh.hp((View) this.nu, 0);
        }
    }

    private int xs() {
        NativeVideoTsView nativeVideoTsView = this.ky;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0;
        }
        return this.ky.getNativeVideoController().v();
    }

    public void gu() {
        ((jl) com.byazt.ym.j.getService("device_info_new")).registerNetworkMonitor(this.qu);
    }

    public void jl() {
        try {
            ((jl) com.byazt.ym.j.getService("device_info_new")).removeNetworkMonitor(this.qu);
        } catch (Exception unused) {
        }
    }

    public boolean k() {
        jx jxVar = this.xh;
        return (jxVar == null || jxVar.xs() == null || !this.xh.xs().isPaused()) ? false : true;
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        jl();
        NativeVideoTsView nativeVideoTsView = this.ky;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            this.ky.getNativeVideoController().e();
        }
        NativeVideoTsView nativeVideoTsView2 = this.ky;
        if (nativeVideoTsView2 != null) {
            nativeVideoTsView2.sz();
            this.ky = null;
        }
        this.pu = null;
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onPause() {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2;
        super.onPause();
        try {
            if (!this.ea && sz()) {
                this.ea = true;
                this.xh.a();
            }
        } catch (Throwable th) {
            u.l("BaseLandingPageActivity", "onPause throw Exception :" + th.getMessage());
        }
        if (ec() || ((nativeVideoTsView2 = this.ky) != null && nativeVideoTsView2.getNativeVideoController() != null && this.ky.getNativeVideoController().sz())) {
            mp mpVar = this.pu;
            com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(mpVar == null ? null : mpVar.xq(), "sp_multi_native_video_data");
            jxVarHp.put("key_video_is_update_flag", true);
            jxVarHp.put("key_native_video_complete", true);
            jxVarHp.put("key_video_isfromvideodetailpage", true);
        }
        if (ec() || (nativeVideoTsView = this.ky) == null || nativeVideoTsView.getNativeVideoController() == null) {
            return;
        }
        hp(this.ky.getNativeVideoController());
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onResume() throws JSONException {
        super.onResume();
        this.su = false;
        if (this.ea && k() && sz()) {
            this.ea = false;
            this.xh.s();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        mp mpVar = this.pu;
        bundle.putString("material_meta", mpVar != null ? mpVar.ij().toString() : null);
        bundle.putLong("video_play_position", this.kg);
        bundle.putBoolean("is_complete", ec());
        long jGu = this.kg;
        NativeVideoTsView nativeVideoTsView = this.ky;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            jGu = this.ky.getNativeVideoController().gu();
        }
        bundle.putLong("video_play_position", jGu);
        super.onSaveInstanceState(bundle);
    }

    public boolean zy() {
        jx jxVar = this.xh;
        return (jxVar == null || jxVar.xs() == null || !this.xh.xs().isPlaying()) ? false : true;
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void a() {
        super.a();
        gu();
        v();
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public View eb() {
        return a.hp(this.f20448w, this.pu);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public boolean s() {
        NativeVideoTsView nativeVideoTsView;
        if (super.s()) {
            return true;
        }
        if (!this.f28961y || (nativeVideoTsView = this.ky) == null || nativeVideoTsView.getNativeVideoController() == null) {
            hp("detail_back");
            return false;
        }
        ((com.byazt.su.hp) this.ky.getNativeVideoController()).w(null, null);
        this.f28961y = false;
        return true;
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void w() throws JSONException {
        this.f20434b = (TTProgressBar) findViewById(2114387922);
        this.ns = (SSWebView) findViewById(2114387733);
        this.f20443q = (TTViewStub) findViewById(2114387956);
        hp(new l.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.3
            @Override // com.byazt.ih.l.hp
            public void hp() {
                if (TTVideoWebPageActivity.this.zy()) {
                    TTVideoWebPageActivity.this.xh.a();
                }
            }

            @Override // com.byazt.ih.l.hp
            public void l() {
                if (TTVideoWebPageActivity.this.k()) {
                    TTVideoWebPageActivity.this.xh.s();
                }
            }

            @Override // com.byazt.ih.l.hp
            public void hp(int i2, String str, boolean z2) {
                if (TTVideoWebPageActivity.this.k()) {
                    TTVideoWebPageActivity.this.xh.s();
                }
            }
        }, true);
        this.as = (FrameLayout) findViewById(2114387708);
        this.f28960ms = (RelativeLayout) findViewById(2114387943);
        this.rz = (RelativeLayout) findViewById(2114387655);
        this.nd = (TextView) findViewById(2114387957);
        this.zx = (TextView) findViewById(2114387764);
        this.nu = (TextView) findViewById(2114387686);
        this.hd = (RoundImageView) findViewById(2114387664);
        vv();
        l();
        mp mpVar = this.pu;
        if (mpVar != null && this.f28960ms != null && mpVar.xh()) {
            this.f28960ms.setVisibility(8);
        }
        hp(true);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void hp(Bundle bundle) {
        try {
            getWindow().addFlags(16777216);
        } catch (Throwable unused) {
        }
        this.rv = vv.jx(getApplicationContext());
        Intent intent = getIntent();
        if (bundle != null && bundle.getLong("video_play_position") > 0) {
            this.kg = bundle.getLong("video_play_position", 0L);
        }
        String stringExtra = intent.getStringExtra("multi_process_data");
        if (stringExtra != null) {
            try {
                this.an = hp.hp(new JSONObject(stringExtra));
            } catch (Exception unused2) {
            }
            hp hpVar = this.an;
            if (hpVar != null) {
                this.kg = hpVar.eb;
            }
        }
        if (bundle != null) {
            String string = bundle.getString("material_meta");
            if (this.pu == null) {
                try {
                    this.pu = com.byazt.jz.hp.hp(new JSONObject(string));
                } catch (Throwable unused3) {
                }
            }
            long j2 = bundle.getLong("video_play_position");
            if (j2 > 0) {
                this.kg = j2;
            }
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void hp(String str) {
        NativeVideoTsView nativeVideoTsView = this.ky;
        com.byazt.jdb.j.hp(this.pu, l.AD_TAG_FEED, str, u(), xs(), (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) ? null : ky.hp(this.pu, this.ky.getNativeVideoController().jl(), this.ky.getNativeVideoController().xs()));
    }

    private void hp(jx jxVar) {
        u.l("mutilproces", "initFeedNaitiveControllerData-isComplete=" + jxVar.sz() + ",position=" + jxVar.gu() + ",totalPlayDuration=" + (jxVar.k() + jxVar.jl()) + ",duration=" + jxVar.k());
        mp mpVar = this.pu;
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(mpVar == null ? null : mpVar.xq(), "sp_multi_native_video_data");
        jxVarHp.put("key_video_is_update_flag", true);
        jxVarHp.put("key_video_isfromvideodetailpage", true);
        jxVarHp.put("key_native_video_complete", jxVar.sz());
        jxVarHp.put("key_video_current_play_position", jxVar.gu());
        jxVarHp.put("key_video_total_play_duration", jxVar.k() + jxVar.jl());
        jxVarHp.put("key_video_duration", jxVar.k());
    }
}
