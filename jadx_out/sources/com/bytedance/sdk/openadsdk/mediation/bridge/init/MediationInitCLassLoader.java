package com.bytedance.sdk.openadsdk.mediation.bridge.init;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 128, 1190})
/* loaded from: classes3.dex */
public class MediationInitCLassLoader extends com.byazt.lu.hp {
    /* JADX WARN: Removed duplicated region for block: B:41:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> boolean hp(com.bykv.vk.openvk.api.proto.ValueSet r7) {
        /*
            r6 = this;
            com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationInitConfig r0 = com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationInitConfig.create(r7)
            r1 = 0
            boolean r2 = r0.isCustom()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            r3 = 1
            if (r2 == 0) goto L2d
            com.bykv.vk.openvk.api.proto.ValueSet r2 = r0.getCustomInitConfigValueSet()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            if (r2 == 0) goto L2d
            com.bykv.vk.openvk.api.proto.ValueSet r0 = r0.getCustomInitConfigValueSet()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L24 java.lang.ClassNotFoundException -> L26
            r2 = 8536(0x2158, float:1.1961E-41)
            java.lang.String r0 = r0.stringValue(r2)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L24 java.lang.ClassNotFoundException -> L26
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L24 java.lang.ClassNotFoundException -> L26
            r2 = r3
            goto L73
        L22:
            r7 = move-exception
            goto L80
        L24:
            r7 = move-exception
            goto L84
        L26:
            r7 = move-exception
            goto L84
        L28:
            r7 = move-exception
        L29:
            r3 = r1
            goto L84
        L2b:
            r7 = move-exception
            goto L29
        L2d:
            java.lang.String r2 = r0.getAdapterManagerClassName()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            java.lang.String r4 = r0.getADNName()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            if (r2 == 0) goto L3e
            if (r4 == 0) goto L3e
            boolean r2 = com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.initAdnManager(r2, r4)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            goto L3f
        L3e:
            r2 = r1
        L3f:
            if (r2 == 0) goto L46
            java.util.function.Function r2 = com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.getAdapterManager(r4)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            goto L47
        L46:
            r2 = 0
        L47:
            if (r2 == 0) goto L6a
            android.util.SparseArray r0 = new android.util.SparseArray     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            r0.<init>()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            r4 = 10000(0x2710, float:1.4013E-41)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            r5 = -99999987(0xfffffffffa0a1f0d, float:-1.7929169E35)
            r0.put(r5, r4)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            java.lang.Class<java.lang.Object> r4 = java.lang.Object.class
            r5 = -99999985(0xfffffffffa0a1f0f, float:-1.7929173E35)
            r0.put(r5, r4)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            java.lang.Object r0 = r2.apply(r0)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            r6.hp(r0, r7)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            return r3
        L6a:
            java.lang.String r0 = r0.getClassName()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L28 java.lang.ClassNotFoundException -> L2b
            r2 = r1
        L73:
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L7b java.lang.ClassNotFoundException -> L7e
            r6.hp(r0, r7)     // Catch: java.lang.Throwable -> L22 java.lang.NoClassDefFoundError -> L7b java.lang.ClassNotFoundException -> L7e
            return r3
        L7b:
            r7 = move-exception
        L7c:
            r3 = r2
            goto L84
        L7e:
            r7 = move-exception
            goto L7c
        L80:
            com.byazt.ik.a.hp(r7)
            goto L90
        L84:
            com.byazt.ik.a.hp(r7)
            if (r3 != 0) goto L90
            java.lang.String r7 = "TTMediationSDK"
            java.lang.String r0 = "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确"
            com.byazt.ik.a.w(r7, r0)
        L90:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.mediation.bridge.init.MediationInitCLassLoader.hp(com.bykv.vk.openvk.api.proto.ValueSet):boolean");
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == 8100) {
            return (T) Boolean.valueOf(hp(valueSet));
        }
        return null;
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        return null;
    }

    private void hp(Object obj, ValueSet valueSet) {
        if (obj instanceof Function) {
            Function function = (Function) obj;
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, TTAppContextHolder.getContext());
            sparseArray.put(8424, valueSet == null ? null : valueSet.sparseArray());
            sparseArray.put(-99999987, 8240);
            sparseArray.put(-99999985, Void.class);
            function.apply(sparseArray);
        }
    }
}
