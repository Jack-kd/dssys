package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class SplashShakeTextHintView extends ShakeTextHintView {
    public SplashShakeTextHintView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeTextHintView, com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void a() {
        setOrientation(0);
        setGravity(17);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        int iA = k.a(getContext(), 4.0f);
        setPadding(iA, iA, iA, iA);
        Context contextD = SDKContext.getInstance().d();
        int iA2 = k.a(contextD, "myoffer_shake_text_hint_img", "id");
        int iA3 = k.a(contextD, "myoffer_shake_text_hint_title", "id");
        this.f43316a = (ImageView) findViewById(iA2);
        TextView textView = (TextView) findViewById(iA3);
        this.f43585m = textView;
        if (textView != null) {
            textView.setGravity(17);
            this.f43585m.setTextAlignment(4);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeTextHintView
    public int getLayoutId() {
        return k.a(getContext(), "myoffer_shake_text_hint_splash", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeTextHintView, com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setShakeSetting(e eVar, int i2) {
        setShakeSetting(eVar, i2, null);
    }

    public void setTextSize(int i2) {
        TextView textView = this.f43585m;
        if (textView != null) {
            textView.setTextSize(1, i2);
        }
    }

    public SplashShakeTextHintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setShakeSetting(e eVar, int i2, c cVar) {
        super.setShakeSetting(eVar, i2);
        if (this.f43585m == null) {
            return;
        }
        String str = "摇动或点击下载应用";
        if ((cVar instanceof com.smartdigimkt.m3.k) && ((com.smartdigimkt.m3.k) cVar).f42046g0 == 3) {
            if (!TextUtils.isEmpty(this.f43323h)) {
                this.f43585m.setText(this.f43323h);
                return;
            }
            int iA = z.a(getContext(), i2);
            if (iA > 0) {
                this.f43585m.setText(iA);
                return;
            }
            TextView textView = this.f43585m;
            if (i2 != 1 && i2 != 4) {
                str = "摇动或点击查看详情";
            }
            textView.setText(str);
            return;
        }
        if (!TextUtils.isEmpty(this.f43322g)) {
            this.f43585m.setText(this.f43322g);
            return;
        }
        int iA2 = z.a(getContext(), i2);
        if (iA2 > 0) {
            str = "";
        } else if (i2 != 1 && i2 != 4) {
            str = "摇动或点击查看详情";
        }
        if (iA2 > 0) {
            this.f43585m.setText(iA2);
        } else {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f43585m.setText(str);
        }
    }

    public SplashShakeTextHintView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public SplashShakeTextHintView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
