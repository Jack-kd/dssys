package com.beizi.fusion.asnp.common.analyse2.base.model.init;

import androidx.core.app.NotificationCompat;
import com.beizi.fusion.asnp.common.analyse2.base.model.AnalyseBasicReceiveLog;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AnalyseLogStrategyModel extends AnalyseBasicReceiveLog {

    @ng(key = "acceptEncrypt")
    private String acceptEncrypt;

    @ng(key = "crash")
    private AnalyseCrashModel crashModel;

    @ng(key = "customData")
    private String customData;

    @ng(key = "customId")
    private String customID;

    @ng(key = NotificationCompat.CATEGORY_EVENT)
    private List<AnalyseEventModel> eventModels;

    @ng(key = cl.f49059n)
    private String version;

    public AnalyseLogStrategyModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String a() {
        return this.acceptEncrypt;
    }

    public AnalyseCrashModel b() {
        return this.crashModel;
    }

    public String getCustomData() {
        return this.customData;
    }

    public List getEventModels() {
        return this.eventModels;
    }

    public String getVersion() {
        return this.version;
    }
}
