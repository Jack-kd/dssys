package com.byazt.fy;

import android.app.Activity;
import android.content.Context;
import com.byazt.jz.lv;
import com.byazt.nc.hp;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 60, 38})
/* loaded from: classes2.dex */
public abstract class j implements com.byazt.gog.jx {

    /* renamed from: d, reason: collision with root package name */
    public WeakReference<hp.InterfaceC0317hp> f20241d;

    /* renamed from: o, reason: collision with root package name */
    public boolean f20242o = true;

    private String s() {
        hp.InterfaceC0317hp interfaceC0317hp;
        com.byazt.nc.hp videoModel;
        WeakReference<hp.InterfaceC0317hp> weakReference = this.f20241d;
        if (weakReference == null || (interfaceC0317hp = weakReference.get()) == null || (videoModel = interfaceC0317hp.getVideoModel()) == null) {
            return null;
        }
        return videoModel.hp().toString();
    }

    @Override // com.byazt.gog.jx
    public void hp(Activity activity, boolean z2) {
    }

    public int sz() {
        return hashCode();
    }

    @Override // com.byazt.gog.jx
    public void hp(boolean z2) {
        this.f20242o = z2;
    }

    @Override // com.byazt.gog.jx
    public void hp(hp.InterfaceC0317hp interfaceC0317hp) {
        this.f20241d = new WeakReference<>(interfaceC0317hp);
    }

    public boolean hp(Context context, mp mpVar, String str) {
        if (!this.f20242o || !com.byazt.zn.w.hp(mpVar) || !lv.hp(context, mpVar, ky.j(str), str, s())) {
            return false;
        }
        TTNativePageActivity.hp(this);
        return true;
    }
}
