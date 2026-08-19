package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.RequiresPermission;
import java.util.Map;

/* loaded from: classes2.dex */
public class SplashAd {

    /* renamed from: a, reason: collision with root package name */
    private io f12553a;

    /* renamed from: b, reason: collision with root package name */
    private ViewGroup f12554b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12555c = false;

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public SplashAd(Context context, View view, String str, AdListener adListener, long j2) {
        this.f12553a = new io(context, str, view, adListener, j2);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f12554b = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    public void cancel(Context context) {
        io ioVar = this.f12553a;
        if (ioVar != null) {
            ioVar.c();
        }
    }

    public String getCustomExtraData() {
        io ioVar = this.f12553a;
        if (ioVar == null) {
            return null;
        }
        return ioVar.r();
    }

    public String getCustomExtraJsonData() {
        io ioVar = this.f12553a;
        if (ioVar == null) {
            return null;
        }
        return ioVar.s();
    }

    public int getECPM() {
        io ioVar = this.f12553a;
        if (ioVar != null) {
            return ioVar.Y();
        }
        return -1;
    }

    public Map getExtraData() {
        io ioVar = this.f12553a;
        if (ioVar == null) {
            return null;
        }
        return ioVar.Z();
    }

    public boolean isValid() {
        io ioVar = this.f12553a;
        if (ioVar == null) {
            return false;
        }
        return ioVar.J();
    }

    public void loadAd(int i2, int i3) throws InterruptedException {
        io ioVar = this.f12553a;
        if (ioVar == null || this.f12554b == null) {
            return;
        }
        ioVar.d(i2);
        this.f12553a.c(i3);
        this.f12553a.a(this.f12554b);
    }

    public void reportNotShow() {
        io ioVar = this.f12553a;
        if (ioVar != null) {
            ioVar.c0();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        io ioVar = this.f12553a;
        if (ioVar == null || map == null) {
            return;
        }
        ioVar.a(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        io ioVar = this.f12553a;
        if (ioVar == null || map == null) {
            return;
        }
        ioVar.b(map);
    }

    public void setBidResponse(String str) {
        io ioVar = this.f12553a;
        if (ioVar == null) {
            return;
        }
        ioVar.m(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        io ioVar = this.f12553a;
        if (ioVar == null) {
            return;
        }
        ioVar.c(map);
    }

    public void setSupportRegionClick(boolean z2) {
        io ioVar = this.f12553a;
        if (ioVar != null) {
            ioVar.a(z2);
        }
    }

    public void show(ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (this.f12555c) {
            return;
        }
        if (viewGroup == null) {
            Log.e("BeiZis", "parent can't be null !");
            return;
        }
        if (this.f12553a == null || (viewGroup2 = this.f12554b) == null) {
            return;
        }
        try {
            if (!(viewGroup2.getContext() instanceof Activity)) {
                this.f12553a.a(viewGroup.getContext());
            }
        } catch (Throwable unused) {
        }
        viewGroup.addView(this.f12554b);
        this.f12553a.d0();
        this.f12555c = true;
    }

    @Deprecated
    public void loadAd() throws InterruptedException {
        ViewGroup viewGroup;
        io ioVar = this.f12553a;
        if (ioVar == null || (viewGroup = this.f12554b) == null) {
            return;
        }
        ioVar.a(viewGroup);
    }
}
