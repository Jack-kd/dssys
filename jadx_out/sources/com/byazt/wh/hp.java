package com.byazt.wh;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.rz.q;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1652, 28})
/* loaded from: classes3.dex */
public final class hp implements Function<SparseArray<Object>, Object> {
    public static volatile hp hp;

    private Plugin hp(ValueSet valueSet) {
        if (valueSet == null) {
            return null;
        }
        String strStringValue = valueSet.stringValue(0);
        if (TextUtils.isEmpty(strStringValue)) {
            return null;
        }
        return Zeus.getPlugin(strStringValue);
    }

    public static hp instance() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b9  */
    @Override // java.util.function.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object apply(android.util.SparseArray<java.lang.Object> r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.byazt.xi.jx r4 = com.byazt.xi.jx.hp(r4)
            com.bykv.vk.openvk.api.proto.ValueSet r4 = r4.l()
            r1 = -99999987(0xfffffffffa0a1f0d, float:-1.7929169E35)
            int r1 = r4.intValue(r1)
            r2 = -99999986(0xfffffffffa0a1f0e, float:-1.792917E35)
            if (r1 == r2) goto Lf8
            r2 = 13
            if (r1 == r2) goto Led
            r2 = 109(0x6d, float:1.53E-43)
            if (r1 == r2) goto Le9
            r2 = 110(0x6e, float:1.54E-43)
            if (r1 == r2) goto Lde
            r2 = 0
            switch(r1) {
                case 4: goto Ld3;
                case 5: goto Lc6;
                case 6: goto Lb9;
                case 7: goto Lac;
                case 8: goto L87;
                default: goto L28;
            }
        L28:
            switch(r1) {
                case 100: goto L7a;
                case 101: goto L63;
                case 102: goto L53;
                case 103: goto L43;
                case 104: goto Lac;
                case 105: goto Lb9;
                case 106: goto L2d;
                default: goto L2b;
            }
        L2b:
            goto Lec
        L2d:
            java.lang.Class<com.bytedance.sdk.openadsdk.TTPluginListener> r1 = com.bytedance.sdk.openadsdk.TTPluginListener.class
            java.lang.Object r4 = r4.objectValue(r2, r1)
            com.bytedance.sdk.openadsdk.TTPluginListener r4 = (com.bytedance.sdk.openadsdk.TTPluginListener) r4
            if (r4 == 0) goto L42
            android.content.Context r1 = com.bytedance.sdk.openadsdk.TTAppContextHolder.getContext()
            com.byazt.rz.q r1 = com.byazt.rz.q.hp(r1)
            r1.l(r4)
        L42:
            return r0
        L43:
            com.bytedance.pangle.plugin.Plugin r4 = r3.hp(r4)
            if (r4 == 0) goto L52
            int r4 = r4.getVersion()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            return r4
        L52:
            return r0
        L53:
            com.bytedance.pangle.plugin.Plugin r4 = r3.hp(r4)
            if (r4 == 0) goto L62
            int r4 = r4.getInternalVersionCode()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            return r4
        L62:
            return r0
        L63:
            android.content.Context r1 = com.bytedance.sdk.openadsdk.TTAppContextHolder.getContext()
            com.byazt.rz.q.hp(r1)
            com.bytedance.pangle.plugin.Plugin r4 = r3.hp(r4)
            if (r4 == 0) goto L79
            int r4 = r4.getApiVersionCode()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            return r4
        L79:
            return r0
        L7a:
            java.lang.String r1 = r4.stringValue(r2)
            r2 = 1
            int r4 = r4.intValue(r2)
            com.bytedance.pangle.Zeus.unInstallPlugin(r1, r4)
            return r0
        L87:
            java.lang.String r4 = r4.stringValue(r2)
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 != 0) goto La0
            java.lang.String r0 = com.byazt.rz.q.hp(r4)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto La2
            java.lang.String r0 = com.byazt.rz.q.l(r4)
            goto La2
        La0:
            java.lang.String r0 = ""
        La2:
            boolean r4 = android.text.TextUtils.isEmpty(r0)
            if (r4 == 0) goto Lab
            java.lang.String r4 = "0.0.0.0"
            return r4
        Lab:
            return r0
        Lac:
            java.lang.String r4 = r4.stringValue(r2)
            boolean r4 = com.bytedance.pangle.Zeus.isPluginLoaded(r4)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        Lb9:
            java.lang.String r4 = r4.stringValue(r2)
            boolean r4 = com.bytedance.pangle.Zeus.isPluginInstalled(r4)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        Lc6:
            java.lang.String r4 = r4.stringValue(r2)
            boolean r4 = com.bytedance.pangle.Zeus.loadPlugin(r4)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        Ld3:
            java.lang.String r4 = r4.stringValue(r2)
            com.bytedance.pangle.plugin.Plugin r4 = com.bytedance.pangle.Zeus.getPlugin(r4)
            com.bytedance.pangle.PluginClassLoader r4 = r4.mClassLoader
            return r4
        Lde:
            com.bytedance.pangle.plugin.Plugin r4 = r3.hp(r4)
            if (r4 == 0) goto Lec
            java.util.List r4 = r4.getInstalledVersionCodes()
            return r4
        Le9:
            r3.hp()
        Lec:
            return r0
        Led:
            com.bytedance.pangle.plugin.Plugin r4 = r3.hp(r4)
            if (r4 == 0) goto Lf8
            org.json.JSONObject r4 = r4.getJsonConfig()
            return r4
        Lf8:
            com.byazt.xi.jx r4 = com.byazt.xi.jx.hp()
            r0 = 10000(0x2710, float:1.4013E-41)
            r1 = 4
            com.byazt.xi.jx r4 = r4.hp(r0, r1)
            com.bykv.vk.openvk.api.proto.ValueSet r4 = r4.l()
            android.util.SparseArray r4 = r4.sparseArray()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wh.hp.apply(android.util.SparseArray):java.lang.Object");
    }

    private void hp() {
        if (Zeus.hasInit()) {
            return;
        }
        q.hp(TTAppContextHolder.getContext());
    }
}
