package com.byazt.qz;

import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.pg.w;
import com.byazt.ym.j;
import com.byazt.zg.jx;
import com.byazt.zg.n;
import com.byazt.zg.nu;
import com.byazt.zg.zy;
import com.byazt.zn.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1535, 34})
/* loaded from: classes3.dex */
public class l implements hp<com.byazt.lsx.hp> {
    public static final byte[] hp = new byte[0];

    private byte[] j(List<com.byazt.lsx.hp> list) {
        try {
            return hp(jx.hp(jx(list)).toString());
        } catch (Throwable unused) {
            return null;
        }
    }

    private JSONObject jx(List<com.byazt.lsx.hp> list) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_user_agent", ((jl) j.getService("device_info_new")).getUserAgent());
            jSONObject.put("client_ip", ec.hp());
            jSONObject.put("header", n.l());
            JSONArray jSONArray = new JSONArray();
            Iterator<com.byazt.lsx.hp> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().f22768l);
            }
            jSONObject.put("event_v3", jSONArray);
            jSONObject.put("magic_tag", "ss_app_log");
            jSONObject.put("_gen_time", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private byte[] l(List<com.byazt.lsx.hp> list) throws Throwable {
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObjectJx = jx(list);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (IOException unused) {
            }
            try {
                gZIPOutputStream.write(jSONObjectJx.toString().getBytes());
                gZIPOutputStream.close();
            } catch (Exception unused2) {
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    gZIPOutputStream2.close();
                }
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                th = th;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.byazt.qz.hp
    public boolean hp() {
        w wVarA = nu.a();
        return (com.byazt.di.l.l().j() || wVarA == null || !wVarA.getArmorLoadStatus()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.byazt.lsx.w hp(java.lang.String r4, byte[] r5, boolean r6) {
        /*
            r3 = this;
            com.byazt.xr.l r0 = com.byazt.xr.l.hp()
            com.byazt.oyr.hp r0 = r0.l()
            com.byazt.ap.w r0 = r0.l()
            r0.hp(r4)
            com.byazt.di.hp r4 = com.byazt.di.hp.jl()
            java.lang.String r4 = r4.s()
            boolean r1 = android.text.TextUtils.isEmpty(r4)
            if (r1 != 0) goto L29
            java.lang.String r1 = "X-Tt-Env"
            r0.l(r1, r4)
            java.lang.String r4 = "x-use-ppe"
            java.lang.String r1 = "1"
            r0.l(r4, r1)
        L29:
            if (r6 == 0) goto L3c
            java.lang.String r4 = "x-pglcypher"
            java.lang.String r6 = "4"
            r0.l(r4, r6)
            java.lang.String r4 = "Content-Encoding"
            java.lang.String r6 = "union_sdk_encode"
            r0.l(r4, r6)
            java.lang.String r4 = "application/octet-stream"
            goto L3e
        L3c:
            java.lang.String r4 = "application/octet-stream;tt-data=a"
        L3e:
            java.lang.String r6 = "User-Agent"
            java.lang.String r1 = com.byazt.rt.l.hp
            r0.l(r6, r1)
            r0.hp(r4, r5)
            com.byazt.oyr.l r4 = r0.hp()
            r5 = 1
            r6 = 0
            if (r4 == 0) goto L79
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: org.json.JSONException -> L61
            java.lang.String r1 = r4.w()     // Catch: org.json.JSONException -> L61
            r0.<init>(r1)     // Catch: org.json.JSONException -> L61
            boolean r0 = r3.hp(r0)     // Catch: org.json.JSONException -> L61
            if (r0 == 0) goto L79
            r0 = r5
            goto L7a
        L61:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "ignore:"
            r1.<init>(r2)
            java.lang.String r0 = r0.toString()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "uploadEvent"
            com.byazt.aw.l.j(r1, r0)
        L79:
            r0 = r6
        L7a:
            if (r4 == 0) goto L81
            int r1 = r4.l()
            goto L82
        L81:
            r1 = r6
        L82:
            if (r0 != 0) goto L8b
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 != r2) goto L8b
            java.lang.String r4 = "server say not success"
            goto Lb2
        L8b:
            if (r4 == 0) goto Laf
            java.lang.String r5 = r4.jx()
            if (r0 != 0) goto Lad
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r5)
            java.lang.String r5 = "::"
            r2.append(r5)
            java.lang.String r4 = r4.w()
            r2.append(r4)
            java.lang.String r4 = r2.toString()
        Lab:
            r5 = r6
            goto Lb2
        Lad:
            r4 = r5
            goto Lab
        Laf:
            java.lang.String r4 = "error unknown"
            goto Lab
        Lb2:
            com.byazt.lsx.w r6 = new com.byazt.lsx.w
            r6.<init>(r0, r1, r4, r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qz.l.hp(java.lang.String, byte[], boolean):com.byazt.lsx.w");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.byazt.lsx.w hp(java.lang.String r5, byte[] r6) {
        /*
            r4 = this;
            com.byazt.xr.l r0 = com.byazt.xr.l.hp()
            com.byazt.oyr.hp r0 = r0.l()
            com.byazt.ap.w r0 = r0.l()
            r0.hp(r5)
            com.byazt.di.hp r5 = com.byazt.di.hp.jl()
            java.lang.String r5 = r5.s()
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 != 0) goto L29
            java.lang.String r1 = "X-Tt-Env"
            r0.l(r1, r5)
            java.lang.String r5 = "x-use-ppe"
            java.lang.String r1 = "1"
            r0.l(r5, r1)
        L29:
            java.lang.String r5 = "User-Agent"
            java.lang.String r1 = com.byazt.rt.l.hp
            r0.l(r5, r1)
            java.lang.String r5 = "Content-Encoding"
            java.lang.String r1 = "union_sdk_encode"
            r0.l(r5, r1)
            java.lang.String r5 = "application/json; charset=utf-8"
            r0.hp(r5, r6)
            com.byazt.oyr.l r5 = r0.hp()
            r6 = 1
            r0 = 0
            if (r5 == 0) goto L6d
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L55
            java.lang.String r2 = r5.w()     // Catch: org.json.JSONException -> L55
            r1.<init>(r2)     // Catch: org.json.JSONException -> L55
            boolean r1 = r4.hp(r1)     // Catch: org.json.JSONException -> L55
            if (r1 == 0) goto L6d
            r1 = r6
            goto L6e
        L55:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "ignore:"
            r2.<init>(r3)
            java.lang.String r1 = r1.toString()
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "uploadEvent"
            com.byazt.aw.l.j(r2, r1)
        L6d:
            r1 = r0
        L6e:
            if (r5 == 0) goto L75
            int r2 = r5.l()
            goto L76
        L75:
            r2 = r0
        L76:
            if (r1 != 0) goto L7f
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 != r3) goto L7f
            java.lang.String r5 = "server say not success"
            goto La6
        L7f:
            if (r5 == 0) goto La3
            java.lang.String r6 = r5.jx()
            if (r1 != 0) goto La1
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r6)
            java.lang.String r6 = "::"
            r3.append(r6)
            java.lang.String r5 = r5.w()
            r3.append(r5)
            java.lang.String r5 = r3.toString()
        L9f:
            r6 = r0
            goto La6
        La1:
            r5 = r6
            goto L9f
        La3:
            java.lang.String r5 = "error unknown"
            goto L9f
        La6:
            com.byazt.lsx.w r0 = new com.byazt.lsx.w
            r0.<init>(r1, r2, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qz.l.hp(java.lang.String, byte[]):com.byazt.lsx.w");
    }

    @Override // com.byazt.qz.hp
    public com.byazt.lsx.w hp(List<com.byazt.lsx.hp> list) {
        if (list == null) {
            return null;
        }
        try {
            if (list.isEmpty()) {
                return null;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "--==-- v3: " + list.size());
            boolean zHp = hp();
            byte[] bArrHp = hp(list, zHp);
            if (bArrHp != null && bArrHp.length > 0) {
                return hp(com.byazt.di.jx.l(), bArrHp, zHp);
            }
            return hp(com.byazt.di.jx.l(), sz.l().ks() == 1 ? hp : j(list));
        } catch (Throwable unused) {
            com.byazt.aw.l.j("ReportNetApiImpl", "uploadEvent error:");
            return new com.byazt.lsx.w(false, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, "service_busy", false);
        }
    }

    private byte[] hp(List<com.byazt.lsx.hp> list, boolean z2) throws Throwable {
        byte[] bArrL = l(list);
        w wVarA = nu.a();
        if (bArrL == null) {
            return null;
        }
        if (z2) {
            return wVarA.encrypt(bArrL);
        }
        return hp(bArrL, bArrL.length);
    }

    private byte[] hp(String str) {
        try {
            return str == null ? new byte[0] : str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            return new byte[0];
        }
    }

    private byte[] hp(byte[] bArr, int i2) {
        if (bArr != null && i2 > 0) {
            try {
                if (bArr.length == i2) {
                    return zy.hp(bArr, i2);
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private boolean hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.optInt("code") != 20000) {
                    return cb.f11292o.equals(jSONObject.optString("message"));
                }
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
