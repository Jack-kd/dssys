package com.byazt.sf;

import android.util.SparseArray;
import com.byazt.jz.sz;
import com.byazt.zn.ky;
import com.byazt.zn.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.UUID;
import java.util.function.LongSupplier;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public abstract class s extends com.byazt.hde.j implements LongSupplier {
    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) throws JSONException {
        PluginValueSet pluginValueSetOnEvent = onEvent(i2, pluginValueSet.sparseArray());
        if (pluginValueSetOnEvent == null) {
            return null;
        }
        T t2 = (T) pluginValueSetOnEvent.sparseArray();
        if (cls == null || cls.isInstance(t2)) {
            return t2;
        }
        return null;
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }

    public PluginValueSet hp(int i2, SparseArray<Object> sparseArray) {
        return null;
    }

    public PluginValueSet jx(int i2, SparseArray<Object> sparseArray) {
        return null;
    }

    public PluginValueSet l(int i2, SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        pluginValueSetL.intValue(9, 0);
        if (pluginValueSetL.containsKey(8)) {
            pluginValueSetL.longValue(8);
        }
        return null;
    }

    public PluginValueSet onEvent(int i2, SparseArray<Object> sparseArray) throws JSONException {
        SparseArray<Object> sparseArrayHp = hp(sparseArray);
        switch (i2) {
            case 1:
                return provideDid();
            case 2:
                return hp(i2, sparseArrayHp);
            case 3:
                return onSettingsCallback();
            case 4:
                return provideUid();
            case 5:
                return onFilterCallback();
            case 6:
                return hp(i2, new w(sparseArrayHp, i2));
            case 7:
            default:
                return null;
            case 8:
                return hp(i2, new q(sparseArrayHp, i2));
            case 9:
                return jx(i2, sparseArrayHp);
            case 10:
                l(sparseArrayHp);
                return null;
            case 11:
                return l(i2, sparseArrayHp);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bykv.vk.openvk.api.proto.PluginValueSet onFilterCallback() {
        /*
            r6 = this;
            com.byazt.jkd.gu r0 = com.byazt.jz.sz.l()
            org.json.JSONObject r0 = r0.lp()
            r1 = 0
            if (r0 == 0) goto L4b
            java.lang.String r2 = "filter"
            org.json.JSONObject r3 = r0.optJSONObject(r2)
            java.lang.String r4 = "pitaya_filter"
            if (r3 != 0) goto L19
            org.json.JSONObject r3 = r0.optJSONObject(r4)
        L19:
            if (r3 != 0) goto L21
            java.lang.String r3 = "init_filter"
            org.json.JSONObject r3 = r0.optJSONObject(r3)
        L21:
            if (r3 != 0) goto L29
            java.lang.String r3 = "filter_config"
            org.json.JSONObject r3 = r0.optJSONObject(r3)
        L29:
            if (r3 != 0) goto L4a
            java.lang.String r2 = r0.optString(r2, r1)
            if (r2 == 0) goto L37
            int r5 = r2.length()
            if (r5 != 0) goto L3b
        L37:
            java.lang.String r2 = r0.optString(r4, r1)
        L3b:
            if (r2 == 0) goto L4a
            int r0 = r2.length()
            if (r0 == 0) goto L4a
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L4b
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L4b
            r1 = r0
            goto L4b
        L4a:
            r1 = r3
        L4b:
            if (r1 != 0) goto L52
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
        L52:
            com.byazt.xi.hp r0 = com.byazt.xi.hp.hp()
            r2 = 34
            com.byazt.xi.hp r0 = r0.hp(r2, r1)
            com.bykv.vk.openvk.api.proto.PluginValueSet r0 = r0.l()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.sf.s.onFilterCallback():com.bykv.vk.openvk.api.proto.PluginValueSet");
    }

    public PluginValueSet onSettingsCallback() {
        JSONObject jSONObjectLp = sz.l().lp();
        if (jSONObjectLp != null) {
            return com.byazt.xi.hp.hp().hp(33, jSONObjectLp).l();
        }
        return null;
    }

    public PluginValueSet provideDid() {
        String strHp = v.hp();
        if (strHp == null) {
            strHp = "";
        }
        return com.byazt.xi.hp.hp().hp(31, strHp).l();
    }

    public PluginValueSet provideUid() {
        return com.byazt.xi.hp.hp().hp(32, String.valueOf(ky.w())).l();
    }

    public PluginValueSet hp(int i2, q qVar) {
        return null;
    }

    public PluginValueSet hp(int i2, w wVar) {
        return null;
    }

    private SparseArray<Object> hp(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        Object obj = sparseArray.get(-99999979);
        return obj instanceof SparseArray ? (SparseArray) obj : sparseArray;
    }

    private void l(SparseArray<Object> sparseArray) throws JSONException {
        if (sparseArray != null) {
            try {
                PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
                SparseArray sparseArray2 = (SparseArray) pluginValueSetL.objectValue(-999902, SparseArray.class);
                if (sparseArray2 != null) {
                    pluginValueSetL = com.byazt.xi.hp.hp((SparseArray<Object>) sparseArray2).l();
                }
                String strStringValue = pluginValueSetL.stringValue(6);
                JSONObject jSONObjectHp = e.hp(pluginValueSetL, 7);
                if (jSONObjectHp == null) {
                    jSONObjectHp = new JSONObject();
                }
                if (strStringValue != null) {
                    jSONObjectHp.put("label", strStringValue);
                }
                com.byazt.ai.hp hpVar = new com.byazt.ai.hp(UUID.randomUUID().toString(), jSONObjectHp);
                hpVar.hp((byte) 0);
                hpVar.l((byte) 2);
                com.byazt.gq.jx.reportEvent(hpVar);
                com.byazt.mdk.hp.hp(hpVar, "csj");
            } catch (Exception unused) {
            }
        }
    }
}
