package com.byazt.du;

import com.byazt.xci.ea;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 301})
/* loaded from: classes2.dex */
public class cx extends com.byazt.oa.w<JSONObject, JSONObject> {
    public final WeakReference<com.byazt.jz.ud> hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f19312l;

    public cx(com.byazt.jz.ud udVar, String str) {
        this.hp = new WeakReference<>(udVar);
        this.f19312l = str;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("interactiveStart", (com.byazt.oa.w<?, ?>) new cx(udVar, "interactiveStart"));
        xsVar.hp("interactiveFinish", (com.byazt.oa.w<?, ?>) new cx(udVar, "interactiveFinish"));
        xsVar.hp("interactiveEnd", (com.byazt.oa.w<?, ?>) new cx(udVar, "interactiveEnd"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002c  */
    @Override // com.byazt.oa.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject hp(org.json.JSONObject r9, com.byazt.oa.a r10) throws java.lang.Exception {
        /*
            r8 = this;
            java.lang.String r10 = "reduce_duration"
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.ref.WeakReference<com.byazt.jz.ud> r1 = r8.hp
            java.lang.Object r1 = r1.get()
            if (r1 != 0) goto L11
            goto L72
        L11:
            java.lang.ref.WeakReference<com.byazt.jz.ud> r1 = r8.hp
            java.lang.Object r1 = r1.get()
            com.byazt.jz.ud r1 = (com.byazt.jz.ud) r1
            com.byazt.xci.mp r2 = r1.s()
            java.lang.String r3 = r8.f19312l
            r3.getClass()
            int r4 = r3.hashCode()
            r5 = -1
            r6 = 0
            r7 = 1
            switch(r4) {
                case -1055587680: goto L44;
                case 803356313: goto L39;
                case 1254561301: goto L2e;
                default: goto L2c;
            }
        L2c:
            r3 = r5
            goto L4e
        L2e:
            java.lang.String r4 = "interactiveFinish"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L37
            goto L2c
        L37:
            r3 = 2
            goto L4e
        L39:
            java.lang.String r4 = "interactiveEnd"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L42
            goto L2c
        L42:
            r3 = r7
            goto L4e
        L44:
            java.lang.String r4 = "interactiveStart"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L4d
            goto L2c
        L4d:
            r3 = r6
        L4e:
            switch(r3) {
                case 0: goto L77;
                case 1: goto L73;
                case 2: goto L52;
                default: goto L51;
            }
        L51:
            goto L72
        L52:
            java.lang.String r3 = "finish"
            int r3 = r9.optInt(r3, r7)     // Catch: org.json.JSONException -> L72
            if (r3 != r7) goto L5b
            goto L5c
        L5b:
            r7 = r6
        L5c:
            int r9 = r9.optInt(r10, r5)     // Catch: org.json.JSONException -> L72
            int r9 = hp(r2, r9)     // Catch: org.json.JSONException -> L72
            if (r7 == 0) goto L6a
            r1.j(r9)     // Catch: org.json.JSONException -> L72
            r5 = r6
        L6a:
            java.lang.String r1 = "code"
            r0.put(r1, r5)     // Catch: org.json.JSONException -> L72
            r0.put(r10, r9)     // Catch: org.json.JSONException -> L72
        L72:
            return r0
        L73:
            r1.ec()
            return r0
        L77:
            r1.vv()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.du.cx.hp(org.json.JSONObject, com.byazt.oa.a):org.json.JSONObject");
    }

    public static int hp(com.byazt.xci.mp mpVar, int i2) {
        int iUc = mpVar != null ? mpVar.uc() : 0;
        if (i2 >= 0 && iUc >= 0) {
            i2 = Math.min(i2, iUc);
        } else if (i2 < 0) {
            i2 = iUc >= 0 ? iUc : 0;
        }
        if (ea.w(mpVar)) {
            return 0;
        }
        return i2;
    }
}
