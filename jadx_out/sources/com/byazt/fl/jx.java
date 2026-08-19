package com.byazt.fl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 30})
/* loaded from: classes2.dex */
public class jx implements ComplianceInfo {
    public final Function<SparseArray<Object>, Object> hp;

    /* renamed from: l, reason: collision with root package name */
    public ValueSet f20063l;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.f20063l = com.byazt.xi.jx.hp;
        function = function == null ? com.byazt.xi.jx.jx : function;
        this.hp = function;
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            this.f20063l = com.byazt.xi.jx.hp((SparseArray<Object>) objApply).l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getAppName() {
        return this.f20063l.stringValue(250001);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getAppVersion() {
        return this.f20063l.stringValue(250002);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getDeveloperName() {
        return this.f20063l.stringValue(250003);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getFunctionDescUrl() {
        return this.f20063l.stringValue(250007);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getPermissionUrl() {
        return this.f20063l.stringValue(250005);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public Map<String, String> getPermissionsMap() {
        return (Map) this.f20063l.objectValue(250006, Map.class);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getPrivacyUrl() {
        return this.f20063l.stringValue(250004);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getRegNumber() {
        return this.f20063l.stringValue(250008);
    }

    @Override // com.bytedance.sdk.openadsdk.ComplianceInfo
    public String getRegUrl() {
        return this.f20063l.stringValue(250009);
    }
}
