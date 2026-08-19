package com.fl.saas.adx.base.activity.h5;

import android.text.TextUtils;
import com.fl.saas.AbstractC1157a1;
import com.fl.saas.B0;
import com.fl.saas.C1188j;
import com.fl.saas.E0;
import com.fl.saas.S0;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes3.dex */
public class QuickAppHelper {
    private static QuickAppHelper sInstance;
    private boolean enableQuickApp;
    private C1188j mAdxInfo;
    private List<String> whitelistHeaders;
    private final List<String> listQuickKey = new ArrayList();
    private final Map<String, String> mapQuickKey = new HashMap();
    private int collectWebviewWakeup = 0;
    private double quickAppBlockRatio = 100.0d;
    private int webviewWakeupLimit = 0;
    private int quickAppInterceptionType = 1;
    private int quickAppFreqDay = 0;
    private final Map<String, Integer> startQuickAppTimesMap = new HashMap();
    private boolean isQuickApp = false;

    private QuickAppHelper() {
    }

    private boolean checkInterceptRatio() {
        double d2 = this.quickAppBlockRatio;
        return d2 < 100.0d && d2 >= 0.0d && new Random().nextDouble() * 100.0d > this.quickAppBlockRatio;
    }

    private boolean checkQuickAppFreqDay(boolean z2, String str, int i2) {
        if (this.quickAppFreqDay <= 0) {
            if (!checkInterceptRatio()) {
                return true;
            }
            if (z2) {
                this.startQuickAppTimesMap.put(str, Integer.valueOf(i2 + 1));
            }
            return false;
        }
        String date = DeviceUtil.getDate();
        if (!date.equals(S0.a().a("lastOpenQuickAppDay", ""))) {
            if (!checkInterceptRatio()) {
                return true;
            }
            S0.a().b("lastOpenQuickAppDay", date);
            S0.a().b("lastDayOpenQuickAppDayNumber", 1);
            if (z2) {
                this.startQuickAppTimesMap.put(str, Integer.valueOf(i2 + 1));
            }
            return false;
        }
        int iA = S0.a().a("lastDayOpenQuickAppDayNumber", 0);
        if (iA >= this.quickAppFreqDay || !checkInterceptRatio()) {
            return true;
        }
        S0.a().b("lastDayOpenQuickAppDayNumber", iA + 1);
        if (z2) {
            this.startQuickAppTimesMap.put(str, Integer.valueOf(i2 + 1));
        }
        return false;
    }

    public static QuickAppHelper getInstance() {
        if (sInstance == null) {
            synchronized (QuickAppHelper.class) {
                sInstance = new QuickAppHelper();
            }
        }
        return sInstance;
    }

    public void addListQuickKey(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (!this.listQuickKey.contains(str)) {
                    this.listQuickKey.add(str);
                }
            }
        }
    }

    public void addListQuickMatch(List<B0> list) {
        if (list != null) {
            for (B0 b02 : list) {
                if (b02 != null && !TextUtils.isEmpty(b02.b()) && !this.mapQuickKey.containsKey(b02.b())) {
                    this.mapQuickKey.put(b02.b(), b02.a());
                }
            }
        }
    }

    public void clearHistory() {
        this.mAdxInfo = null;
        this.startQuickAppTimesMap.clear();
    }

    public boolean enableQuickApp(String str) {
        return this.enableQuickApp;
    }

    public int getQuickAppInterceptionType() {
        return this.quickAppInterceptionType;
    }

    public void reportUrl(String str) {
        if (this.collectWebviewWakeup == 0 || this.mAdxInfo == null || TextUtils.isEmpty(str)) {
            return;
        }
        E0.a().b(this.mAdxInfo, str);
    }

    public void setAdSource(C1188j c1188j) {
        this.mAdxInfo = c1188j;
    }

    public void setCollectWebviewWakeup(int i2) {
        this.collectWebviewWakeup = i2;
    }

    public void setEnableQuickApp(int i2) {
        this.enableQuickApp = i2 == 0;
    }

    public void setQuickAppBlockRatio(double d2) {
        this.quickAppBlockRatio = d2;
    }

    public void setQuickAppFreqDay(int i2) {
        this.quickAppFreqDay = i2;
    }

    public void setQuickAppInterceptionType(int i2) {
        this.quickAppInterceptionType = i2;
    }

    public void setWebviewWakeupLimit(int i2) {
        this.webviewWakeupLimit = i2;
    }

    public void setWhitelistHeaders(List<String> list) {
        this.whitelistHeaders = list;
    }

    public boolean urlIntercept(String str) {
        Integer num;
        try {
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        List<String> list = this.whitelistHeaders;
        if (list != null && !list.isEmpty()) {
            for (String str2 : this.whitelistHeaders) {
                if (!TextUtils.isEmpty(str2) && str.startsWith(str2)) {
                    return false;
                }
            }
        }
        this.isQuickApp = false;
        if (!this.listQuickKey.isEmpty()) {
            Iterator<String> it = this.listQuickKey.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (!TextUtils.isEmpty(next) && str.startsWith(next)) {
                    this.isQuickApp = true;
                    break;
                }
            }
        }
        if (!this.isQuickApp && !this.mapQuickKey.isEmpty()) {
            for (String str3 : this.mapQuickKey.keySet()) {
                if (!TextUtils.isEmpty(str3) && str.startsWith(str3)) {
                    String str4 = this.mapQuickKey.get(str3);
                    if (!TextUtils.isEmpty(str4) && AbstractC1157a1.b(str4.split(","), str)) {
                        this.isQuickApp = true;
                    }
                }
            }
        }
        if (this.isQuickApp) {
            if (this.webviewWakeupLimit <= 0) {
                return checkQuickAppFreqDay(false, str, 0);
            }
            if (!this.startQuickAppTimesMap.containsKey(str) || (num = this.startQuickAppTimesMap.get(str)) == null) {
                return checkQuickAppFreqDay(true, str, 0);
            }
            if (num.intValue() < this.webviewWakeupLimit) {
                return checkQuickAppFreqDay(true, str, num.intValue());
            }
            return true;
        }
        return false;
    }
}
