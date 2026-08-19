package com.byazt.ewl;

import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1118, 38})
/* loaded from: classes2.dex */
public abstract class j extends com.byazt.rt.jx {

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.xl.hp f19527q;

    /* renamed from: s, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f19528s;

    public j(com.byazt.xl.hp hpVar) {
        this.f19527q = hpVar;
    }

    public static Integer isReadyStatus(Function<SparseArray<Object>, Object> function) {
        Integer numHp;
        if (function == null || (numHp = com.byazt.ktf.hp.hp(function.apply(com.byazt.wi.j.hp().hp(8121).hp(20068, 1).hp(Object.class).l()))) == null) {
            return 1;
        }
        return numHp;
    }

    @Override // com.byazt.rt.jx, com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 8128) {
            this.f19528s = (Function) pluginValueSet.objectValue(8035, Function.class);
        } else if (i2 == 8208) {
            String strStringValue = pluginValueSet.stringValue(8058);
            if (!TextUtils.isEmpty(strStringValue)) {
                setLevelTag(strStringValue);
            }
        } else if (i2 == 8209) {
            setImageMode(pluginValueSet.intValue(8060));
        } else if (i2 == 8140) {
            setInteractionType(pluginValueSet.intValue(8059));
        }
        return (T) callMethod(i2, pluginValueSet, cls);
    }

    @Override // com.byazt.rt.jx
    public void bidLoseNotify(Map<String, Object> map) {
        if (isClientBiddingAd() && this.f19528s != null) {
            this.f19528s.apply(com.byazt.wi.j.hp().hp(8144).hp(Void.class).hp(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void bidWinNotify(Map<String, Object> map) {
        if (isClientBiddingAd() && this.f19528s != null) {
            this.f19528s.apply(com.byazt.wi.j.hp().hp(8142).hp(Void.class).hp(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).l());
        }
    }

    public abstract <T> T callMethod(int i2, PluginValueSet pluginValueSet, Class<T> cls);

    @Override // com.byazt.rt.jx
    public long getAdId() {
        if (this.f19528s == null) {
            return super.getAdId();
        }
        Object objApply = this.f19528s.apply(com.byazt.wi.j.hp().hp(8246).hp(Long.class).l());
        if (objApply instanceof Long) {
            return ((Long) objApply).longValue();
        }
        return 0L;
    }

    @Override // com.byazt.rt.jx
    public long getCreativeId() {
        if (this.f19528s == null) {
            return super.getCreativeId();
        }
        Object objApply = this.f19528s.apply(com.byazt.wi.j.hp().hp(8245).hp(Long.class).l());
        if (objApply instanceof Long) {
            return ((Long) objApply).longValue();
        }
        return 0L;
    }

    @Override // com.byazt.rt.jx
    public Map<String, Object> getMediaExtraInfo() {
        if (this.f19528s != null) {
            Object objApply = this.f19528s.apply(com.byazt.wi.j.hp().hp(8239).hp(Map.class).l());
            setMediaExtraInfo(objApply instanceof Map ? (Map) objApply : null);
        }
        return super.getMediaExtraInfo();
    }

    @Override // com.byazt.rt.jx
    public boolean hasDestroyed() {
        if (this.f19528s == null) {
            return false;
        }
        this.f19528s.apply(com.byazt.wi.j.hp().hp(8120).hp(Boolean.class).l());
        return false;
    }

    public boolean isClientBidding() {
        com.byazt.xl.hp hpVar = this.f19527q;
        if (hpVar != null) {
            return hpVar.hp();
        }
        return false;
    }

    @Override // com.byazt.rt.jx
    public void onDestroy() {
        super.onDestroy();
        if (this.f19528s != null) {
            this.f19528s.apply(com.byazt.wi.j.hp().hp(8109).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void onPause() {
        super.onPause();
        if (this.f19528s != null) {
            this.f19528s.apply(com.byazt.wi.j.hp().hp(8149).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void onResume() {
        super.onResume();
        if (this.f19528s != null) {
            this.f19528s.apply(com.byazt.wi.j.hp().hp(8148).hp(Void.class).l());
        }
    }
}
