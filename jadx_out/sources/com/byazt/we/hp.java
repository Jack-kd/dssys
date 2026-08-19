package com.byazt.we;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.view.PointerIconCompat;
import com.byazt.dnb.s;
import com.byazt.jz.a;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.kc.AbsServerManager;
import com.byazt.nke.b;
import com.byazt.pg.jl;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xci.xh;
import com.byazt.ym.j;
import com.byazt.ymw.jx;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.yx.l;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.ky;
import com.byazt.zn.v;
import com.bytedance.android.metrics.ActionType;
import com.bytedance.android.metrics.EnterFromMerge;
import com.bytedance.android.metrics.EnterMethod;
import com.bytedance.android.metrics.LiveMetrics;
import com.bytedance.android.metrics.LiveMetricsBuilder;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(final String str, final mp mpVar, final long j2) {
        s.l(new Runnable() { // from class: com.byazt.we.hp.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    xh xhVarSz = mpVar.sz();
                    String strE = mpVar.e();
                    if (TextUtils.isEmpty(strE) && xhVarSz != null) {
                        strE = xhVarSz.l();
                    }
                    if (TextUtils.isEmpty(strE)) {
                        return;
                    }
                    String strA = xhVarSz != null ? xhVarSz.a() : null;
                    if (TextUtils.isEmpty(strA)) {
                        strA = mpVar.ns();
                    }
                    JSONObject jSONObjectFilterParam = LiveMetrics.filterParam(new LiveMetricsBuilder().roomId(Long.parseLong(strE)).anchorId(xhVarSz != null ? xhVarSz.hp() : "").requestId(strA).enterFromMerge(hp.l(ky.jl(mpVar))).enterMethod(hp.hp(ky.jl(mpVar))).actionType(ActionType.CLICK).duration(j2).build(), hp.hp(sz.getContext()));
                    jSONObjectFilterParam.put("tob_extra", mpVar.w_());
                    jSONObjectFilterParam.put("live_sdk_status", l.hp().jx());
                    jSONObjectFilterParam.put("live_auth_status", l.hp().w());
                    jSONObjectFilterParam.put("app_start_time", SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime());
                    jSONObjectFilterParam.put("is_web", mpVar.s_());
                    a.l(str, jSONObjectFilterParam);
                } catch (Throwable th) {
                    u.hp("TTLiveVideoUtil", "Throwable : ", th);
                }
            }
        });
    }

    private static String jx(int i2) {
        return i2 != 120 ? i2 != 160 ? i2 != 240 ? i2 != 320 ? i2 != 480 ? i2 != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi" : "mdpi" : "ldpi";
    }

    public static EnterFromMerge l(int i2) {
        return i2 == 7 ? EnterFromMerge.AD_UNION_EXCITATION : i2 == 8 ? EnterFromMerge.AD_UNION_INSERT : i2 == 5 ? EnterFromMerge.AD_UNION_FEED : i2 == 9 ? EnterFromMerge.AD_UNION_DRAW : EnterFromMerge.NO_VALUE;
    }

    public static Map<String, String> hp(Context context) {
        jl jlVar = (jl) j.getService("device_info_new");
        com.byazt.el.hp.w();
        HashMap map = new HashMap();
        map.put("device_id", v.hp());
        map.put("sdk_version", d.f21860w);
        map.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
        map.put(bv.f48924y, Build.VERSION.RELEASE);
        map.put("device_model", jlVar.getDeviceModel());
        map.put(bv.f48925z, com.byazt.zn.xh.w(context) + "x" + com.byazt.zn.xh.j(context));
        map.put("language", Locale.getDefault().getLanguage());
        map.put("timezone", String.valueOf(hp()));
        map.put(bv.f48890Q, vv.eb(context));
        map.put("openudid", DeviceUtils.l());
        map.put("aid", "1371");
        map.put(bv.f48918s, com.byazt.ij.hp.a());
        map.put("app_version", com.byazt.ij.hp.w());
        map.put(AbsServerManager.PACKAGE_QUERY_BINDER, ky.s());
        map.put("region", Locale.getDefault().getCountry());
        map.put("tz_name", Calendar.getInstance().getTimeZone().getID());
        map.put("tz_offset", String.valueOf(Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000));
        map.put("rom", ((jl) j.getService("device_info_new")).getRom());
        String str = Build.MANUFACTURER;
        map.put(bv.f48881H, str);
        ArrayList<String> arrayListHp = jx.hp(context, "MD5");
        if (arrayListHp != null && !arrayListHp.isEmpty()) {
            map.put("sig_hash", str);
        }
        map.put("display_density", jx(jlVar.getDisplayDpi()));
        map.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
        map.put("density_dpi", String.valueOf(jlVar.getDisplayDpi()));
        map.put(bv.f48879F, Build.BRAND);
        map.put("build_serial", jlVar.getBuildSerial());
        map.put("version_code", ky.q());
        map.put("udid", DeviceUtils.hp((Boolean) null));
        map.put("cpu_abi", Build.CPU_ABI);
        map.put("oaid", ((com.byazt.pg.jx) j.getService("embed_applog")).getOAID(false));
        return map;
    }

    public static void l(mp mpVar) {
        if (mpVar != null && hp(mpVar)) {
            String strS = ms.s(mpVar);
            String strQ = ms.q(mpVar);
            if (!TextUtils.isEmpty(strS)) {
                com.byazt.ws.l.hp(strS).to(new b() { // from class: com.byazt.we.hp.2
                    @Override // com.byazt.nke.b
                    public void onFailed(int i2, String str, Throwable th) {
                    }

                    @Override // com.byazt.nke.b
                    public void onSuccess(com.byazt.nke.u uVar) {
                    }
                });
            }
            if (TextUtils.isEmpty(strQ)) {
                return;
            }
            com.byazt.ws.l.hp(strQ).to(new b() { // from class: com.byazt.we.hp.3
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(com.byazt.nke.u uVar) {
                }
            });
        }
    }

    public static EnterMethod hp(int i2) {
        if (i2 == 5) {
            return EnterMethod.LIVE_CARD;
        }
        if (i2 != 7 && i2 != 8 && i2 != 9) {
            return EnterMethod.NO_VALUE;
        }
        return EnterMethod.LIVE_CELL;
    }

    public static boolean hp(mp mpVar) {
        return d.w() && ms.hp(mpVar);
    }

    private static int hp() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }
}
