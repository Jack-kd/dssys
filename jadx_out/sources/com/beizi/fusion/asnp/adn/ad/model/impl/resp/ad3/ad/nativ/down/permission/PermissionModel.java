package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.permission;

import com.anythink.core.common.f.g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import com.meishu.sdk.core.view.DownloadView;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class PermissionModel extends ASNPJsonResponseModel {

    @ng(key = DownloadView.CLICK_DOWNLOAD_INFO_TYPE_DESCRIBE)
    private String describe;

    @ng(key = "permissionType")
    private String permissionType;

    @ng(key = g.a.f3271h)
    private String title;

    public PermissionModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getDescribe() {
        return this.describe;
    }

    public String getPermissionType() {
        return this.permissionType;
    }

    public String getTitle() {
        return this.title;
    }
}
