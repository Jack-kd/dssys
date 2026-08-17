package com.meishu.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.safe.SafeAppCompatActivity;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.ReflectUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.b1;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.t1;
import com.meishu.sdk.core.view.MSDialog;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.core.webview.g;
import com.meishu.sdk.core.webview.q;
import com.meishu.sdk.core.webview.s;
import com.meishu.sdk.meishu_ad.nativ.d;
import com.meishu.sdk.meishu_ad.nativ.f;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class MeishuRewardH5Activity extends SafeAppCompatActivity {
    private static final int DEFAULT_TOTAL_TIME = 15000;
    private static final String TAG = "MeishuRewardH5Activity";
    private static f adSlot;
    private static d nativeAdData;
    private static s wrapper;
    private boolean attachWindow;
    private i bQuery;
    private volatile String curWebUrl;
    private t1 h5ClickChecker;
    private boolean isStarted;
    private Handler mHandler;
    private int mImageCurrentTime;
    private boolean onReward;
    private boolean oneHalfPerformed;
    private boolean oneQuarterPerformed;
    private boolean threeQuarterPerformed;
    private TouchAdContainer touchContainer;
    private int totalTime = 15000;
    private final Runnable updateTime = new l() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.6
        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                MeishuRewardH5Activity.access$1012(MeishuRewardH5Activity.this, 100);
                if (MeishuRewardH5Activity.this.mImageCurrentTime >= MeishuRewardH5Activity.this.totalTime) {
                    MeishuRewardH5Activity.this.onReward = true;
                    MeishuRewardH5Activity.this.bQuery.b(R.id.ms_reward_close_button_parent).d(0);
                    MeishuRewardH5Activity.this.runOnUiThread(new l() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.6.1
                        @Override // com.meishu.sdk.core.safe.l
                        public void safeRun() {
                            super.safeRun();
                            View view = MeishuRewardH5Activity.this.bQuery.b(R.id.ms_reward_content_txt).f31521d;
                            if (view instanceof TextView) {
                                ((TextView) view).setText("恭喜已获得奖励");
                            }
                        }
                    });
                    b1.a(MeishuRewardH5Activity.adSlot, 17);
                    b1.a(MeishuRewardH5Activity.adSlot, 31);
                    MeishuRewardH5Activity.this.sendBroadcast("broadcast_onreward");
                    MeishuRewardH5Activity.this.onImageComplete();
                    MeishuRewardH5Activity.this.mHandler.removeCallbacks(MeishuRewardH5Activity.this.updateTime);
                    return;
                }
                final int i2 = MeishuRewardH5Activity.this.totalTime - MeishuRewardH5Activity.this.mImageCurrentTime;
                MeishuRewardH5Activity.this.runOnUiThread(new l() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.6.2
                    @Override // com.meishu.sdk.core.safe.l
                    public void safeRun() {
                        super.safeRun();
                        MeishuRewardH5Activity.this.updateCountDownText(Math.max(0, (i2 + 999) / 1000));
                    }
                });
                double d2 = (MeishuRewardH5Activity.this.mImageCurrentTime * 1.0f) / MeishuRewardH5Activity.this.totalTime;
                if (d2 < 0.25d || d2 >= 0.5d) {
                    if (d2 < 0.5d || d2 >= 0.75d) {
                        if (d2 >= 0.75d && d2 < 1.0d && !MeishuRewardH5Activity.this.threeQuarterPerformed) {
                            MeishuRewardH5Activity.this.ThreeQuarterReport();
                            MeishuRewardH5Activity.this.threeQuarterPerformed = true;
                        }
                    } else if (!MeishuRewardH5Activity.this.oneHalfPerformed) {
                        MeishuRewardH5Activity.this.OneHalfReport();
                        MeishuRewardH5Activity.this.oneHalfPerformed = true;
                    }
                } else if (!MeishuRewardH5Activity.this.oneQuarterPerformed) {
                    MeishuRewardH5Activity.this.OneQuarterReport();
                    MeishuRewardH5Activity.this.oneQuarterPerformed = true;
                }
                MeishuRewardH5Activity.this.mHandler.postDelayed(MeishuRewardH5Activity.this.updateTime, 100L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    };

    public static /* synthetic */ int access$1012(MeishuRewardH5Activity meishuRewardH5Activity, int i2) {
        int i3 = meishuRewardH5Activity.mImageCurrentTime + i2;
        meishuRewardH5Activity.mImageCurrentTime = i3;
        return i3;
    }

    public static void clear() {
        s sVar = wrapper;
        if (sVar != null) {
            q.a(sVar.f32154a);
            try {
                wrapper.f32155b.f32115g = null;
            } catch (Exception unused) {
            }
            try {
                g gVar = wrapper.f32156c;
                gVar.getClass();
                try {
                    gVar.f32116a.clear();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Exception unused2) {
            }
        }
        wrapper = null;
        adSlot = null;
        nativeAdData = null;
    }

    private void initClickEvent(@NotNull i iVar) {
        i iVarB = iVar.b(R.id.ms_reward_close_button_parent);
        o oVar = new o() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.1
            @Override // com.meishu.sdk.core.safe.o
            public void safeOnClick(View view) {
                try {
                    if (MeishuRewardH5Activity.this.onReward) {
                        MeishuRewardH5Activity.this.sendBroadcast("broadcast_onclosed");
                        MeishuRewardH5Activity.this.finish();
                    } else {
                        b1.a(MeishuRewardH5Activity.adSlot, 18);
                        new MSDialog.Builder(MeishuRewardH5Activity.this).setTitle("完整观看即可获得奖励\n确认要离开吗？").setShowCloseBtn(true).setCanceledOnTouchOutside(false).setNegativeButton("放弃领取", new o() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.1.2
                            @Override // com.meishu.sdk.core.safe.o
                            public void safeOnClick(View view2) {
                                super.safeOnClick(view2);
                                b1.a(MeishuRewardH5Activity.adSlot, 19);
                                MeishuRewardH5Activity.this.sendBroadcast("broadcast_onclosed");
                                MeishuRewardH5Activity.this.finish();
                            }
                        }).setPositiveButton("继续浏览", new o() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.1.1
                            @Override // com.meishu.sdk.core.safe.o
                            public void safeOnClick(View view2) {
                                super.safeOnClick(view2);
                                b1.a(MeishuRewardH5Activity.adSlot, 20);
                            }
                        }).build().show();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        };
        View view = iVarB.f31521d;
        if (view != null) {
            view.setOnClickListener(oVar);
        }
        i iVarB2 = iVar.b(R.id.ms_reward_back_layout);
        o oVar2 = new o() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.2
            @Override // com.meishu.sdk.core.safe.o
            public void safeOnClick(View view2) {
                super.safeOnClick(view2);
                if (MeishuRewardH5Activity.wrapper == null || MeishuRewardH5Activity.wrapper.f32154a == null || !MeishuRewardH5Activity.wrapper.f32154a.canGoBack()) {
                    return;
                }
                if (!q.a(MeishuRewardH5Activity.wrapper.f32154a.getUrl())) {
                    MeishuRewardH5Activity.wrapper.f32154a.goBack();
                    return;
                }
                MeishuRewardH5Activity.wrapper.f32154a.goBack();
                try {
                    MeishuRewardH5Activity.wrapper.f32154a.goBack();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        };
        View view2 = iVarB2.f31521d;
        if (view2 != null) {
            view2.setOnClickListener(oVar2);
        }
        this.touchContainer.setTouchPositionListener(new TouchPositionListener(nativeAdData) { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.3
            @Override // com.meishu.sdk.core.view.TouchPositionListener
            public boolean onTouch(View view3, MotionEvent motionEvent) {
                if (MeishuRewardH5Activity.wrapper != null && MeishuRewardH5Activity.wrapper.f32155b != null) {
                    MeishuRewardH5Activity.wrapper.f32155b.f32114f = true;
                }
                try {
                    return super.onTouch(view3, motionEvent);
                } finally {
                    if (motionEvent != null && motionEvent.getAction() == 1 && !q.a(MeishuRewardH5Activity.this.curWebUrl)) {
                        LogUtil.dev(MeishuRewardH5Activity.TAG, "touchContainer onClick");
                        if (isClickEvent(motionEvent.getX(), motionEvent.getY()) && MeishuRewardH5Activity.this.h5ClickChecker != null && MeishuRewardH5Activity.this.h5ClickChecker.a(motionEvent.getX(), motionEvent.getY())) {
                            com.meishu.sdk.core.utils.f.a(MeishuRewardH5Activity.nativeAdData, MeishuRewardH5Activity.adSlot);
                            MeishuRewardH5Activity.this.sendBroadcast("broadcast_onclick", true);
                        }
                    }
                }
            }
        });
        wrapper.f32155b.f32115g = new com.meishu.sdk.core.webview.listener.f() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.4
            @Override // com.meishu.sdk.core.webview.listener.f
            public void onDPStart() {
                com.meishu.sdk.core.utils.f.b(MeishuRewardH5Activity.adSlot, MeishuRewardH5Activity.nativeAdData);
                try {
                    b1.a(MeishuRewardH5Activity.adSlot, 22, 0, MeishuOpenDeepLinkActivity.KEY_DEEP_START);
                } catch (Exception unused) {
                }
            }

            @Override // com.meishu.sdk.core.webview.listener.f
            public void onJumpDPRes(boolean z2, boolean z3) {
                LogUtil.dev(MeishuRewardH5Activity.TAG, "onJumpDPRes:" + z2 + " showedSysDialog:" + z3);
                if (z2) {
                    com.meishu.sdk.core.utils.f.a(MeishuRewardH5Activity.adSlot, MeishuRewardH5Activity.this, MeishuRewardH5Activity.nativeAdData, z3);
                    try {
                        b1.a(MeishuRewardH5Activity.adSlot, 23, 0, MeishuOpenDeepLinkActivity.KEY_DEEP_START);
                    } catch (Exception unused) {
                    }
                }
            }
        };
    }

    private void initStateByWebView() {
        g gVar;
        s sVar = wrapper;
        if (sVar != null && (gVar = sVar.f32156c) != null) {
            gVar.a(new com.meishu.sdk.core.webview.listener.g() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.5
                @Override // com.meishu.sdk.core.webview.listener.g
                public boolean onPageFinished(String str, boolean z2, boolean z3, int i2) {
                    LogUtil.dev(MeishuRewardH5Activity.TAG, "onPageFinished: " + str + " code:" + i2);
                    MeishuRewardH5Activity.this.curWebUrl = str;
                    return true;
                }

                @Override // com.meishu.sdk.core.webview.listener.g
                public void onPageStarted(String str) {
                    MeishuRewardH5Activity.this.runOnUiThread(new l() { // from class: com.meishu.sdk.activity.MeishuRewardH5Activity.5.1
                        @Override // com.meishu.sdk.core.safe.l
                        public void safeRun() {
                            super.safeRun();
                            MeishuRewardH5Activity.this.bQuery.b(R.id.ms_reward_back_layout).d(MeishuRewardH5Activity.wrapper.f32154a.canGoBack() ? 0 : 8);
                        }
                    });
                }
            });
        }
        this.bQuery.b(R.id.ms_reward_back_layout).d(wrapper.f32154a.canGoBack() ? 0 : 8);
    }

    public static boolean isValid(String str) {
        try {
            s sVar = wrapper;
            if (sVar != null && sVar.f32154a != null && sVar.f32155b != null && sVar.f32156c != null && adSlot != null && nativeAdData != null && !TextUtils.isEmpty(str)) {
                if (str.equals(adSlot.getReq_id())) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private void pause() {
        try {
            this.mHandler.removeCallbacks(this.updateTime);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void resume() {
        try {
            pause();
            if (this.onReward) {
                return;
            }
            this.mHandler.post(this.updateTime);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBroadcast(String str) {
        sendBroadcast(str, false);
    }

    public static void setRewardH5Data(s sVar, d dVar) {
        wrapper = sVar;
        nativeAdData = dVar;
        adSlot = dVar != null ? dVar.f32379i : null;
        updateWebViewContext(AdSdk.getContext() != null ? AdSdk.getContext().getApplicationContext() : null);
        updateMediaViewContext(AdSdk.getContext() != null ? AdSdk.getContext().getApplicationContext() : null);
    }

    private void startReport() {
        try {
            LogUtil.d(TAG, "send onVideoStart");
            if (this.isStarted) {
                return;
            }
            String[] strArr = adSlot.f32398j;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
            this.isStarted = true;
            b1.a(adSlot, 16);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void startUpdateProcess() {
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        startReport();
        this.mHandler.post(this.updateTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountDownText(int i2) {
        this.bQuery.b(R.id.ms_reward_content_txt).a("奖励将于 " + i2 + " 秒后发放");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void updateMediaViewContext(android.content.Context r3) {
        /*
            com.meishu.sdk.meishu_ad.nativ.d r0 = com.meishu.sdk.activity.MeishuRewardH5Activity.nativeAdData     // Catch: java.lang.Exception -> L2c
            if (r0 == 0) goto Ld
            com.meishu.sdk.meishu_ad.n0 r0 = r0.f32378h     // Catch: java.lang.Exception -> L2c
            boolean r1 = r0 instanceof com.meishu.sdk.meishu_ad.nativ.NormalMediaView     // Catch: java.lang.Exception -> L2c
            if (r1 == 0) goto Ld
            com.meishu.sdk.meishu_ad.nativ.NormalMediaView r0 = (com.meishu.sdk.meishu_ad.nativ.NormalMediaView) r0     // Catch: java.lang.Exception -> L2c
            goto Le
        Ld:
            r0 = 0
        Le:
            if (r0 != 0) goto L11
            goto L2b
        L11:
            android.content.Context r1 = r0.getContext()     // Catch: java.lang.Exception -> L2c
            boolean r1 = r1 instanceof android.content.ContextWrapper     // Catch: java.lang.Exception -> L2c
            if (r1 == 0) goto L2b
            java.lang.Class<android.content.ContextWrapper> r1 = android.content.ContextWrapper.class
            java.lang.String r2 = "mBase"
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Exception -> L2c
            com.meishu.sdk.core.utils.ReflectUtil.setValue(r1, r2, r0, r3)     // Catch: java.lang.Exception -> L2c
            java.lang.String r3 = com.meishu.sdk.activity.MeishuRewardH5Activity.TAG     // Catch: java.lang.Exception -> L2c
            java.lang.String r0 = "update m context"
            com.meishu.sdk.core.utils.LogUtil.d(r3, r0)     // Catch: java.lang.Exception -> L2c
        L2b:
            return
        L2c:
            r3 = move-exception
            r3.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.activity.MeishuRewardH5Activity.updateMediaViewContext(android.content.Context):void");
    }

    private static void updateWebViewContext(Context context) {
        WebView webView;
        try {
            s sVar = wrapper;
            if (sVar == null || (webView = sVar.f32154a) == null || !(webView.getContext() instanceof ContextWrapper)) {
                return;
            }
            ReflectUtil.setValue(ContextWrapper.class, "mBase", wrapper.f32154a.getContext(), context);
            LogUtil.d(TAG, "update w context");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void OneHalfReport() {
        try {
            LogUtil.d(TAG, "send onVideoOneHalf");
            String[] strArr = adSlot.f32400l;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void OneQuarterReport() {
        try {
            LogUtil.d(TAG, "send onVideoOneQuarter");
            String[] strArr = adSlot.f32399k;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void ThreeQuarterReport() {
        try {
            LogUtil.d(TAG, "send onVideoThreeQuarter");
            String[] strArr = adSlot.f32401m;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    public void onImageComplete() {
        sendBroadcast("broadcast_on_video_complete");
        try {
            LogUtil.d(TAG, "send onVideoComplete");
            String[] strArr = adSlot.f32402n;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        LogUtil.dev(TAG, "onWindowFocusChanged hasWindowFocus:" + z2 + " attachWindow:" + this.attachWindow);
        boolean z3 = this.attachWindow;
        if (z3 && z2) {
            resume();
        } else {
            if (!z3 || z2) {
                return;
            }
            pause();
        }
    }

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnAttachedToWindow() {
        super.safeOnAttachedToWindow();
        this.attachWindow = true;
    }

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnCreate(Bundle bundle) {
        super.safeOnCreate(bundle);
        getWindow().getDecorView().setSystemUiVisibility(3330);
        ShakeUtil.getInstance().e();
        setContentView(R.layout.ms_activity_meishu_reward_h5);
        this.touchContainer = (TouchAdContainer) findViewById(R.id.ms_activity_reward_h5_touch_ad_container);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.ms_reward_h5_container);
        this.h5ClickChecker = new t1(viewGroup);
        this.bQuery = new i((Activity) this);
        if ((getResources().getConfiguration().uiMode & 48) == 32) {
            View view = this.bQuery.b(R.id.ms_reward_h5_bg).f31521d;
            if (view != null) {
                view.setBackgroundColor(-16777216);
            }
            this.bQuery.b(R.id.ms_reward_back).c(R.drawable.ms_ic_back_white);
        } else {
            View view2 = this.bQuery.b(R.id.ms_reward_h5_bg).f31521d;
            if (view2 != null) {
                view2.setBackgroundColor(-1);
            }
            this.bQuery.b(R.id.ms_reward_back).c(R.drawable.ms_ic_back_black);
        }
        initClickEvent(this.bQuery);
        this.bQuery.b(R.id.ms_reward_close_button_parent).d(0);
        i iVarB = this.bQuery.a(R.id.ms_include_ad_tag).b(R.id.ms_img_meishu_ad_tag);
        int i2 = R.drawable.ms_bg_alpha_rect_40_radius4;
        View view3 = iVarB.f31521d;
        if (view3 != null) {
            if (i2 != 0) {
                view3.setBackgroundResource(i2);
            } else {
                view3.setBackgroundDrawable(null);
            }
        }
        f fVar = adSlot;
        if (fVar != null && !TextUtils.isEmpty(fVar.getFromLogo())) {
            this.bQuery.a(R.id.ms_include_ad_tag).b(R.id.ms_img_meishu_ad_tag).a(adSlot.getFromLogo(), false);
            this.bQuery.a(R.id.ms_include_ad_tag_end).b(R.id.ms_img_meishu_ad_tag).a(adSlot.getFromLogo(), false);
        }
        updateWebViewContext(this);
        initStateByWebView();
        viewGroup.addView(wrapper.f32154a, new RelativeLayout.LayoutParams(-1, -1));
        long j2 = adSlot.f32397i * 1000;
        if (j2 > 0) {
            this.totalTime = (int) j2;
        } else {
            this.totalTime = 15000;
        }
        updateCountDownText(this.totalTime / 1000);
        sendBroadcast("broadcast_on_video_start");
        startUpdateProcess();
    }

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnDestroy() {
        super.safeOnDestroy();
        b1.a(adSlot, 21);
        clear();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.updateTime);
            this.mHandler = null;
        }
    }

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnDetachedFromWindow() {
        super.safeOnDetachedFromWindow();
        this.attachWindow = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBroadcast(String str, boolean z2) {
        Intent intent = new Intent();
        intent.setAction(str);
        if (z2) {
            intent.putExtra("clk_act_type", 1);
            intent.putExtra("clk_power", 0);
            intent.putExtra("image_width", 0);
            intent.putExtra("image_height", 0);
        }
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }
}
