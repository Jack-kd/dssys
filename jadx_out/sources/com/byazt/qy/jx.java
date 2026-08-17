package com.byazt.qy;

import android.util.SparseArray;
import com.byazt.wi.j;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 1010, 30})
/* loaded from: classes3.dex */
public final class jx {
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final int f25078j;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f25079l;

    /* renamed from: w, reason: collision with root package name */
    public final String f25080w;

    public jx(String str, String str2, int i2, int i3, String str3) {
        this.hp = str;
        this.f25079l = str2;
        this.jx = i2;
        this.f25078j = i3;
        this.f25080w = str3;
    }

    public SparseArray<Object> hp() {
        j jVarHp = j.hp();
        jVarHp.hp(8003, this.hp);
        jVarHp.hp(2, this.f25079l);
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes, Integer.valueOf(this.jx));
        jVarHp.hp(8094, Integer.valueOf(this.f25078j));
        jVarHp.hp(8547, this.f25080w);
        if (com.byazt.di.hp.jl().ky() != null) {
            HashMap map = new HashMap();
            map.put("live_ad_custom_config", com.byazt.di.hp.jl().ky());
            jVarHp.hp(8075, map);
        }
        return jVarHp.l();
    }

    public int l() {
        return this.jx;
    }
}
