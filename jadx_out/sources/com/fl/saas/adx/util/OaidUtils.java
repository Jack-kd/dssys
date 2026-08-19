package com.fl.saas.adx.util;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.fl.saas.C1213r0;
import com.fl.saas.S0;
import com.fl.saas.adx.oaid.DeviceID;
import com.fl.saas.adx.oaid.IGetter;

/* loaded from: classes3.dex */
public class OaidUtils {
    private static boolean isCanUseOAID = true;
    private static String oaid = "";

    public static String getOaid() {
        return oaid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String hnid(Context context) {
        try {
            return TextUtils.isEmpty(Settings.Global.getString(context.getContentResolver(), "oaid")) ? Settings.Secure.getString(context.getContentResolver(), "oaid") : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static void init() {
        try {
            C1213r0 c1213r0 = DeviceUtil.controlBean;
            if (c1213r0 != null) {
                if (!c1213r0.f()) {
                    return;
                }
            } else if (!isCanUseOAID) {
                return;
            }
            if (TextUtils.isEmpty(oaid)) {
                oaid = S0.a().a("oaid", "");
                Context context = DeviceUtil.getContext();
                if (context == null) {
                    return;
                }
                load(context);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static boolean isIsCanUseOAID() {
        return isCanUseOAID;
    }

    private static void load(final Context context) {
        try {
            DeviceID.getOAID(context, new IGetter() { // from class: com.fl.saas.adx.util.OaidUtils.1
                @Override // com.fl.saas.adx.oaid.IGetter
                public void onOAIDGetComplete(String str) {
                    if (TextUtils.isEmpty(str) || str.contains("0000")) {
                        str = OaidUtils.hnid(context);
                    }
                    if (TextUtils.isEmpty(OaidUtils.oaid) || !OaidUtils.oaid.equals(str)) {
                        String unused = OaidUtils.oaid = str;
                        S0.a().b("oaid", str);
                    }
                    LogcatUtil.d("FLSDK", "oaid: " + OaidUtils.oaid);
                }

                @Override // com.fl.saas.adx.oaid.IGetter
                public void onOAIDGetError(Throwable th) {
                    LogcatUtil.d("FLSDK", "oaidGetError: " + th.getMessage());
                    String strHnid = OaidUtils.hnid(context);
                    if (TextUtils.isEmpty(OaidUtils.oaid) || !OaidUtils.oaid.equals(strHnid)) {
                        String unused = OaidUtils.oaid = strHnid;
                        S0.a().b("oaid", strHnid);
                    }
                    LogcatUtil.d("FLSDK", "oaid: " + OaidUtils.oaid);
                }
            });
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static void setIsCanUseOAID(boolean z2) {
        isCanUseOAID = z2;
    }

    public static void setOaid(String str) {
        oaid = str;
    }
}
