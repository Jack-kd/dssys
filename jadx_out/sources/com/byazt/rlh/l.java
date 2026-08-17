package com.byazt.rlh;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.sno.hp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 34})
/* loaded from: classes3.dex */
public abstract class l extends com.byazt.vne.l {
    public static final int CLICK_TIMES = 60;
    public static final int SHOW_TIMES = 2;

    /* renamed from: a, reason: collision with root package name */
    public boolean f25241a;

    /* renamed from: e, reason: collision with root package name */
    public String f25242e;
    public int eb;
    public com.byazt.iqm.l gu;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.xl.l f25243j;
    public Function<SparseArray<Object>, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.qy.jx f25244l;

    /* renamed from: q, reason: collision with root package name */
    public String f25245q;

    /* renamed from: s, reason: collision with root package name */
    public int f25246s;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, Object> f25247w;

    public l(String str, com.byazt.ewl.l lVar) {
        super(lVar);
        this.f25247w = new ConcurrentHashMap();
        this.f25241a = false;
        this.eb = 0;
        this.f25246s = 0;
        this.f25242e = str;
    }

    @Override // com.byazt.vne.l, com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 8221) {
            this.jx = (Function) pluginValueSet.objectValue(8405, Function.class);
        } else {
            if (i2 == 8137) {
                T t2 = (T) getAdm();
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom loader : getAdm = ".concat(String.valueOf(t2)));
                return t2;
            }
            if (i2 == 8224) {
                T t3 = (T) getExtraDataNoParse();
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom loader : getExtraDataNoParse = ".concat(String.valueOf(t3)));
                return t3;
            }
            if (i2 == 8226) {
                T t4 = (T) Integer.valueOf(getBiddingType());
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom loader : getBiddingType = ".concat(String.valueOf(t4)));
                return t4;
            }
            if (i2 == 8227 && pluginValueSet != null) {
                Map<String, Object> map = (Map) pluginValueSet.objectValue(8075, Map.class);
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom loader : setExtraInfo map =".concat(String.valueOf(map)));
                setExtraInfo(map);
            }
        }
        return (T) callManager(i2, pluginValueSet, cls);
    }

    public void callLoaderFail(int i2, String str) {
        notifyLoadFail(new com.byazt.dq.hp(i2, str));
    }

    public abstract <T> T callManager(int i2, PluginValueSet pluginValueSet, Class<T> cls);

    public final void checkClick(hp.InterfaceC0365hp interfaceC0365hp) {
        int i2 = this.f25246s;
        if (i2 >= 60) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.f25246s = i2 + 1;
        if (interfaceC0365hp != null) {
            interfaceC0365hp.hp();
        }
    }

    public final void checkLoadSuccess(hp.InterfaceC0365hp interfaceC0365hp) {
        if (!hasNotifySuccess()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter 调用错误需要在load成功之后才可以调用");
        } else if (interfaceC0365hp != null) {
            interfaceC0365hp.hp();
        }
    }

    public final void checkShow(hp.InterfaceC0365hp interfaceC0365hp) {
        if (!this.f25241a) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i2 = this.eb;
        if (i2 >= 2) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.eb = i2 + 1;
        if (interfaceC0365hp != null) {
            interfaceC0365hp.hp();
        }
    }

    public String getAdm() {
        com.byazt.xl.l lVar = this.f25243j;
        return lVar != null ? lVar.di() : "";
    }

    public int getBiddingType() {
        com.byazt.xl.l lVar = this.f25243j;
        if (lVar != null) {
            return lVar.ec();
        }
        return 0;
    }

    public Object getExtraDataNoParse() {
        com.byazt.xl.l lVar = this.f25243j;
        return lVar != null ? lVar.pu() : "";
    }

    @Override // com.byazt.ewl.hp
    public String getSdkVersion(String str) {
        return this.f25245q;
    }

    public void hp(com.byazt.rt.jx jxVar, double d2, Map<String, Object> map) {
        if (d2 > 0.0d && getBiddingType() == 1) {
            jxVar.setCpm(d2);
        }
        if (map != null) {
            this.f25247w.putAll(map);
        }
        jxVar.putExtraMsg(this.f25247w);
        notifyLoadSuccess(jxVar);
    }

    public Integer isReadyStatus() {
        if (this.jx == null) {
            return 1;
        }
        Integer numHp = com.byazt.ktf.hp.hp(this.jx.apply(com.byazt.wi.j.hp().hp(8121).hp(Object.class).hp(20068, 1).l()));
        if (numHp == null) {
            return 1;
        }
        return numHp;
    }

    public void mediationCallShow() {
        this.f25241a = true;
    }

    @Override // com.byazt.vne.l
    public void notifyLoadSuccess(com.byazt.rt.jx jxVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(jxVar);
        notifyLoadSuccess(arrayList);
    }

    public void onDestroy() {
        if (this.jx != null) {
            this.jx.apply(com.byazt.wi.j.hp().hp(8109).hp(Void.class).l());
        }
    }

    public void onPause() {
        if (this.jx != null) {
            this.jx.apply(com.byazt.wi.j.hp().hp(8149).hp(Void.class).l());
        }
    }

    public void onResume() {
        if (this.jx != null) {
            this.jx.apply(com.byazt.wi.j.hp().hp(8148).hp(Void.class).l());
        }
    }

    public void receiveBidResult(boolean z2, double d2, int i2, Map<String, Object> map) {
        if (this.jx != null) {
            this.jx.apply(com.byazt.wi.j.hp().hp(8225).hp(Void.class).hp(8406, Boolean.valueOf(z2)).hp(8407, Double.valueOf(d2)).hp(8408, Integer.valueOf(i2)).hp(8075, map).l());
        }
    }

    public void setExtraInfo(Map<String, Object> map) {
        if (map != null) {
            this.f25247w.clear();
            this.f25247w.putAll(map);
        }
    }

    @Override // com.byazt.vne.l
    public final void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        this.f25243j = lVar;
        this.gu = lVar2;
        this.f25244l = new com.byazt.qy.jx(lVar.ns(), lVar.jl(), lVar.k(), lVar.v(), lVar.r());
        com.byazt.qyg.hp hpVarHp = com.byazt.uhd.hp.hp(lVar.zy());
        this.f25245q = hpVarHp != null ? hpVarHp.getNetworkSdkVersion() : "";
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this);
        if (com.byazt.owd.l.hp() >= 5900) {
            jVarHp.hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.byazt.aw.hp.hp(context));
        } else {
            jVarHp.hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        }
        jVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, this.f25242e);
        jVarHp.hp(8546, com.byazt.kd.j.hp(this.f25244l.hp()));
        if (lVar2.pu() != null) {
            jVarHp.hp(8548, com.byazt.kd.j.hp(lVar2.pu()));
        }
        Function<SparseArray<Object>, Object> functionA = com.byazt.ky.hp.hp().a();
        if (functionA == null) {
            notifyLoadFail(new com.byazt.dq.hp("Adn custom class loader is null"));
            return;
        }
        jVarHp.hp(Void.class);
        jVarHp.hp(8106);
        functionA.apply(jVarHp.l());
    }

    @Override // com.byazt.vne.l, com.byazt.ewl.l
    public void notifyLoadSuccess(List<com.byazt.rt.jx> list) {
        for (com.byazt.rt.jx jxVar : list) {
            jxVar.setMediaExtraInfo(this.f25247w);
            jxVar.setAdType(this.f25243j.o());
        }
        super.notifyLoadSuccess(list);
    }
}
