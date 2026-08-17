package com.byazt.lf;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byakv.z.TTEncryptUtils;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.kc.AbsServerManager;
import com.byazt.rz.PluginConstants;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.b;
import com.byazt.zn.ec;
import com.byazt.zn.ky;
import com.byazt.zn.v;
import com.byazt.zn.xh;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 736, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.jw.s {
    public static final hp hp = new hp();

    /* renamed from: j, reason: collision with root package name */
    public String f22481j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public long f22482l;

    private hp() {
    }

    @Override // com.byazt.jw.s
    public String a() {
        return ky.b();
    }

    @Override // com.byazt.jw.s
    public int e() {
        return sz.l().ly() ? 4 : 3;
    }

    @Override // com.byazt.jw.s
    public String eb() {
        return ky.jl("/api/ad/union/sdk/stats/batch/");
    }

    public String hp(Context context) {
        try {
            return DeviceUtils.l(context) ? "tv" : DeviceUtils.hp(context) ? "android_pad" : "android";
        } catch (Throwable unused) {
            return "android";
        }
    }

    @Override // com.byazt.jw.s
    public int j() {
        int iKy = sz.l().ky();
        if (iKy < 0 || iKy == Integer.MAX_VALUE) {
            return 10;
        }
        return iKy;
    }

    @Override // com.byazt.jw.s
    public long jx() {
        long jR = sz.l().r();
        if (jR < 0 || jR == 2147483647L) {
            return 5000L;
        }
        return jR;
    }

    @Override // com.byazt.jw.s
    public byte[] l(JSONObject jSONObject, int i2) throws Throwable {
        byte[] bArrL = l(jSONObject);
        com.byazt.pg.w wVarL = b.l();
        if (bArrL == null || wVarL == null || !wVarL.getArmorLoadStatus() || i2 <= 3) {
            return null;
        }
        byte[] bArrEncrypt = wVarL.encrypt(bArrL);
        if (bArrEncrypt == null) {
            k.hp().hp(3, -1L, "stats", wVarL.getSpecificArmorLoadStatus());
        }
        return bArrEncrypt;
    }

    @Override // com.byazt.jw.s
    public JSONObject q() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_id", v.hp());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.byazt.jw.s
    public boolean s() {
        return d.hp();
    }

    @Override // com.byazt.jw.s
    public com.byazt.lpy.a w() {
        return new jl(com.byazt.cm.w.hp().l().l());
    }

    @SuppressLint({"HardwareIds"})
    private JSONObject hp(List<com.byazt.jw.l> list, boolean z2, boolean z3) {
        JSONObject jSONObject = new JSONObject();
        Context context = sz.getContext();
        try {
            com.byazt.pg.jl jlVar = (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
            if (z2) {
                jSONObject.put("sdk_version", d.f21860w);
                jSONObject.put(bv.f48918s, com.byazt.ij.hp.a());
                jSONObject.put("app_version", com.byazt.ij.hp.w());
                jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, ky.s());
                jSONObject.put("region", Locale.getDefault().getCountry());
                jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
                jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
                ArrayList<String> arrayListHp = com.byazt.ymw.jx.hp(context, "MD5");
                if (arrayListHp != null && !arrayListHp.isEmpty()) {
                    jSONObject.put("sig_hash", arrayListHp.get(0));
                }
                jSONObject.put("version_code", ky.q());
            }
            jSONObject.put("ua", jlVar.getWebViewUA(false));
            com.byazt.tn.l.hp(context, jSONObject);
            jSONObject.put("openudid", DeviceUtils.l());
            jSONObject.put("oaid", ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getOAID(false));
            jSONObject.put("ad_sdk_version", d.f21860w);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
            jSONObject.put("is_plugin", d.hp());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("client_ipv4", ec.l((String) null));
            jSONObject2.put("client_ipv6", ec.l());
            jSONObject.put("custom", jSONObject2);
            jSONObject.put("sim_op", jlVar.getSimOperator());
            jSONObject.put("root", z3 ? 1 : 0);
            jSONObject.put("timezone", jlVar.getTimeZoneInt());
            jSONObject.put(bv.f48890Q, vv.eb(context));
            jSONObject.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
            jSONObject.put(bv.f48924y, Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            if (TextUtils.isEmpty(this.f22481j)) {
                this.f22481j = hp(context);
            }
            jSONObject.put(bv.ac, this.f22481j);
            jSONObject.put("device_model", jlVar.getDeviceModel());
            jSONObject.put(bv.f48879F, Build.BRAND);
            jSONObject.put(bv.f48881H, Build.MANUFACTURER);
            jSONObject.put("language", Locale.getDefault().getLanguage());
            jSONObject.put(bv.f48925z, xh.w(context) + "x" + xh.j(context));
            jSONObject.put("display_density", hp(jlVar.getDisplayDpi()));
            jSONObject.put("density_dpi", jlVar.getDisplayDpi());
            jSONObject.put("device_id", v.hp());
            int iJx = com.byazt.giz.hp.jx(list, com.byazt.mdk.hp.j("csj"));
            if (iJx != 0) {
                jSONObject.put("aid", String.valueOf(iJx));
            } else {
                jSONObject.put("aid", "1371");
            }
            jSONObject.put("rom", jlVar.getRom());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", jlVar.getBuildSerial());
            jSONObject.put("ut", this.jx);
            jSONObject.put("uid", this.f22482l);
            jSONObject.put("locale_language", jlVar.getLocalLanguage());
            jSONObject.put("screen_bright", Math.ceil(DeviceUtils.w() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", !DeviceUtils.hp() ? 1 : 0);
            jSONObject.put("download_channel", com.byazt.ij.hp.q());
            jSONObject.put("mnc", jlVar.getMnc());
            jSONObject.put("mcc", jlVar.getMcc());
            jSONObject.put("pan_code_serial", n.f36446i);
            return jSONObject;
        } catch (Throwable th) {
            u.l("log_net", th.getMessage());
            return jSONObject;
        }
    }

    private byte[] l(JSONObject jSONObject) throws Throwable {
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (jSONObject == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (IOException unused) {
            }
        } catch (Exception unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            gZIPOutputStream.write(jSONObject.toString().getBytes());
            gZIPOutputStream.close();
        } catch (Exception unused3) {
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                gZIPOutputStream2.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.byazt.jw.s
    public String l() {
        return ky.di();
    }

    @Override // com.byazt.jw.s
    public JSONObject hp(List<com.byazt.jw.l> list, boolean z2) throws JSONException {
        if (list != null && !list.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            boolean z3 = false;
            try {
                hp(list.get(0));
                JSONArray jSONArray = new JSONArray();
                Iterator<com.byazt.jw.l> it = list.iterator();
                while (it.hasNext()) {
                    JSONObject jSONObjectEb = it.next().eb();
                    if (TextUtils.equals("pangle_live_sdk_monitor", jSONObjectEb.optString(NotificationCompat.CATEGORY_EVENT))) {
                        if (!z3) {
                            z3 = true;
                        }
                        jSONObjectEb.putOpt("nt", Integer.valueOf(vv.jx(sz.getContext())));
                    }
                    jSONArray.put(jSONObjectEb);
                }
                jSONObject.put("header", hp(list, z3, z2));
                jSONObject.put("event_v3", jSONArray);
                jSONObject.put("magic_tag", "ss_app_log");
                jSONObject.put("_gen_time", System.currentTimeMillis());
                return jSONObject;
            } catch (JSONException e2) {
                u.hp(e2.getMessage());
            }
        }
        return null;
    }

    @Override // com.byazt.jw.s
    public byte[] hp(JSONObject jSONObject, int i2) throws Throwable {
        byte[] bArrL = l(jSONObject);
        if (bArrL == null) {
            return null;
        }
        com.byazt.pg.w wVarL = b.l();
        if (i2 > 3 && wVarL != null) {
            byte[] bArrEncrypt = wVarL.encrypt(bArrL);
            if (bArrEncrypt == null) {
                k.hp().hp(3, -1L, "applog", wVarL.getSpecificArmorLoadStatus());
            }
            return bArrEncrypt;
        }
        return TTEncryptUtils.hp(bArrL, bArrL.length);
    }

    @Override // com.byazt.jw.s
    public boolean hp() {
        return com.byazt.jz.s.u().yr();
    }

    @Override // com.byazt.jw.s
    public JSONObject hp(JSONObject jSONObject) {
        if (sz.l().ks() == 1) {
            return new JSONObject();
        }
        return com.byazt.ymw.hp.hp(jSONObject);
    }

    private void hp(com.byazt.jw.l lVar) {
        String strOptString;
        if (lVar == null) {
            return;
        }
        JSONObject jSONObjectEb = lVar.eb();
        JSONObject jSONObjectOptJSONObject = jSONObjectEb.optJSONObject("params");
        if (jSONObjectOptJSONObject != null) {
            strOptString = jSONObjectOptJSONObject.optString("log_extra", "");
        } else {
            strOptString = jSONObjectEb.optString("log_extra", "");
        }
        long jA = ky.a(strOptString);
        int iEb = ky.eb(strOptString);
        if (jA == 0) {
            jA = this.f22482l;
        }
        this.f22482l = jA;
        if (iEb == 0) {
            iEb = this.jx;
        }
        this.jx = iEb;
    }

    public static String hp(int i2) {
        if (i2 == 120) {
            return "ldpi";
        }
        if (i2 == 160) {
            return "mdpi";
        }
        if (i2 == 240) {
            return "hdpi";
        }
        if (i2 == 320) {
            return "xhdpi";
        }
        if (i2 == 480) {
            return "xxhdpi";
        }
        if (i2 != 640) {
            return "mdpi";
        }
        return "xxxhdpi";
    }
}
