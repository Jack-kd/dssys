package com.bytedance.sdk.openadsdk.mediation.bridge.valueset;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.kj.hp;
import com.byazt.lu.l;
import com.byazt.xi.jx;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 1583, 2070})
/* loaded from: classes3.dex */
public class MediationLoaderConfig {
    private ValueSet hp;

    private MediationLoaderConfig(ValueSet valueSet) {
        if (valueSet != null) {
            SparseArray sparseArray = (SparseArray) valueSet.objectValue(8424, SparseArray.class);
            ValueSet valueSetL = (sparseArray == null || sparseArray.size() <= 0) ? null : jx.hp((SparseArray<Object>) sparseArray).l();
            if (valueSetL != null) {
                this.hp = valueSetL;
            } else {
                this.hp = valueSet;
            }
        }
    }

    public static MediationLoaderConfig create(ValueSet valueSet) {
        return new MediationLoaderConfig(valueSet);
    }

    private boolean hp() {
        ValueSet valueSet = this.hp;
        return (valueSet == null || valueSet.isEmpty()) ? false : true;
    }

    public String getADNName() {
        return hp() ? this.hp.stringValue(8003) : "";
    }

    public ValueSet getAdSlotValueSet() {
        if (hp()) {
            return jx.hp((SparseArray<Object>) this.hp.objectValue(8548, SparseArray.class)).l();
        }
        return null;
    }

    public int getAdType() {
        if (hp()) {
            return this.hp.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
        }
        return 0;
    }

    public String getClassName() {
        return hp() ? this.hp.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow) : "";
    }

    public Context getContext() {
        if (hp()) {
            return (Context) this.hp.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class);
        }
        return null;
    }

    public Function<SparseArray<Object>, Object> getGMCustomAdLoader() {
        if (hp()) {
            return l.covertToFunction(this.hp.objectValue(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, Object.class));
        }
        return null;
    }

    public int getManagerLoaderType() {
        if (hp()) {
            return this.hp.intValue(8561);
        }
        return 0;
    }

    public ValueSet getMediationCustomServiceConfigValue() {
        if (hp()) {
            return jx.hp((SparseArray<Object>) this.hp.objectValue(8546, SparseArray.class)).l();
        }
        return null;
    }
}
