package com.beizi.fusion.asnp.common.v2.crash;

import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.db.StrategyEventDBModel;
import com.beizi.fusion.asnp.common.analyse2.base.model.Analyse2JsonLog;
import com.beizi.fusion.ng;

/* loaded from: classes2.dex */
public class ScopeCrashLog extends Analyse2JsonLog {

    @ng(key = "affiliated")
    private String mAffiliated;

    @ng(key = "exception")
    private String mException;

    @ng(key = StrategyEventDBModel.COLUMN_EVENT_TIME)
    private final String mTime;

    public ScopeCrashLog(String str, String str2, String str3) {
        this.mException = str2;
        if (TextUtils.isEmpty(str3)) {
            str3 = System.currentTimeMillis() + "";
        }
        this.mTime = str3;
        this.mAffiliated = str;
    }
}
