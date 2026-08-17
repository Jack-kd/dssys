package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2;

import androidx.core.app.NotificationCompat;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.crash.Crash2ConfigModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.event.Analyse2EventModel;
import com.beizi.fusion.m0;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.cl;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class Analyse2ConfigModel extends ASNPJsonResponseModel {

    @ng(key = "crash")
    private Crash2ConfigModel crash;

    @ng(key = "customData")
    private String customData;
    private final String customID;

    @ng(key = "acceptEncrypt")
    private String encrypt;

    @ng(key = NotificationCompat.CATEGORY_EVENT)
    private List<Analyse2EventModel> events;

    @ng(key = cl.f49059n)
    private String versionMd5;

    public Analyse2ConfigModel(JSONObject jSONObject) {
        super(jSONObject);
        this.customID = m0.e();
    }

    public Crash2ConfigModel getCrash() {
        return this.crash;
    }

    public String getVersionMd5() {
        return this.versionMd5;
    }
}
