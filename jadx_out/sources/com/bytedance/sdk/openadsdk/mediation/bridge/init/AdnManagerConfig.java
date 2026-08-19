package com.bytedance.sdk.openadsdk.mediation.bridge.init;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, 128, 691})
/* loaded from: classes3.dex */
public class AdnManagerConfig {

    /* renamed from: a, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f29032a;
    private static volatile Function<SparseArray<Object>, Object> eb;
    private static volatile Function<SparseArray<Object>, Object> hp;

    /* renamed from: j, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f29033j;
    private static volatile Function<SparseArray<Object>, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f29034l;

    /* renamed from: w, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f29035w;

    public static Function<SparseArray<Object>, Object> getAdapterManager(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean hp(java.lang.String r4, java.lang.String r5) {
        /*
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            java.lang.Class r4 = java.lang.Class.forName(r4)     // Catch: java.lang.Throwable -> L48
            java.lang.Object r4 = r4.newInstance()     // Catch: java.lang.Throwable -> L48
            boolean r1 = r4 instanceof java.util.function.Function     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto La3
            java.util.function.Function r4 = (java.util.function.Function) r4     // Catch: java.lang.Throwable -> L48
            android.util.SparseArray r1 = new android.util.SparseArray     // Catch: java.lang.Throwable -> L48
            r1.<init>()     // Catch: java.lang.Throwable -> L48
            r2 = 9000(0x2328, float:1.2612E-41)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L48
            r3 = -99999987(0xfffffffffa0a1f0d, float:-1.7929169E35)
            r1.put(r3, r2)     // Catch: java.lang.Throwable -> L48
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
            r3 = -99999985(0xfffffffffa0a1f0f, float:-1.7929173E35)
            r1.put(r3, r2)     // Catch: java.lang.Throwable -> L48
            java.lang.Object r4 = r4.apply(r1)     // Catch: java.lang.Throwable -> L48
            boolean r1 = r4 instanceof java.util.function.Function     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto La3
            java.util.function.Function r4 = (java.util.function.Function) r4     // Catch: java.lang.Throwable -> L48
            int r1 = r5.hashCode()     // Catch: java.lang.Throwable -> L48
            r2 = 1
            switch(r1) {
                case -902468465: goto L7c;
                case -759499589: goto L72;
                case 3432: goto L68;
                case 102199: goto L5e;
                case 93498907: goto L54;
                case 111433589: goto L4a;
                case 1126045977: goto L3e;
                default: goto L3d;
            }     // Catch: java.lang.Throwable -> L48
        L3d:
            goto L86
        L3e:
            java.lang.String r1 = "mintegral"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = 3
            goto L87
        L48:
            r4 = move-exception
            goto La0
        L4a:
            java.lang.String r1 = "unity"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = 5
            goto L87
        L54:
            java.lang.String r1 = "baidu"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = 2
            goto L87
        L5e:
            java.lang.String r1 = "gdt"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = r2
            goto L87
        L68:
            java.lang.String r1 = "ks"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = r0
            goto L87
        L72:
            java.lang.String r1 = "xiaomi"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = 6
            goto L87
        L7c:
            java.lang.String r1 = "sigmob"
            boolean r5 = r5.equals(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L86
            r5 = 4
            goto L87
        L86:
            r5 = -1
        L87:
            switch(r5) {
                case 0: goto L9d;
                case 1: goto L9a;
                case 2: goto L97;
                case 3: goto L94;
                case 4: goto L91;
                case 5: goto L8e;
                case 6: goto L8b;
                default: goto L8a;
            }     // Catch: java.lang.Throwable -> L48
        L8a:
            goto L9f
        L8b:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.eb = r4     // Catch: java.lang.Throwable -> L48
            goto L9f
        L8e:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.f29032a = r4     // Catch: java.lang.Throwable -> L48
            goto L9f
        L91:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.f29035w = r4     // Catch: java.lang.Throwable -> L48
            goto L9f
        L94:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.f29033j = r4     // Catch: java.lang.Throwable -> L48
            goto L9f
        L97:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.hp = r4     // Catch: java.lang.Throwable -> L48
            goto L9f
        L9a:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.f29034l = r4     // Catch: java.lang.Throwable -> L48
            goto L9f
        L9d:
            com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.jx = r4     // Catch: java.lang.Throwable -> L48
        L9f:
            return r2
        La0:
            com.byazt.ik.a.hp(r4)
        La3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.mediation.bridge.init.AdnManagerConfig.hp(java.lang.String, java.lang.String):boolean");
    }

    public static boolean initAdnManager(String str, String str2) {
        return hp(str, str2);
    }
}
