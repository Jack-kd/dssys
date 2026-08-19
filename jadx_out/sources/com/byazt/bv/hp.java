package com.byazt.bv;

import com.byazt.he.gu;
import com.byazt.he.w;
import com.byazt.sii.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.he.l {
    public final eb hp;
    public gu jx;

    /* renamed from: l, reason: collision with root package name */
    public w f18689l;

    public hp(eb ebVar) {
        this.hp = ebVar;
    }

    @Override // com.byazt.he.l
    public boolean alist() {
        return this.hp.alist();
    }

    @Override // com.byazt.he.l
    public boolean canRead(int i2) {
        return eb.canRead(this.hp, i2);
    }

    @Override // com.byazt.he.l
    public String getAndroidId() {
        return this.hp.getAndroidId();
    }

    @Override // com.byazt.he.l
    public String getDevImei() {
        return this.hp.getDevImei();
    }

    @Override // com.byazt.he.l
    public String getDevOaid() {
        return this.hp.getDevOaid();
    }

    @Override // com.byazt.he.l
    public String getMacAddress() {
        return this.hp.getMacAddress();
    }

    @Override // com.byazt.he.l
    public gu getMediationPrivacyConfig() {
        if (this.jx == null) {
            com.byazt.bm.l mediationPrivacyConfig = this.hp.getMediationPrivacyConfig();
            if (mediationPrivacyConfig == null) {
                return null;
            }
            this.jx = new j(mediationPrivacyConfig);
        }
        return this.jx;
    }

    @Override // com.byazt.he.l
    public w getTTLocation() {
        if (this.f18689l == null) {
            final com.byazt.jt.jx tTLocation = this.hp.getTTLocation();
            if (tTLocation == null) {
                return null;
            }
            this.f18689l = new w() { // from class: com.byazt.bv.hp.1
                @Override // com.byazt.he.w
                public double getLatitude() {
                    return tTLocation.hp();
                }

                @Override // com.byazt.he.w
                public double getLongitude() {
                    return tTLocation.l();
                }
            };
        }
        return this.f18689l;
    }

    @Override // com.byazt.he.l
    public boolean isCanUseAndroidId() {
        return this.hp.isCanUseAndroidId();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseLocation() {
        return this.hp.isCanUseLocation();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseMessage() {
        return this.hp.isCanUseMessage();
    }

    @Override // com.byazt.he.l
    public boolean isCanUsePermissionRecordAudio() {
        return this.hp.isCanUsePermissionRecordAudio();
    }

    @Override // com.byazt.he.l
    public boolean isCanUsePhoneState() {
        return this.hp.isCanUsePhoneState();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseWifiState() {
        return this.hp.isCanUseWifiState();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseWriteExternal() {
        return this.hp.isCanUseWriteExternal();
    }

    @Override // com.byazt.he.l
    public Map<String, Object> userPrivacyConfig() {
        return this.hp.userPrivacyConfig();
    }
}
