package com.bytedance.sdk.openadsdk.core.activity.base;

import android.R;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.internal.view.SupportMenu;
import com.byazt.cqo.hp;
import com.byazt.cqo.j;
import com.byazt.cqo.jx;
import com.byazt.dth.TTViewStub;
import com.byazt.gi.BaseLandingPageActivity;
import com.byazt.gsd.l;
import com.byazt.ih.l;
import com.byazt.ij.a;
import com.byazt.jz.s;
import com.byazt.nk.TTProgressBar;
import com.byazt.pg.r;
import com.byazt.vi.w;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.ymw.ud;
import com.byazt.zn.xh;
import org.json.JSONException;

/* loaded from: classes3.dex */
public class TTWebPageActivity extends BaseLandingPageActivity implements r.hp {
    private static final String ky = "TTWebPageActivity";
    private boolean as;
    private int kg;

    /* renamed from: m, reason: collision with root package name */
    private final ud f28962m = new ud(Looper.getMainLooper(), this);
    private int mp;

    /* renamed from: ms, reason: collision with root package name */
    private boolean f28963ms;
    private ImageView xh;

    private void k() {
        this.kg = 0;
        if (this.f28963ms) {
            this.kg = a.hp;
        } else if (this.as && !a.f21117j) {
            this.kg = ea.k(this.pu);
        }
        l(this.kg);
        if (this.kg > 0 && !this.f28962m.hasMessages(10)) {
            if (this.f28963ms) {
                this.f28962m.sendEmptyMessageDelayed(10, 1000L);
            } else if (this.as) {
                this.f28962m.sendEmptyMessageDelayed(10, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (v()) {
            this.f28962m.removeMessages(10);
        }
    }

    private boolean v() {
        return this.f28963ms || this.as;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xs() {
        if (!v() || this.f28962m.hasMessages(10)) {
            return;
        }
        this.f28962m.sendEmptyMessageDelayed(10, 1000L);
    }

    private void zy() {
        TTViewStub tTViewStub;
        this.as = ea.ec(this.pu);
        boolean z2 = ea.vv(this.pu) && !a.jx;
        this.f28963ms = z2;
        if (this.as) {
            if (!a.f21117j) {
                this.f28963ms = false;
            } else if (z2) {
                this.as = false;
            }
        }
        if (this.f28963ms || this.as) {
            TTViewStub tTViewStub2 = this.f20445s;
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
            this.xh = (ImageView) findViewById(2114387843);
            return;
        }
        mp mpVar = this.pu;
        if (mpVar != null && mpVar.xh()) {
            TTViewStub tTViewStub3 = this.f20433a;
            if (tTViewStub3 != null) {
                tTViewStub3.setVisibility(8);
            }
            TTViewStub tTViewStub4 = this.eb;
            if (tTViewStub4 != null) {
                tTViewStub4.setVisibility(8);
                return;
            }
            return;
        }
        int iHq = s.u().hq();
        if (iHq != 0) {
            if (iHq == 1 && (tTViewStub = this.eb) != null) {
                tTViewStub.setVisibility(0);
                return;
            }
            return;
        }
        TTViewStub tTViewStub5 = this.f20433a;
        if (tTViewStub5 != null) {
            tTViewStub5.setVisibility(0);
        }
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void a() {
        super.a();
        l.hp().hp(this.pu);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public View eb() {
        Activity activity = this.f20448w;
        if (activity == null) {
            return null;
        }
        Resources resources = activity.getResources();
        LinearLayout linearLayoutJl = jl();
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayoutJl.setOrientation(1);
        linearLayoutJl.setLayoutParams(layoutParams);
        TTViewStub tTViewStub = new TTViewStub(this.f20448w, new com.byazt.cqo.l());
        this.f20433a = tTViewStub;
        tTViewStub.setId(2114387770);
        linearLayoutJl.addView(this.f20433a, new LinearLayout.LayoutParams(-1, -2));
        TTViewStub tTViewStub2 = new TTViewStub(this.f20448w, new jx());
        this.eb = tTViewStub2;
        tTViewStub2.setId(2114387792);
        linearLayoutJl.addView(this.eb, new LinearLayout.LayoutParams(-1, -2));
        TTViewStub tTViewStub3 = new TTViewStub(this.f20448w, new j());
        this.f20445s = tTViewStub3;
        tTViewStub3.setId(2114387933);
        linearLayoutJl.addView(this.f20445s, new LinearLayout.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(this.f20448w);
        linearLayoutJl.addView(frameLayout, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        SSWebView sSWebView = new SSWebView(this.f20448w);
        this.ns = sSWebView;
        sSWebView.setMaterialMeta(com.byazt.zn.r.hp(this.pu));
        this.ns.setId(2114387733);
        this.ns.setLayoutParams(new FrameLayout.LayoutParams(-1, gu()));
        frameLayout.addView(this.ns);
        try {
            this.ns.setBackgroundColor(0);
            this.ns.setBackgroundResource(R.color.transparent);
        } catch (Exception unused) {
        }
        TTViewStub tTViewStub4 = new TTViewStub(this.f20448w, new hp());
        this.f20443q = tTViewStub4;
        tTViewStub4.setId(2114387956);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 48.0f, resources.getDisplayMetrics()));
        layoutParams2.gravity = 81;
        frameLayout.addView(this.f20443q, layoutParams2);
        TTProgressBar tTProgressBar = new TTProgressBar(this.f20448w, null, R.style.Widget.ProgressBar.Horizontal);
        this.f20434b = tTProgressBar;
        tTProgressBar.setId(2114387922);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 3.0f, resources.getDisplayMetrics()));
        layoutParams3.gravity = 49;
        this.f20434b.setLayoutParams(layoutParams3);
        this.f20434b.setProgress(1);
        this.f20434b.setProgressDrawable(w.hp());
        frameLayout.addView(this.f20434b);
        return linearLayoutJl;
    }

    public int gu() {
        return -1;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what == 10 && v()) {
            int i2 = this.mp + 1;
            this.mp = i2;
            if (this.f28963ms) {
                a.f21118l = i2;
            }
            int iMax = Math.max(0, this.kg - i2);
            l(iMax);
            if (iMax <= 0 && this.as) {
                a.f21117j = true;
            }
            this.f28962m.sendEmptyMessageDelayed(10, 1000L);
        }
    }

    public LinearLayout jl() {
        return new LinearLayout(this.f20448w);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        l.hp().l(this.pu);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onPause() throws JSONException {
        super.onPause();
        u();
        l(false);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity, android.app.Activity
    public void onResume() throws JSONException {
        super.onResume();
        xs();
        l(true);
    }

    @Override // com.byazt.gi.BaseLandingPageActivity
    public void w() throws JSONException {
        zy();
        boolean zV = v();
        hp(new l.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity.1
            @Override // com.byazt.ih.l.hp
            public void hp() {
                TTWebPageActivity.this.u();
            }

            @Override // com.byazt.ih.l.hp
            public void l() {
                TTWebPageActivity.this.xs();
            }

            @Override // com.byazt.ih.l.hp
            public void hp(int i2, String str, boolean z2) {
                TTWebPageActivity.this.xs();
            }
        }, !zV);
        if (zV) {
            k();
        }
        l();
        hp(false);
    }

    private void l(boolean z2) throws JSONException {
        com.byazt.jz.ud udVar;
        mp mpVar = this.pu;
        if (mpVar == null || !mpVar.cv() || (udVar = this.f20442o) == null) {
            return;
        }
        udVar.gu(z2);
    }

    private void l(int i2) {
        if (i2 > 0) {
            if (this.f28963ms) {
                xh.hp(this.f20446u, i2 + "s后可领取奖励");
                return;
            }
            if (this.as) {
                SpannableString spannableString = new SpannableString("浏览 " + i2 + "秒 获得更多福利");
                spannableString.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), spannableString.length() + (-4), spannableString.length(), 17);
                xh.hp(this.f20446u, spannableString);
                return;
            }
            return;
        }
        if (this.f28963ms) {
            xh.hp(this.f20446u, "领取成功");
        } else if (this.as) {
            xh.hp((View) this.xh, 8);
            xh.hp(this.f20446u, "恭喜你！福利已领取");
        }
    }
}
