package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down;

import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.permission.PermissionModel;
import com.beizi.fusion.ng;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class DownloadInfoModel extends ASNPJsonResponseModel {

    @ng(key = TKDownloadReason.KSAD_TK_MD5)
    private String apkMD5;

    @ng(key = "appIntro")
    private String appIntroduction;

    @ng(key = "bundle")
    private String bundle;

    @ng(key = "developer")
    private String developer;

    @ng(key = "iconUrl")
    private String iconUrl;

    @ng(key = "name")
    private String name;

    @ng(key = "permission")
    private List<PermissionModel> permission;

    @ng(key = "permissionUrl")
    private String permissionUrl;

    @ng(key = bv.bq)
    private String policy;

    @ng(key = "policyUrl")
    private String policyUrl;

    @ng(key = "size")
    private String size;

    @ng(key = cl.f49059n)
    private String version;

    public DownloadInfoModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getApkMD5() {
        return this.apkMD5;
    }

    public String getAppIntroduction() {
        return this.appIntroduction;
    }

    public String getBundle() {
        return this.bundle;
    }

    public String getDeveloper() {
        return this.developer;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getName() {
        return this.name;
    }

    public List<PermissionModel> getPermission() {
        return this.permission;
    }

    public String getPermissionUrl() {
        return this.permissionUrl;
    }

    public String getPolicy() {
        return this.policy;
    }

    public String getPolicyUrl() {
        return this.policyUrl;
    }

    public String getSize() {
        return this.size;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isConformanceByDlInfo() {
        if (TextUtils.isEmpty(this.name) || TextUtils.isEmpty(this.developer) || TextUtils.isEmpty(this.version)) {
            return false;
        }
        if (TextUtils.isEmpty(this.policy) && TextUtils.isEmpty(this.policyUrl)) {
            return false;
        }
        List<PermissionModel> list = this.permission;
        return (((list == null || list.isEmpty()) && TextUtils.isEmpty(this.permissionUrl)) || TextUtils.isEmpty(this.appIntroduction)) ? false : true;
    }
}
