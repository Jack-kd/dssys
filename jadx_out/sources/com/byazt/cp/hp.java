package com.byazt.cp;

import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.d.i;
import com.anythink.core.common.f.f;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jdb.hp;
import com.byazt.jz.sz;
import com.byazt.nra.eb;
import com.byazt.rx.BaseConstants;
import com.byazt.zn.wv;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 726, 28})
/* loaded from: classes2.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public final eb hp;

    public hp(eb ebVar) {
        this.hp = ebVar;
    }

    private void a(PluginValueSet pluginValueSet) throws JSONException {
        Map<String, String> map = (Map) pluginValueSet.objectValue(1, Map.class);
        if (map == null) {
            return;
        }
        this.hp.hp(map);
    }

    private void eb(PluginValueSet pluginValueSet) {
        try {
            boolean z2 = true;
            Map map = (Map) pluginValueSet.objectValue(1, Map.class);
            String str = (String) map.get("is_auth");
            eb ebVar = this.hp;
            if (Integer.valueOf(str).intValue() == 0) {
                z2 = false;
            }
            ebVar.hp(z2, (String) map.get("open_uid"));
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object hp(com.bykv.vk.openvk.api.proto.PluginValueSet r6) throws org.json.JSONException {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r1 = r6.stringValue(r0)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            r3 = 0
            if (r2 == 0) goto Ld
            return r3
        Ld:
            r1.getClass()
            int r2 = r1.hashCode()
            r4 = -1
            switch(r2) {
                case -1828730287: goto L67;
                case -955478604: goto L5c;
                case -366799433: goto L51;
                case 862273347: goto L46;
                case 1186389324: goto L3b;
                case 1388496268: goto L30;
                case 1562160023: goto L25;
                case 1979487267: goto L1a;
                default: goto L18;
            }
        L18:
            r0 = r4
            goto L70
        L1a:
            java.lang.String r0 = "reportPangleEvent"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L23
            goto L18
        L23:
            r0 = 7
            goto L70
        L25:
            java.lang.String r0 = "getPangleApiVersion"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L2e
            goto L18
        L2e:
            r0 = 6
            goto L70
        L30:
            java.lang.String r0 = "onAuthCallback"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L39
            goto L18
        L39:
            r0 = 5
            goto L70
        L3b:
            java.lang.String r0 = "getPanglePluginVersion"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L44
            goto L18
        L44:
            r0 = 4
            goto L70
        L46:
            java.lang.String r0 = "onLiveFakeInitFinish"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L4f
            goto L18
        L4f:
            r0 = 3
            goto L70
        L51:
            java.lang.String r0 = "onTaskFinish"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L5a
            goto L18
        L5a:
            r0 = 2
            goto L70
        L5c:
            java.lang.String r0 = "getBiddingToken"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L65
            goto L18
        L65:
            r0 = 1
            goto L70
        L67:
            java.lang.String r2 = "sendGoldExchangeCoupon"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L70
            goto L18
        L70:
            switch(r0) {
                case 0: goto L97;
                case 1: goto L92;
                case 2: goto L8e;
                case 3: goto L8a;
                case 4: goto L83;
                case 5: goto L7f;
                case 6: goto L78;
                case 7: goto L74;
                default: goto L73;
            }
        L73:
            goto L9a
        L74:
            r5.a(r6)
            goto L9a
        L78:
            int r6 = com.byazt.jz.d.f21856j
            java.lang.String r6 = java.lang.String.valueOf(r6)
            return r6
        L7f:
            r5.eb(r6)
            goto L9a
        L83:
            r6 = 7643(0x1ddb, float:1.071E-41)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            return r6
        L8a:
            r5.l(r6)
            goto L9a
        L8e:
            r5.j(r6)
            goto L9a
        L92:
            java.lang.Object r6 = r5.w(r6)
            return r6
        L97:
            r5.jx(r6)
        L9a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cp.hp.hp(com.bykv.vk.openvk.api.proto.PluginValueSet):java.lang.Object");
    }

    private void j(PluginValueSet pluginValueSet) {
        try {
            this.hp.l((Map<String, String>) pluginValueSet.objectValue(1, Map.class));
        } catch (Exception unused) {
        }
    }

    private void jx(PluginValueSet pluginValueSet) {
        try {
            this.hp.jx((Map<String, String>) pluginValueSet.objectValue(1, Map.class));
        } catch (Exception unused) {
        }
    }

    private void l(PluginValueSet pluginValueSet) throws JSONException {
        String message;
        int i2 = -3;
        try {
            String str = (String) ((Map) pluginValueSet.objectValue(1, Map.class)).get(cb.f11292o);
            message = null;
            if (str != null) {
                if (Boolean.parseBoolean(str)) {
                    i2 = 2;
                } else {
                    message = "fake init failed";
                }
            }
        } catch (Exception e2) {
            message = e2.getMessage();
        }
        this.hp.hp(i2, message, false, true);
    }

    private Integer s(PluginValueSet pluginValueSet) {
        String strEb = com.byazt.yx.l.hp().eb();
        if (strEb == null) {
            return null;
        }
        if (strEb.replaceAll(i.f2495E, "").startsWith("2112")) {
            Object[] objArrArrayValue = pluginValueSet.arrayValue(1, Object[].class);
            if (objArrArrayValue == null || objArrArrayValue.length == 0) {
                return null;
            }
            return (Integer) objArrArrayValue[0];
        }
        Map map = (Map) pluginValueSet.objectValue(1, Map.class);
        if (map == null || map.size() == 0) {
            return null;
        }
        return Integer.valueOf((String) map.get("adType"));
    }

    private Object w(PluginValueSet pluginValueSet) {
        try {
            Integer numS = s(pluginValueSet);
            if (numS == null) {
                return null;
            }
            return sz.hp().hp(wv.hp(numS.intValue(), com.byazt.el.hp.l()));
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    public void logEvent(boolean z2, String str, String str2, Map<String, String> map) throws JSONException {
        final JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (!jSONObject.has(entry.getKey())) {
                            jSONObject.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
        new hp.C0281hp().hp(str).l(str2).jx(BaseConstants.CATEGORY_UMENG).w(jSONObject.optString(f.a.f3244d)).j(jSONObject.optString("log_extra")).hp(new com.byazt.dhy.hp() { // from class: com.byazt.cp.hp.1
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                if (!TextUtils.isEmpty(jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA))) {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA));
                }
                if (!TextUtils.isEmpty(jSONObject.optString("is_other_channel"))) {
                    jSONObject2.put("is_other_channel", jSONObject.optString("is_other_channel"));
                }
                if (jSONObject2.has(BaseConstants.EVENT_LABEL_IS_AD_EVENT)) {
                    return;
                }
                jSONObject2.putOpt(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
            }
        });
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) throws JSONException {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        if (iIntValue == 0) {
            return hp(pluginValueSetL);
        }
        if (iIntValue == 1) {
            logEvent(pluginValueSetL.booleanValue(0), pluginValueSetL.stringValue(1), pluginValueSetL.stringValue(2), (Map) pluginValueSetL.objectValue(3, Map.class));
        } else if (iIntValue == 2) {
            this.hp.hp(pluginValueSetL.intValue(0), pluginValueSetL.stringValue(1), hp(pluginValueSetL, 2), false);
        } else if (iIntValue == 3) {
            int iIntValue2 = pluginValueSetL.intValue(0);
            boolean zHp = hp(pluginValueSetL, 4);
            if (1000 == iIntValue2) {
                this.hp.hp(5, (String) null, zHp, false);
                if (!zHp) {
                    this.hp.hp();
                }
            } else if (1001 == iIntValue2) {
                this.hp.hp(-2, pluginValueSetL.stringValue(1), zHp, false);
            }
        }
        return null;
    }

    private boolean hp(PluginValueSet pluginValueSet, int i2) {
        try {
            Map map = (Map) pluginValueSet.objectValue(i2, Map.class);
            if (map != null && map.containsKey("onlyUpdateState")) {
                if (Boolean.parseBoolean(String.valueOf(map.get("onlyUpdateState")))) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
