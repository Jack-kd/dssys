package com.bytedance.sdk.openadsdk.mediation.bridge;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationLoaderConfig;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 1630})
/* loaded from: classes3.dex */
public class MediationAdClassLoader extends com.byazt.lu.hp implements Bridge {
    private static volatile MediationAdClassLoader hp;

    private MediationAdClassLoader() {
    }

    public static MediationAdClassLoader getInstance() {
        if (hp == null) {
            synchronized (MediationAdClassLoader.class) {
                hp = new MediationAdClassLoader();
            }
        }
        return hp;
    }

    private <T> T hp(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == 8106) {
            hp(MediationLoaderConfig.create(valueSet), valueSet);
            return null;
        }
        if (i2 == 8229) {
            return (T) hp(valueSet.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow), valueSet.stringValue(8560));
        }
        return null;
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        return (T) hp(i2, valueSet, cls);
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i2, ValueSet valueSet, Class<T> cls) {
        return (T) hp(i2, valueSet, cls);
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        ValueSet valueSetValues = values();
        if (valueSetValues != null) {
            return valueSetValues.sparseArray();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Boolean hp(java.lang.String r1, java.lang.String r2) {
        /*
            r0 = this;
            java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L6
            java.lang.Boolean r1 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L6
            return r1
        L6:
            r2 = move-exception
            com.byazt.ik.a.hp(r2)
            java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L10 java.lang.NoClassDefFoundError -> L12 java.lang.ClassNotFoundException -> L14
            java.lang.Boolean r1 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L10 java.lang.NoClassDefFoundError -> L12 java.lang.ClassNotFoundException -> L14
            return r1
        L10:
            r1 = move-exception
            goto L16
        L12:
            r2 = move-exception
            goto L1a
        L14:
            r2 = move-exception
            goto L1a
        L16:
            com.byazt.ik.a.hp(r1)
            goto L2a
        L1a:
            com.byazt.ik.a.hp(r2)
            boolean r1 = r0.hp(r1)
            if (r1 == 0) goto L2a
            java.lang.String r1 = "TTMediationSDK"
            java.lang.String r2 = "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确"
            com.byazt.ik.a.w(r1, r2)
        L2a:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.mediation.bridge.MediationAdClassLoader.hp(java.lang.String, java.lang.String):java.lang.Boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationLoaderConfig r5, com.bykv.vk.openvk.api.proto.ValueSet r6) {
        /*
            r4 = this;
            r0 = 0
            java.lang.String r1 = r5.getADNName()     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            java.util.function.Function r1 = com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.getAdapterManager(r1)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            if (r1 == 0) goto L36
            android.util.SparseArray r2 = new android.util.SparseArray     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            r2.<init>()     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            int r5 = r5.getManagerLoaderType()     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            r3 = -99999987(0xfffffffffa0a1f0d, float:-1.7929169E35)
            r2.put(r3, r5)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            java.lang.Class<java.lang.Object> r5 = java.lang.Object.class
            r3 = -99999985(0xfffffffffa0a1f0f, float:-1.7929173E35)
            r2.put(r3, r5)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            java.lang.Object r5 = r1.apply(r2)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            r4.hp(r5, r6)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            return
        L2e:
            r5 = move-exception
            goto L46
        L30:
            r5 = move-exception
            goto L46
        L32:
            r5 = move-exception
            goto L57
        L34:
            r5 = move-exception
            goto L57
        L36:
            java.lang.String r0 = r5.getClassName()     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            java.lang.Class r5 = java.lang.Class.forName(r0)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            java.lang.Object r5 = r5.newInstance()     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            r4.hp(r5, r6)     // Catch: java.lang.NoClassDefFoundError -> L2e java.lang.ClassNotFoundException -> L30 java.lang.InstantiationException -> L32 java.lang.IllegalAccessException -> L34
            return
        L46:
            com.byazt.ik.a.hp(r5)
            boolean r5 = r4.hp(r0)
            if (r5 == 0) goto L56
            java.lang.String r5 = "TTMediationSDK"
            java.lang.String r6 = "当前接入的ADN-Adapter版本可能不适配，68版本起SDK和所有Adapter都需要升级，请检查接入的版本是否正确"
            com.byazt.ik.a.w(r5, r6)
        L56:
            return
        L57:
            r5.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.mediation.bridge.MediationAdClassLoader.hp(com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationLoaderConfig, com.bykv.vk.openvk.api.proto.ValueSet):void");
    }

    private void hp(Object obj, ValueSet valueSet) {
        SparseArray<Object> sparseArray = valueSet.sparseArray();
        if (obj instanceof Function) {
            Function function = (Function) obj;
            SparseArray sparseArray2 = new SparseArray();
            SparseArray<Object> sparseArray3 = null;
            sparseArray2.put(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, (Context) com.byazt.lu.hp.objectValue(sparseArray.get(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold), Context.class, null));
            Object objObjectValue = com.byazt.lu.hp.objectValue(sparseArray.get(8424), Object.class, null);
            if (objObjectValue instanceof ValueSet) {
                sparseArray3 = ((ValueSet) objObjectValue).sparseArray();
            } else if (objObjectValue instanceof SparseArray) {
                sparseArray3 = (SparseArray) objObjectValue;
            }
            if (sparseArray3 != null) {
                sparseArray2.put(8424, sparseArray3);
            } else {
                sparseArray2.put(8424, sparseArray);
            }
            sparseArray2.put(-99999987, 8241);
            sparseArray2.put(-99999985, Void.class);
            function.apply(sparseArray2);
        }
    }

    private boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("com.bytedance.msdk.adapter.");
    }
}
