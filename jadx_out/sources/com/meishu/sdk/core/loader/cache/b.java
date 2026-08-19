package com.meishu.sdk.core.loader.cache;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.domain.SdkMonitor;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;

/* loaded from: classes4.dex */
public class b {
    public void a(Context context, a aVar, String str, long j2, SdkMonitor sdkMonitor) {
        try {
            if (aVar.f31610e) {
                String[] responUrl = aVar.f31613h.getResponUrl();
                if (responUrl != null && responUrl.length > 0) {
                    for (String str2 : responUrl) {
                        if (!TextUtils.isEmpty(str2)) {
                            a0.a(context, i0.a(i0.a(i0.a(str2, str, aVar.f31613h.getReq_id()), System.currentTimeMillis() - j2)), new i());
                        }
                    }
                }
                a(aVar.f31613h.getMonitorUrl(), str, aVar.f31613h);
                a(aVar.f31613h.getClickUrl(), str, aVar.f31613h);
                a(aVar.f31613h.getDn_active(), str, aVar.f31613h);
                a(aVar.f31613h.getDn_inst_start(), str, aVar.f31613h);
                a(aVar.f31613h.getDn_inst_succ(), str, aVar.f31613h);
                a(aVar.f31613h.getDn_start(), str, aVar.f31613h);
                a(aVar.f31613h.getDn_succ(), str, aVar.f31613h);
                a(aVar.f31613h.getErrorUrl(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_complete(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_mute(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_one_half(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_one_quarter(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_pause(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_replay(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_resume(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_start(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_three_quarter(), str, aVar.f31613h);
                a(aVar.f31613h.getVideo_unmute(), str, aVar.f31613h);
                a(aVar.f31613h.getDp_fail(), str, aVar.f31613h);
                a(aVar.f31613h.getDp_start(), str, aVar.f31613h);
                a(aVar.f31613h.getDp_succ(), str, aVar.f31613h);
                a(aVar.f31613h.getWx_fail(), str, aVar.f31613h);
                a(aVar.f31613h.getWx_start(), str, aVar.f31613h);
                a(aVar.f31613h.getWx_succ(), str, aVar.f31613h);
                return;
            }
            if (sdkMonitor == null || TextUtils.isEmpty(sdkMonitor.getReq())) {
                a0.a(context, i0.a(i0.a(aVar.f31607b.getCache_req(), str, aVar.f31613h.getReq_id())), new i());
            } else {
                a0.a(context, i0.a(i0.a(a(aVar.f31607b, sdkMonitor.getReq()), str, aVar.f31613h.getReq_id())), new i());
            }
            if (sdkMonitor == null || TextUtils.isEmpty(sdkMonitor.getRsp())) {
                a0.a(context, i0.a(i0.a(aVar.f31607b.getCache_rsp(), str, aVar.f31613h.getReq_id())), new i());
                a0.a(context, i0.a(i0.a(i0.a(aVar.f31607b.getFinalRsp(), str, aVar.f31613h.getReq_id()), System.currentTimeMillis() - j2)), new i());
            } else {
                String strA = a(aVar.f31607b, sdkMonitor.getRsp().replace("__PRICE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.f31607b.getOriginEcpm() * 10).getBytes(), 2)).replace("__S__", aVar.f31607b.get_s()));
                String strA2 = i0.a(strA.replace("__PST__", aVar.f31607b.get_pst()), str, aVar.f31613h.getReq_id());
                String strA3 = i0.a(strA, str, aVar.f31613h.getReq_id());
                a0.a(context, i0.a(strA2), new i());
                a0.a(context, i0.a(i0.a(strA3, System.currentTimeMillis() - j2)), new i());
            }
            if (sdkMonitor == null || TextUtils.isEmpty(sdkMonitor.getImp())) {
                aVar.f31607b.setImp(i0.a(aVar.f31607b.getCache_imp(), str, aVar.f31613h.getReq_id()));
            } else {
                aVar.f31607b.setImp(i0.a(a(aVar.f31607b, sdkMonitor.getImp()).replace("__PRICE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.f31607b.getOriginEcpm() * 10).getBytes(), 2)).replace("__PRE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.f31607b.getEcpm() * 10).getBytes(), 2)), str, aVar.f31613h.getReq_id()));
            }
            if (sdkMonitor == null || TextUtils.isEmpty(sdkMonitor.getClk())) {
                aVar.f31607b.setClk(i0.a(aVar.f31607b.getCache_clk(), str, aVar.f31613h.getReq_id()));
            } else {
                aVar.f31607b.setClk(i0.a(a(aVar.f31607b, i0.a(sdkMonitor.getClk().replace("__S__", aVar.f31607b.get_s()).replace("__PST__", aVar.f31607b.get_pst()).replace("__PRICE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.f31607b.getOriginEcpm() * 10).getBytes(), 2)).replace("__PRE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.f31607b.getEcpm() * 10).getBytes(), 2)), str, aVar.f31613h.getReq_id())), str, aVar.f31613h.getReq_id()));
            }
            if (sdkMonitor != null && !TextUtils.isEmpty(sdkMonitor.getErr())) {
                String strReplace = sdkMonitor.getErr().replace("__PRICE__", aVar.f31607b.getOriginEcpm() + "").replace("__S__", aVar.f31607b.get_s());
                if (TextUtils.isEmpty(aVar.f31607b.get_err_pst())) {
                    strReplace = strReplace.replace("__PST__", aVar.f31607b.get_err_pst());
                }
                aVar.f31607b.setErr(i0.a(a(aVar.f31607b, strReplace), str, aVar.f31613h.getReq_id()));
                return;
            }
            aVar.f31607b.setErr(i0.a(aVar.f31607b.getCache_err(), str, aVar.f31613h.getReq_id()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(String[] strArr, String str, MeishuAdInfo meishuAdInfo) {
        String req_id = meishuAdInfo.getReq_id();
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str2 = strArr[i2];
                if (!TextUtils.isEmpty(str2)) {
                    strArr[i2] = i0.a(str2, str, req_id);
                }
            }
            meishuAdInfo.setClickUrl(strArr);
        }
    }

    public final String a(SdkAdInfo sdkAdInfo, String str) {
        return TextUtils.replace(str, new String[]{"__ACCEPT_ID__", "__STRATEGY_DEALID__", "__ACCEPT_APPID__", "__ACCEPT_PID__", "__SDK__", "__GROUP_ID__", "__P__", "__TIMEOUT__"}, new String[]{sdkAdInfo.getAccept_id() == null ? "" : sdkAdInfo.getAccept_id(), sdkAdInfo.getStrategy_dealid() == null ? "" : sdkAdInfo.getStrategy_dealid(), sdkAdInfo.getApp_id() == null ? "" : sdkAdInfo.getApp_id(), sdkAdInfo.getPid() == null ? "" : sdkAdInfo.getPid(), sdkAdInfo.getSdk() == null ? "" : sdkAdInfo.getSdk(), sdkAdInfo.getGroup_id() != null ? sdkAdInfo.getGroup_id() : "", String.valueOf(sdkAdInfo.getPrice()), String.valueOf(0)}).toString();
    }
}
