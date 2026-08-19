package com.fl.saas.adx.base.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.fl.saas.K;
import com.fl.saas.R;
import com.fl.saas.adx.base.inner.FLAdTempHelper;
import com.fl.saas.adx.base.interfaces.SpreadLoadListener;
import com.fl.saas.adx.util.DeviceUtil;

/* loaded from: classes3.dex */
public class FLSpreadActivity extends Activity {
    private String id;

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fl_adx_activity_spread);
        try {
            this.id = getIntent().getStringExtra("id");
            FLAdTempHelper.getInstance().addSpreadListener(this.id, new FLAdTempHelper.SpreadActivityListener() { // from class: com.fl.saas.adx.base.activity.b
                @Override // com.fl.saas.adx.base.inner.FLAdTempHelper.SpreadActivityListener
                public final void closeActivity() {
                    this.f30121a.finish();
                }
            });
            K.a(this);
            K.a(this, false);
            if (Build.VERSION.SDK_INT != 26) {
                if (DeviceUtil.getOrientation(this) == 2) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(7);
                }
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fl_root);
            SpreadLoadListener.SpreadAd spreadAd = FLAdTempHelper.getInstance().getSpreadAd();
            if (spreadAd == null || frameLayout == null) {
                finish();
            } else {
                spreadAd.show(frameLayout);
            }
        } catch (Throwable unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        FLAdTempHelper.getInstance().removeSpreadListener(this.id);
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
