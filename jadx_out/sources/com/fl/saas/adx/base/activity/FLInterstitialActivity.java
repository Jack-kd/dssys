package com.fl.saas.adx.base.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.fl.saas.C1224v;
import com.fl.saas.K;
import com.fl.saas.R;
import com.fl.saas.adx.api.mixNative.NativeAdView;
import com.fl.saas.adx.base.inner.FLAdTempHelper;
import com.fl.saas.adx.base.inner.interstitial.InterstitialViewHelper;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class FLInterstitialActivity extends Activity {
    private String id;

    public static void startMe(Context context, String str) {
        if (context != null) {
            Intent intent = new Intent(context, (Class<?>) FLInterstitialActivity.class);
            intent.putExtra("id", str);
            context.startActivity(intent);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0023 -> B:24:0x0026). Please report as a decompilation issue!!! */
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            K.a(this);
            K.a(this, true);
            if (Build.VERSION.SDK_INT != 26) {
                if (DeviceUtil.getOrientation(this) == 2) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(7);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        try {
            setContentView(R.layout.fl_adx_activity_interstitial);
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl_root);
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fl_ad);
            this.id = getIntent().getStringExtra("id");
            InterstitialViewHelper interstitialHelper = FLAdTempHelper.getInstance().getInterstitialHelper(this.id);
            if (interstitialHelper != null) {
                relativeLayout.setBackgroundColor(Color.argb((int) ((Math.max(0.0d, Math.min(100.0d, interstitialHelper.getAlpha())) / 100.0d) * 255.0d), 0, 0, 0));
                interstitialHelper.setOnAdCloseListener(new InterstitialViewHelper.OnAdCloseListener() { // from class: com.fl.saas.adx.base.activity.a
                    @Override // com.fl.saas.adx.base.inner.interstitial.InterstitialViewHelper.OnAdCloseListener
                    public final void onClose() {
                        this.f30120a.finish();
                    }
                });
                interstitialHelper.readerAdView();
                NativeAdView nativeAdView = interstitialHelper.getNativeAdView();
                if (nativeAdView != null) {
                    frameLayout.addView(nativeAdView);
                    interstitialHelper.onActivityStart(this);
                    return;
                }
            }
            finish();
        } catch (Throwable th2) {
            LogcatUtil.debug(th2);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        FLAdTempHelper.getInstance().removeInterstitialHelper(this.id);
        C1224v.b().a();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
