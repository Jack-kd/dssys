package com.smartdigimkt.sdk.basead.ui.component;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.smartdigimkt.d2.a;
import com.smartdigimkt.d2.d;
import com.smartdigimkt.d2.g;
import com.smartdigimkt.d2.i;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.r2.m;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class CTAButtonLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f43801a;

    /* renamed from: b, reason: collision with root package name */
    public a f43802b;

    public CTAButtonLayout(Context context) {
        this(context, null);
    }

    public int a(c cVar, com.smartdigimkt.l3.a aVar, boolean z2) {
        String strValueOf = String.valueOf(aVar.f41628b);
        strValueOf.getClass();
        if (strValueOf.equals("1")) {
            return (z2 || aVar.f41644r.f41932f1 != 2) ? 1 : 3;
        }
        if (strValueOf.equals("3")) {
            return (TextUtils.equals("2", aVar.f41644r.f41981w) || !z.h(cVar, aVar)) ? aVar.f41644r.f41932f1 == 2 ? 3 : 1 : (z2 || aVar.f41644r.f41932f1 != 2) ? 1 : 3;
        }
        return 1;
    }

    public void activateSubCloseButton() {
        a aVar = this.f43802b;
        if (aVar != null) {
            aVar.c(this);
        }
    }

    public void changeMajorButtonBackground(Drawable drawable) {
        a aVar = this.f43802b;
        if (aVar != null) {
            aVar.a(drawable);
        }
    }

    public void changeMinorButtonStyle() {
        a aVar = this.f43802b;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public View getMajorCTAButtonView() {
        a aVar = this.f43802b;
        return aVar != null ? aVar.f39881a : this;
    }

    public String getMajorCTAText() {
        ScanningAnimButton scanningAnimButton;
        a aVar = this.f43802b;
        if (aVar != null && (scanningAnimButton = aVar.f39881a) != null) {
            scanningAnimButton.getText().toString();
        }
        return "";
    }

    public View getSubCloseView() {
        a aVar;
        if (this.f43801a != 3 || (aVar = this.f43802b) == null) {
            return null;
        }
        return aVar.f39882b;
    }

    public void initSetting(c cVar, com.smartdigimkt.l3.a aVar, boolean z2, m mVar) {
        int iA = a(cVar, aVar, z2);
        int i2 = this.f43801a;
        if (iA != i2) {
            if (i2 != 0) {
                removeAllViews();
            }
            this.f43801a = iA;
            a gVar = iA != 2 ? iA != 3 ? new g() : new d() : new i();
            this.f43802b = gVar;
            gVar.b(this);
        }
        a aVar2 = this.f43802b;
        if (aVar2 != null) {
            aVar2.a(this, cVar, aVar, z2, mVar);
        }
    }

    public boolean needInterceptCloseViewShow() {
        return this.f43801a == 3;
    }

    public void setMajorCTAText(String str) {
        ScanningAnimButton scanningAnimButton;
        a aVar = this.f43802b;
        if (aVar == null || (scanningAnimButton = aVar.f39881a) == null) {
            return;
        }
        scanningAnimButton.setText(str);
    }

    public CTAButtonLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CTAButtonLayout(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        setOrientation(0);
        this.f43801a = 0;
    }
}
