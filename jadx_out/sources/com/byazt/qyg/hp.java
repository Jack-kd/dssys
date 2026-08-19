package com.byazt.qyg;

import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.hde.j;
import com.byazt.qy.l;
import com.byazt.uhd.jx;
import com.byazt.uhd.w;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2068, 28})
/* loaded from: classes3.dex */
public class hp extends j {
    public static final String jx = "TTMediationSDK_" + hp.class.getSimpleName();
    public Function<SparseArray<Object>, Object> eb;

    /* renamed from: j, reason: collision with root package name */
    public l f25089j;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicBoolean f25091w = new AtomicBoolean(false);
    public long hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f25090l = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f25088a = jx.hp(com.byazt.di.hp.jl().r()).hp();

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 8216) {
            this.eb = (Function) pluginValueSet.objectValue(8402, Function.class);
        } else if (i2 == 8219) {
            callInitSuccess();
        } else {
            if (i2 == 8220) {
                return (T) Boolean.valueOf(isInit());
            }
            if (i2 == 8270) {
                long jLongValue = pluginValueSet.longValue(8073);
                this.f25090l = pluginValueSet.intValue(8557);
                this.hp = jLongValue;
            }
        }
        return (T) com.byazt.ror.hp.hp(cls);
    }

    public final void callInitSuccess() {
        this.f25091w.set(true);
    }

    public void clearInitStatus() {
        this.f25090l = 0;
        this.hp = 0L;
    }

    public String getAdapterSdkVersion() {
        return "0.0";
    }

    @Nullable
    public String getBiddingToken(Context context, Map<String, Object> map) {
        if (this.eb == null) {
            return null;
        }
        Object objApply = this.eb.apply(com.byazt.wi.j.hp().hp(8139).hp(String.class).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).hp(8075, map).l());
        return objApply instanceof String ? (String) objApply : "";
    }

    public String getNetworkSdkVersion() {
        if (this.eb == null) {
            return null;
        }
        Object objApply = this.eb.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsLoaderFactoryP2PStragetyLevel).hp(String.class).l());
        return objApply instanceof String ? (String) objApply : "";
    }

    @Nullable
    public String getSdkInfo(Context context, Map<String, Object> map) {
        if (this.eb == null) {
            return null;
        }
        Object objApply = this.eb.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsLoaderFactoryXYLibValue).hp(String.class).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).hp(8075, map).l());
        return objApply instanceof String ? (String) objApply : "";
    }

    public long initDuration() {
        return this.hp;
    }

    public int initStatus() {
        return this.f25090l;
    }

    public void initializeADN(Context context, l lVar, Map<String, Object> map) {
        if (lVar != null) {
            com.byazt.wi.j jVarHp = com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsLiveLoaderEnable).hp(Void.class).hp(8089, com.byazt.di.hp.jl().r().sparseArray()).hp(8545, com.byazt.kd.j.hp(lVar.hp())).hp(8400, map).hp(8401, this).hp(8098, Boolean.TRUE);
            w.hp(jVarHp);
            this.f25088a.apply(jVarHp.l());
        }
    }

    public final void initializeInnerADN(Context context, l lVar, Map<String, Object> map) {
        this.f25091w.set(false);
        this.f25089j = lVar;
        initializeADN(context, lVar, map);
    }

    public final boolean isInit() {
        return this.f25091w.get();
    }
}
