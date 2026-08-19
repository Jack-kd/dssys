package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView;
import com.beizi.fusion.q0;
import com.beizi.fusion.r0;
import com.beizi.fusion.zf;
import java.util.List;

/* loaded from: classes2.dex */
public class LandingPageWebView extends BasicWebView {

    /* renamed from: b, reason: collision with root package name */
    private boolean f12749b;

    /* renamed from: c, reason: collision with root package name */
    private List f12750c;

    public LandingPageWebView(@NonNull Context context) {
        super(context);
        this.f12749b = false;
    }

    private boolean b(String str) {
        List list;
        if (!TextUtils.isEmpty(str) && (list = this.f12750c) != null && !list.isEmpty()) {
            for (String str2 : this.f12750c) {
                if (str2 != null && !str2.isEmpty() && str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void e() {
        q0 q0Var = (q0) r0.a().b(getContext().getApplicationContext());
        if (q0Var != null) {
            this.f12750c = q0Var.c();
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView
    public boolean a(String str) {
        if (str.startsWith("http")) {
            return true;
        }
        if (!this.f12749b || b(str)) {
            return false;
        }
        BasicWebView.d dVar = this.f12747a;
        if (dVar != null) {
            dVar.a(getContext(), str, b());
            return false;
        }
        zf.a(getContext(), str);
        return false;
    }

    public void setAllowDeeplinkDirect(boolean z2) {
        this.f12749b = z2;
    }

    public LandingPageWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12749b = false;
        e();
    }

    public LandingPageWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12749b = false;
        e();
    }

    public LandingPageWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f12749b = false;
        e();
    }
}
