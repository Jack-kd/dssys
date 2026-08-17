package com.kwad.components.offline.api.tk.model.report;

import com.baidu.mobads.sdk.internal.d;
import com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse;
import com.kwad.components.offline.api.core.utils.JsonHelper;
import com.sigmob.sdk.base.n;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class TKPerformMsg extends BaseOfflineCompoJsonParse<TKPerformMsg> implements Serializable {
    public static final int ENTER_SCENE = -1;
    public static final int OTHER_FAIL = 3;
    public static final int PAGE_STATUS_FAIL = 2;
    public static final int START = 0;
    public static final int SUCCESS = 1;
    public static final int TK_NOT_READY = 4;
    private static final long serialVersionUID = -5293371882532982729L;
    public String errorDetail;
    public String errorReason;
    public long getViewEndTime;
    public long initTime;
    public long loadTime;
    public long registerEndTime;
    public long renderIdleTime;
    public int renderState;
    public long renderTime;

    @RENDER_TYPE
    public int renderType;
    public int source;
    public String templateId;
    private int tkPublishType;
    public String versionCode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ERROR_REASON {
        public static final String KSAD_TK_CONFIG_LOST = "config_lost";
        public static final String KSAD_TK_CONFIG_PARSE_FAIL = "config_parse_fail";
        public static final String KSAD_TK_JS_EMPTY = "js_empty";
        public static final String KSAD_TK_MD5_NOT_MATCH = "md5_not_match";
        public static final String KSAD_TK_NO_FILE = "no_file";
        public static final String KSAD_TK_NO_TEMPLATE = "no_template";
        public static final String KSAD_TK_OFFLINE_FAILED = "offline_failed";
        public static final String KSAD_TK_RENDER_FAIL = "ksad_tk_render_fail";
        public static final String KSAD_TK_SO_FAIL = "so_fail";
    }

    public @interface RENDER_TYPE {
        public static final int MULTIPLE_RENDER = 1;
        public static final int SINGLE_RENDER = 0;
    }

    public TKPerformMsg(int i2) {
        setSource(i2);
    }

    public TKPerformMsg setErrorDetail(String str) {
        this.errorDetail = str;
        return this;
    }

    public TKPerformMsg setErrorReason(String str) {
        this.errorReason = str;
        return this;
    }

    public TKPerformMsg setGetViewEndTime(long j2) {
        this.getViewEndTime = j2;
        return this;
    }

    public TKPerformMsg setInitTime(long j2) {
        this.initTime = j2;
        return this;
    }

    public TKPerformMsg setLoadTime(long j2) {
        this.loadTime = j2;
        return this;
    }

    public TKPerformMsg setRegisterEndTime(long j2) {
        this.registerEndTime = j2;
        return this;
    }

    public TKPerformMsg setRenderIdleTime(long j2) {
        this.renderIdleTime = j2;
        return this;
    }

    public TKPerformMsg setRenderState(int i2) {
        this.renderState = i2;
        return this;
    }

    public TKPerformMsg setRenderTime(long j2) {
        this.renderTime = j2;
        return this;
    }

    public TKPerformMsg setRenderType(int i2) {
        this.renderType = i2;
        return this;
    }

    public TKPerformMsg setSource(int i2) {
        this.source = i2;
        return this;
    }

    public TKPerformMsg setTKPublishType(int i2) {
        this.tkPublishType = i2;
        return this;
    }

    public TKPerformMsg setTemplateId(String str) {
        this.templateId = str;
        return this;
    }

    public TKPerformMsg setVersionCode(String str) {
        this.versionCode = str;
        return this;
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public void parseJson(TKPerformMsg tKPerformMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        tKPerformMsg.source = jSONObject.optInt(n.f36449l);
        tKPerformMsg.renderState = jSONObject.optInt("render_state");
        tKPerformMsg.errorReason = jSONObject.optString("error_reason");
        Object objOpt = jSONObject.opt("error_reason");
        Object obj = JSONObject.NULL;
        if (objOpt == obj) {
            tKPerformMsg.errorReason = "";
        }
        tKPerformMsg.renderTime = jSONObject.optLong("render_time");
        tKPerformMsg.templateId = jSONObject.optString("template_id");
        if (jSONObject.opt("template_id") == obj) {
            tKPerformMsg.templateId = "";
        }
        tKPerformMsg.versionCode = jSONObject.optString("version_code");
        if (jSONObject.opt("version_code") == obj) {
            tKPerformMsg.versionCode = "";
        }
        tKPerformMsg.loadTime = jSONObject.optLong(d.f11443b);
        tKPerformMsg.initTime = jSONObject.optLong(d.f11442a);
        tKPerformMsg.tkPublishType = jSONObject.optInt("tk_publish_type");
        tKPerformMsg.renderType = jSONObject.optInt("render_type");
        tKPerformMsg.renderIdleTime = jSONObject.optLong("render_idle_time");
        tKPerformMsg.registerEndTime = jSONObject.optLong("register_end_time");
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public JSONObject toJson(TKPerformMsg tKPerformMsg, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JsonHelper.putValue(jSONObject, "render_state", tKPerformMsg.renderState);
        int i2 = tKPerformMsg.source;
        if (i2 != 0) {
            JsonHelper.putValue(jSONObject, n.f36449l, i2);
        }
        String str = tKPerformMsg.errorReason;
        if (str != null && !str.equals("")) {
            JsonHelper.putValue(jSONObject, "error_reason", tKPerformMsg.errorReason);
        }
        String str2 = tKPerformMsg.errorDetail;
        if (str2 != null && !str2.equals("")) {
            JsonHelper.putValue(jSONObject, "error_detail", tKPerformMsg.errorDetail);
        }
        long j2 = tKPerformMsg.renderTime;
        if (j2 != 0) {
            JsonHelper.putValue(jSONObject, "render_time", j2);
        }
        String str3 = tKPerformMsg.templateId;
        if (str3 != null && !str3.equals("")) {
            JsonHelper.putValue(jSONObject, "template_id", tKPerformMsg.templateId);
        }
        String str4 = tKPerformMsg.versionCode;
        if (str4 != null && !str4.equals("")) {
            JsonHelper.putValue(jSONObject, "version_code", tKPerformMsg.versionCode);
        }
        long j3 = tKPerformMsg.loadTime;
        if (j3 != 0) {
            JsonHelper.putValue(jSONObject, d.f11443b, j3);
        }
        long j4 = tKPerformMsg.initTime;
        if (j4 != 0) {
            JsonHelper.putValue(jSONObject, d.f11442a, j4);
        }
        int i3 = tKPerformMsg.tkPublishType;
        if (i3 != 0) {
            JsonHelper.putValue(jSONObject, "tk_publish_type", i3);
        }
        int i4 = tKPerformMsg.renderType;
        if (i4 != 0) {
            JsonHelper.putValue(jSONObject, "render_type", i4);
        }
        long j5 = tKPerformMsg.renderIdleTime;
        if (j5 != 0) {
            JsonHelper.putValue(jSONObject, "render_idle_time", j5);
        }
        long j6 = tKPerformMsg.registerEndTime;
        if (j6 != 0) {
            JsonHelper.putValue(jSONObject, "register_end_time", j6);
        }
        long j7 = tKPerformMsg.getViewEndTime;
        if (j7 != 0) {
            JsonHelper.putValue(jSONObject, "get_view_end_time", j7);
        }
        return jSONObject;
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public JSONObject toJson(TKPerformMsg tKPerformMsg) {
        return toJson(tKPerformMsg, (JSONObject) null);
    }
}
