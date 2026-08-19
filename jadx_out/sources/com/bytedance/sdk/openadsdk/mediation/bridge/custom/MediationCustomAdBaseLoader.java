package com.bytedance.sdk.openadsdk.mediation.bridge.custom;

import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.ik.a;
import com.byazt.kj.hp;
import com.byazt.ta.l;
import com.byazt.xi.jx;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationLoaderConfig;
import java.util.Map;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1845})
/* loaded from: classes3.dex */
public abstract class MediationCustomAdBaseLoader extends com.byazt.lu.hp {
    public Function<SparseArray<Object>, Object> mGmAdLoader;

    private void hp() {
        if (this.mGmAdLoader != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(8405, this);
            sparseArray.put(-99999987, 8221);
            sparseArray.put(-99999985, String.class);
            this.mGmAdLoader.apply(sparseArray);
        }
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == 8241) {
            load((Context) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class), jx.hp((SparseArray<Object>) valueSet.objectValue(8424, SparseArray.class)).l());
        } else if (i2 == 8225) {
            a.jx(MediationConstant.TAG, "MediationCustomBaseLoader receiveBidResult");
            receiveBidResult(valueSet.booleanValue(8406), valueSet.doubleValue(8407), valueSet.intValue(8408), (Map) valueSet.objectValue(8075, Map.class));
        } else if (i2 == 8149) {
            a.jx(MediationConstant.TAG, "MediationCustomBaseLoader onPause");
            onPause();
        } else if (i2 == 8148) {
            a.jx(MediationConstant.TAG, "MediationCustomBaseLoader onPause");
            onResume();
        } else if (i2 == 8109) {
            a.jx(MediationConstant.TAG, "MediationCustomBaseLoader onDestroy");
            onDestroy();
        }
        return (T) callMethod(i2, valueSet, cls);
    }

    public final void callLoadFail(int i2, String str) {
        if (this.mGmAdLoader != null) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(8014, Integer.valueOf(i2));
            sparseArray.put(8015, str);
            sparseArray.put(-99999987, 8123);
            sparseArray.put(-99999985, String.class);
            this.mGmAdLoader.apply(sparseArray);
        }
    }

    public abstract <T> T callMethod(int i2, ValueSet valueSet, Class<T> cls);

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        return null;
    }

    public final String getAdm() {
        if (this.mGmAdLoader == null) {
            return "";
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 8137);
        sparseArray.put(-99999985, String.class);
        return (String) this.mGmAdLoader.apply(sparseArray);
    }

    public final int getBiddingType() {
        if (this.mGmAdLoader == null) {
            return 0;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 8226);
        sparseArray.put(-99999985, Integer.class);
        Integer num = (Integer) this.mGmAdLoader.apply(sparseArray);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final Object getExtraDataNoParse() {
        if (this.mGmAdLoader == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 8224);
        sparseArray.put(-99999985, Object.class);
        return this.mGmAdLoader.apply(sparseArray);
    }

    public final Bridge getGMBridge() {
        if (this.mGmAdLoader == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 8127);
        sparseArray.put(-99999985, Bridge.class);
        return (Bridge) this.mGmAdLoader.apply(sparseArray);
    }

    public final void load(Context context, ValueSet valueSet) {
        MediationLoaderConfig mediationLoaderConfigCreate = MediationLoaderConfig.create(valueSet);
        ValueSet adSlotValueSet = mediationLoaderConfigCreate.getAdSlotValueSet();
        loadInner(context, l.hp(adSlotValueSet != null ? adSlotValueSet.sparseArray() : new SparseArray<>()), new com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig(mediationLoaderConfigCreate.getMediationCustomServiceConfigValue()), mediationLoaderConfigCreate.getGMCustomAdLoader());
    }

    public abstract void load(Context context, AdSlot adSlot, com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig mediationCustomServiceConfig);

    public final void loadInner(Context context, AdSlot adSlot, com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig mediationCustomServiceConfig, Function<SparseArray<Object>, Object> function) {
        this.mGmAdLoader = function;
        hp();
        if (adSlot == null) {
            try {
                adSlot = new AdSlot.Builder().build();
            } catch (Exception e2) {
                a.hp(e2);
                return;
            }
        }
        load(context, adSlot, mediationCustomServiceConfig);
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void receiveBidResult(boolean z2, double d2, int i2, @Nullable Map<String, Object> map) {
    }

    public final void setMediaExtraInfo(Map<String, Object> map) {
        if (this.mGmAdLoader == null || map == null) {
            return;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(8075, map);
        sparseArray.put(-99999987, 8227);
        sparseArray.put(-99999985, Void.class);
        this.mGmAdLoader.apply(sparseArray);
    }

    public Integer hp(MediationConstant.AdIsReadyStatus adIsReadyStatus) {
        if (adIsReadyStatus == MediationConstant.AdIsReadyStatus.ADN_NO_READY_API) {
            return 1;
        }
        if (adIsReadyStatus == MediationConstant.AdIsReadyStatus.AD_IS_READY) {
            return 2;
        }
        if (adIsReadyStatus == MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED) {
            return 3;
        }
        if (adIsReadyStatus != MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY) {
            return 1;
        }
        return 4;
    }
}
