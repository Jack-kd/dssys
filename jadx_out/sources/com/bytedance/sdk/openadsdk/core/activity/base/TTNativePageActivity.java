package com.bytedance.sdk.openadsdk.core.activity.base;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.byazt.ct.hp;
import com.byazt.dth.TTViewStub;
import com.byazt.fy.j;
import com.byazt.gi.BaseLandingPageActivity;
import com.byazt.ih.l;
import com.byazt.ij.a;
import com.byazt.jdb.eb;
import com.byazt.jz.s;
import com.byazt.la.e;
import com.byazt.pg.r;
import com.byazt.qb.l;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.ymw.ud;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTNativePageActivity extends BaseLandingPageActivity implements r.hp {
    private static WeakReference<j> ky;
    private TTViewStub as;
    private int ea;

    /* renamed from: f, reason: collision with root package name */
    private com.byazt.qb.j f28946f;
    private FrameLayout hd;
    private ImageView kg;

    /* renamed from: m, reason: collision with root package name */
    private FrameLayout f28947m;
    private eb mp;

    /* renamed from: ms, reason: collision with root package name */
    private TTViewStub f28948ms;
    private boolean nd;
    private long rv;
    private hp rz;
    private int vq;
    private TTViewStub xh;

    /* renamed from: y, reason: collision with root package name */
    private boolean f28949y;
    private l yr;
    private boolean zx;
    private boolean su = true;
    private final ud qu = new ud(Looper.getMainLooper(), this);

    private boolean ec() {
        return mp.j(this.pu);
    }

    private void jx(int i2) {
        if (i2 <= 0) {
            if (this.zx) {
                xh.hp(this.f20446u, "领取成功");
                return;
            } else {
                if (this.f28949y) {
                    xh.hp((View) this.kg, 8);
                    xh.hp(this.f20446u, "恭喜你！福利已领取");
                    return;
                }
                return;
            }
        }
        if (this.zx) {
            xh.hp(this.f20446u, i2 + "s后可领取奖励");
            return;
        }
        if (this.f28949y) {
            SpannableString spannableString = new SpannableString("浏览 " + i2 + "秒 获得更多福利");
            spannableString.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), spannableString.length() + (-4), spannableString.length(), 17);
            xh.hp(this.f20446u, spannableString);
        }
    }

    private void k() {
        this.f28949y = ea.ec(this.pu);
        boolean zVv = ea.vv(this.pu);
        this.zx = zVv;
        if (this.f28949y) {
            if (!a.f21117j) {
                this.zx = false;
            } else if (zVv) {
                this.f28949y = false;
            }
        }
    }

    private void sz() {
        this.vq = 0;
        if (this.zx) {
            this.vq = a.hp;
        } else if (this.f28949y && !a.f21117j) {
            this.vq = ea.k(this.pu);
        }
        jx(this.vq);
        if (this.vq > 0 && !this.qu.hasMessages(10)) {
            if (this.zx) {
                this.qu.sendEmptyMessageDelayed(10, 1000L);
            } else if (this.f28949y) {
                this.qu.sendEmptyMessageDelayed(10, 1000L);
            }
        }
    }

    private com.byazt.nc.hp u() {
        String stringExtra = getIntent().getStringExtra("multi_process_data");
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        try {
            return com.byazt.nc.hp.hp(new JSONObject(stringExtra));
        } catch (JSONException unused) {
            return null;
        }
    }

    private void v() throws JSONException {
        this.rv = System.currentTimeMillis();
        eb ebVar = new eb(this.pu);
        this.mp = ebVar;
        ebVar.hp(true);
        this.mp.hp();
        if (!e.s(this.pu)) {
            xs();
            return;
        }
        hp hpVar = new hp(this, this.f28947m, this.mp, this.pu, this.jx, this.f20437j, u());
        this.rz = hpVar;
        hpVar.hp(new com.byazt.tk.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.4
            @Override // com.byazt.tk.hp
            public void hp(View view) {
            }

            @Override // com.byazt.tk.hp
            public void hp(int i2) {
                TTNativePageActivity.this.l(i2);
            }
        });
        this.rz.hp();
    }

    private boolean vv() {
        return this.zx || this.f28949y;
    }

    private void xs() {
        com.byazt.nqo.hp hpVarPc = this.pu.pc();
        if (hpVarPc == null) {
            return;
        }
        int iJ = hpVarPc.j();
        if (iJ == 2) {
            com.byazt.qb.j jVar = new com.byazt.qb.j(this.f20448w, this.f28947m, this.mp, this.pu, this.jx, this.f20437j);
            this.f28946f = jVar;
            jVar.jl();
            return;
        }
        if (iJ == 3) {
            l lVar = new l(this.f20448w, this.f28947m, this.mp, this.pu, this.jx, this.f20437j);
            this.yr = lVar;
            lVar.l(false);
            this.yr.jl();
            if (TextUtils.equals(hpVarPc.hp(), "3")) {
                return;
            }
            final ImageView imageView = new ImageView(this.f20448w);
            float fJx = xh.jx(this.f20448w, 18.0f);
            float fJx2 = xh.jx(this.f20448w, 18.0f);
            int i2 = (int) fJx;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
            layoutParams.gravity = 53;
            int i3 = (int) fJx2;
            layoutParams.setMargins(i3, i3, i3, i3);
            this.hd.addView(imageView, layoutParams);
            v.hp((Context) this.f20448w, "tt_unmute", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.nd = !r4.nd;
                    TTNativePageActivity tTNativePageActivity = TTNativePageActivity.this;
                    v.hp((Context) tTNativePageActivity.f20448w, tTNativePageActivity.nd ? "tt_mute" : "tt_unmute", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                    TTNativePageActivity.this.yr.jx(TTNativePageActivity.this.nd);
                }
            });
        }
    }

    private void zy() {
        mp mpVar = this.pu;
        if (mpVar == null || mpVar.pc() == null || this.pu.pc().j() != 3) {
            return;
        }
        com.byazt.gsd.l.hp().hp(this.pu);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void a() {
        com.byazt.jdb.j.hp(this.pu, getClass().getName());
        zy();
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public View eb() {
        return com.byazt.vi.a.ky(this.f20448w);
    }

    public void gu() {
        if (vv()) {
            this.qu.removeMessages(10);
        }
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what == 10 && vv()) {
            int i2 = this.ea + 1;
            this.ea = i2;
            if (this.zx) {
                a.f21118l = i2;
            }
            int iMax = Math.max(0, this.vq - i2);
            jx(iMax);
            if (iMax <= 0 && this.f28949y) {
                a.f21117j = true;
            }
            this.qu.sendEmptyMessageDelayed(10, 1000L);
        }
    }

    public void jl() {
        if (!vv() || this.qu.hasMessages(10)) {
            return;
        }
        this.qu.sendEmptyMessageDelayed(10, 1000L);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable unused) {
        }
        hp hpVar = this.rz;
        if (hpVar != null) {
            hpVar.j();
        }
        l lVar = this.yr;
        if (lVar != null) {
            lVar.v();
        }
        eb ebVar = this.mp;
        if (ebVar != null) {
            ebVar.j();
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        hp hpVar = this.rz;
        if (hpVar != null) {
            hpVar.l();
        }
        gu();
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onResume() throws JSONException {
        super.onResume();
        eb ebVar = this.mp;
        if (ebVar != null) {
            ebVar.jx();
        }
        jl();
        hp hpVar = this.rz;
        if (hpVar != null) {
            hpVar.jx();
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onStop() throws JSONException {
        super.onStop();
        eb ebVar = this.mp;
        if (ebVar != null) {
            ebVar.hp(0);
        }
        if (this.su) {
            this.su = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.rv);
                jSONObject.put("end", System.currentTimeMillis());
                com.byazt.nwu.hp.hp(jSONObject, this.pu);
            } catch (JSONException unused) {
            }
            com.byazt.jdb.j.hp(this.pu, "landingpage", "agg_stay_page", new com.byazt.dhy.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.6
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
                }
            });
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void w() throws JSONException {
        TTViewStub tTViewStub;
        this.hd = (FrameLayout) findViewById(2114387634);
        this.f28947m = (FrameLayout) findViewById(2114387720);
        this.f20443q = (TTViewStub) findViewById(2114387956);
        this.xh = (TTViewStub) findViewById(2114387770);
        this.f28948ms = (TTViewStub) findViewById(2114387792);
        this.as = (TTViewStub) findViewById(2114387933);
        k();
        mp mpVar = this.pu;
        if (mpVar != null && mpVar.ju() != null) {
            this.pu.ju().hp("landing_page");
        }
        if (this.zx || this.f28949y) {
            TTViewStub tTViewStub2 = this.as;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
            this.kg = (ImageView) findViewById(2114387843);
        } else {
            int iHq = s.u().hq();
            if (iHq == 0) {
                TTViewStub tTViewStub3 = this.xh;
                if (tTViewStub3 != null) {
                    tTViewStub3.setVisibility(0);
                }
            } else if (iHq == 1 && (tTViewStub = this.f28948ms) != null) {
                tTViewStub.setVisibility(0);
            }
        }
        ImageView imageView = (ImageView) findViewById(2114387705);
        this.f20438k = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.finish();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387704);
        this.f20447v = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.finish();
                }
            });
        }
        this.f20446u = (TextView) findViewById(2114387952);
        this.xs = (TextView) findViewById(2114387627);
        TextView textView = this.f20446u;
        if (textView != null && !this.zx && !this.f28949y) {
            textView.setText(TextUtils.isEmpty(this.zy) ? "广告" : this.zy);
        }
        TextView textView2 = this.xs;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.hp(new l.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.3.1
                        @Override // com.byazt.ih.l.hp
                        public void hp() {
                            TTNativePageActivity.this.gu();
                        }

                        @Override // com.byazt.ih.l.hp
                        public void l() {
                            TTNativePageActivity.this.jl();
                        }

                        @Override // com.byazt.ih.l.hp
                        public void hp(int i2, String str, boolean z2) {
                            TTNativePageActivity.this.jl();
                        }
                    });
                }
            });
        }
        v();
        hp(4);
        if (this.zx || this.f28949y) {
            sz();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2) {
        WeakReference<j> weakReference;
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (!intent.getBooleanExtra("is_replace_dialog", false) || (weakReference = ky) == null || weakReference.get() == null) {
            Intent intent2 = (mp.jx(this.pu) && ky.s(this.pu)) ? new Intent(this, (Class<?>) TTVideoWebPageActivity.class) : new Intent(this, (Class<?>) TTWebPageActivity.class);
            intent2.putExtras(intent);
            try {
                com.byazt.ymw.l.hp(this.f20448w, intent2, null);
            } catch (Throwable unused) {
            }
        } else {
            ky.get().hp(false);
            ky.get().hp(ky.cx(this.pu), false);
            ky = null;
        }
        finish();
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void hp(Bundle bundle) {
        setRequestedOrientation(1);
        getWindow().addFlags(1024);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void hp(int i2) {
        if (ec()) {
            xh.hp((View) this.f20447v, 4);
        } else {
            if (this.f20447v == null || !ec()) {
                return;
            }
            xh.hp((View) this.f20447v, i2);
        }
    }

    public static void hp(j jVar) {
        ky = new WeakReference<>(jVar);
    }
}
