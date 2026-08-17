package com.sigmob.sdk.base.common;

import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.VideoStatusCommon;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* renamed from: com.sigmob.sdk.base.common.l, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1266l implements InterfaceC1281u {

    /* renamed from: a, reason: collision with root package name */
    protected final String f35967a = getClass().getSimpleName();

    public void a(BaseAdUnit baseAdUnit, String str, String str2, final HashMap<String, String> map) {
        ad.a(str, str2, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.n0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                AbstractC1266l.a(map, obj);
            }
        });
    }

    public void a(BaseAdUnit baseAdUnit, String str, boolean z2, String str2) throws UnsupportedEncodingException {
        SigMacroCommon macroCommon = baseAdUnit.getMacroCommon();
        VideoStatusCommon videoCommon = baseAdUnit.getVideoCommon();
        macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(videoCommon.video_time));
        macroCommon.addMarcoKey(SigMacroCommon._BEGINTIME_, String.valueOf(videoCommon.begin_time));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(videoCommon.end_time));
        macroCommon.addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, String.valueOf(videoCommon.is_first));
        macroCommon.addMarcoKey(SigMacroCommon._PLAYLASTFRAME_, String.valueOf(videoCommon.is_last));
        macroCommon.addMarcoKey(SigMacroCommon._SCENE_, String.valueOf(videoCommon.scene));
        macroCommon.addMarcoKey(SigMacroCommon._TYPE_, String.valueOf(videoCommon.type));
        macroCommon.addMarcoKey(SigMacroCommon._BEHAVIOR_, String.valueOf(videoCommon.is_auto_play));
        macroCommon.addMarcoKey(SigMacroCommon._STATUS_, String.valueOf(videoCommon.status));
        com.sigmob.sdk.base.network.h.a(baseAdUnit, str, z2);
        HashMap<String, String> map = new HashMap<>();
        map.put("video_time", String.valueOf(videoCommon.video_time));
        map.put("begin_time", String.valueOf(videoCommon.begin_time));
        map.put("end_time", String.valueOf(videoCommon.end_time));
        map.put("is_first", String.valueOf(videoCommon.is_first));
        map.put(com.umeng.ccg.a.f49756j, String.valueOf(videoCommon.scene));
        map.put("type", String.valueOf(videoCommon.type));
        map.put("is_auto_play", String.valueOf(videoCommon.is_auto_play));
        map.put("status", String.valueOf(videoCommon.status));
        a(baseAdUnit, str2, (String) null, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(HashMap map, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (com.sigmob.sdk.base.utils.f.b(map)) {
                pointEntitySigmob.getOptions().putAll(map);
            }
        }
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean a(BaseAdUnit baseAdUnit) {
        return true;
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean a(BaseAdUnit baseAdUnit, int i2, int i3) {
        return false;
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean a(BaseAdUnit baseAdUnit, boolean z2, int i2) {
        return false;
    }
}
