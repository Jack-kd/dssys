package com.byazt.jt;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, 38})
/* loaded from: classes.dex */
public class j {
    public final PluginValueSet pluginValueSet;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public final com.byazt.xi.hp hp = com.byazt.xi.hp.hp();

        public hp a(boolean z2) {
            this.hp.hp(262110, z2);
            return this;
        }

        public hp eb(boolean z2) {
            this.hp.hp(262111, z2);
            return this;
        }

        public hp hp(boolean z2) {
            this.hp.hp(262101, z2);
            return this;
        }

        public hp j(boolean z2) {
            this.hp.hp(262106, z2);
            return this;
        }

        public hp jx(boolean z2) {
            this.hp.hp(262104, z2);
            return this;
        }

        public hp l(boolean z2) {
            this.hp.hp(262103, z2);
            return this;
        }

        public hp w(boolean z2) {
            this.hp.hp(262108, z2);
            return this;
        }

        public hp hp(jx jxVar) {
            this.hp.hp(262102, jxVar);
            return this;
        }

        public hp j(String str) {
            this.hp.hp(262112, str);
            return this;
        }

        public hp jx(String str) {
            this.hp.hp(262109, str);
            return this;
        }

        public hp l(String str) {
            this.hp.hp(262107, str);
            return this;
        }

        public hp hp(String str) {
            this.hp.hp(262105, str);
            return this;
        }

        public j hp() {
            return new j(this.hp.l().sparseArray());
        }
    }

    public j(SparseArray<Object> sparseArray) {
        this.pluginValueSet = com.byazt.xi.hp.hp(sparseArray).l();
    }

    public boolean alist() {
        return this.pluginValueSet.booleanValue(262103);
    }

    public String getAndroidId() {
        return (String) this.pluginValueSet.objectValue(262112, String.class);
    }

    public String getDevImei() {
        return (String) this.pluginValueSet.objectValue(262105, String.class);
    }

    public String getDevOaid() {
        return (String) this.pluginValueSet.objectValue(262109, String.class);
    }

    public String getMacAddress() {
        return (String) this.pluginValueSet.objectValue(262107, String.class);
    }

    public com.byazt.bm.l getMediationPrivacyConfig() {
        SparseArray sparseArray = (SparseArray) this.pluginValueSet.objectValue(262113, SparseArray.class);
        if (sparseArray != null) {
            return new com.byazt.bm.l(sparseArray);
        }
        return null;
    }

    public jx getTTLocation() {
        SparseArray sparseArray = (SparseArray) this.pluginValueSet.objectValue(262102, SparseArray.class);
        if (sparseArray != null) {
            return new jx(sparseArray);
        }
        return null;
    }

    public boolean isCanUseAndroidId() {
        return this.pluginValueSet.booleanValue(262110);
    }

    public boolean isCanUseLocation() {
        return this.pluginValueSet.booleanValue(262101);
    }

    public boolean isCanUseMessage() {
        return this.pluginValueSet.booleanValue(262120);
    }

    public boolean isCanUsePermissionRecordAudio() {
        return this.pluginValueSet.booleanValue(262111);
    }

    public boolean isCanUsePhoneState() {
        return this.pluginValueSet.booleanValue(262104);
    }

    public boolean isCanUseWifiState() {
        return this.pluginValueSet.booleanValue(262106);
    }

    public boolean isCanUseWriteExternal() {
        return this.pluginValueSet.booleanValue(262108);
    }

    public boolean isDefaultController() {
        return this.pluginValueSet.booleanValue(262121);
    }

    public Map<String, Object> userPrivacyConfig() {
        return (Map) this.pluginValueSet.objectValue(262119, Map.class);
    }
}
