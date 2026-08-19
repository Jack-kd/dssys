package com.kwad.components.ad.splashscreen.monitor;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.io.Serializable;
import java.util.List;

@KsJson
/* loaded from: classes4.dex */
public class SplashMonitorInfo extends com.kwad.sdk.commercial.c.a implements Serializable {
    public static final int ADD_PARENT_NULL = 207;
    public static final int ADD_ROOT_NULL = 206;
    public static final int CACHE_IMAGE = 1;
    public static final int CACHE_VIDEO = 2;
    public static final int CHECK_BACKUP_FAILED = 4;
    public static final int CHECK_BACKUP_SUCCESS = 3;
    public static final int CHECK_CACHE = 2;
    public static final int CHECK_INVALID_VIDEO = 5;
    public static final int CHECK_LIVE_NO_CACHE = 8;
    public static final int CHECK_TIME_OUT = 7;
    public static final int ERROR_DOWNLOAD = 4;
    public static final int ERROR_NET = 1;
    public static final String ERROR_NET_MSG = "networkError";
    public static final int ERROR_PRELOAD_ID_INVALID = 3;
    public static final String ERROR_PRELOAD_ID_INVALID_MSG = "preloadIdError";
    public static final int ERROR_URL_INVALID = 2;
    public static final String ERROR_URL_INVALID_MSG = "urlError";
    public static final long LOAD_PROCESS_TYPE_NEW = 1;
    public static final long LOAD_PROCESS_TYPE_OLD = 2;
    public static final int LOAD_STATUS_CHECK_FAILED = 5;
    public static final int LOAD_STATUS_CHECK_SUCCESS = 3;
    public static final int LOAD_STATUS_DATA_FINISH = 2;
    public static final int LOAD_STATUS_FAILED = 4;
    public static final int LOAD_STATUS_LOAD_DATA_PRE = 11;
    public static final int LOAD_STATUS_START = 1;
    public static final int LOAD_TYPE_CACHE = 2;
    public static final int LOAD_TYPE_ONLINE = 1;
    public static final int MATERIAL_IMAGE = 2;
    public static final int MATERIAL_LOAD_NO_TIMEOUT = 3002;
    public static final int MATERIAL_LOAD_START = 3001;
    public static final int MATERIAL_LOAD_TIMEOUT = 3003;
    public static final int MATERIAL_VIDEO = 1;
    public static final int PARENT_CONTAINER_VISIBLE = 200;
    public static final int PRE_LOAD_FAIL = 3;
    public static final int PRE_LOAD_START = 1;
    public static final int PRE_LOAD_SUCCESS = 2;
    public static final int REQUEST_TYPE_FIRST = 1;
    public static final int REQUEST_TYPE_SECOND = 2;
    public static final int SHOW_AD_CALL = 4;
    public static final int SHOW_CALL = 6;
    public static final int SHOW_CALL_ERROR = 7;
    public static final int SHOW_END_RECORD = 8;
    public static final int SHOW_FAIL = 3;
    public static final int SHOW_START = 1;
    public static final int SHOW_SUCCESS = 2;
    public static final int SHOW_TK_OFFLINE_READY = 5;
    public static final int SINGLE_CACHE_FAIL = 2;
    public static final int SINGLE_CACHE_SUCCESS = 1;
    public static final int SPLASH_FROM_FRAGMENT = 2;
    public static final int SPLASH_FROM_VIEW = 1;
    public static final String TEMPLATE_ID_EMPTY = "template_id_empty";
    public static final String TEMPLATE_RENER_TYPE_ERROR = "template_render_type_error";
    public static final int TK_ENTER = 101;
    public static final int TK_ENV_NOT_READY = 103;
    public static final int TK_LOAD_FAILED = 105;
    public static final int TK_LOAD_START = 102;
    public static final int TK_LOAD_SUCCESS = 104;
    public static final int TK_RENDER_FAILED = 2;
    public static final int TK_RENDER_TIMEOUT = 106;
    public static final int TOTAL_CACHE_REPORT = 2;
    public static final int TOTAL_CACHE_START = 1;
    public static final int TOTAL_CACHE_UPDATE = 3;
    public static final int TYPE_DOWNLOAD = 1;
    public static final int TYPE_UPDATE = 2;
    public static final int UPDATE_TYPE_REPORT = 2;
    public static final int UPDATE_TYPE_WRITE = 1;
    public static final int VIEW_DETACHED_TIME = 203;
    public static final int VIEW_INVISIBLE = 205;
    public static final int VIEW_VISIBLE_AND_IMPRESSION_CHECK_FAILED = 202;
    public static final int VIEW_VISIBLE_AND_IMPRESSION_SUCCESS = 201;
    public static final int VIEW_VISIBLE_AND_IMPRESSION_UNKNOWN_FAILED = 204;
    public static final int WITHOUT_TK_INFO = 1;
    private static final long serialVersionUID = 3528420046810658543L;
    public int actionType;
    public long addLoadTime;
    public long beforeLoadDataTime;
    public int buriedPointOptimizeType;
    public long cacheValidTime;
    public int callbackType;
    public long checkDataTime;
    public int checkStatus;
    public int clearCount;
    public int clearImageCount;
    public int clearVideoCount;
    public long costTime;
    public int count;
    public long creativeId;
    public List<String> creativeIds;
    public List<Integer> elementTypes;
    public boolean hasUnbind;
    public List<String> ids;
    public String interactiveStyle;
    public String interactivityDefaultStyle;
    public boolean isRotateComposeTimeout;
    public boolean isWebTimeout;
    public long loadAndCheckDataTime;
    public long loadDataTime;
    public long loadProcessType;
    public int loadType;
    public int materialType;
    public List<Integer> materialTypes;
    public long nativeLoadTime;
    public long offlineLoadTime;
    public int offlineSource;
    public boolean parentVisible;
    public long posId;
    public String preloadId;
    public List<String> preloadIds;
    public long requestLoadTime;
    public int requestType;
    public boolean rootVisible;
    public long showDurationMs;
    public long showEndTime;
    public int showType;
    public long size;
    public long soLoadTime;
    public int soSource;
    public int status;
    public String templateId;
    public int templateVersionCode;
    public long tkDefaultTimeout;
    public long tkFileLoadTime;
    public long tkInitTime;
    public long tkRenderTime;
    public long tkRenderType;
    public long tkTotalTime;
    public int totalCount;
    public int type;
    public int updateType;
    public String url;
    public int viewSource;
    public long visibleCheckDelayTime;
    public long webLoadTime;

    public SplashMonitorInfo setActionType(int i2) {
        this.actionType = i2;
        return this;
    }

    public SplashMonitorInfo setAddLoadTime(long j2) {
        this.addLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setBeforeLoadDataTime(long j2) {
        this.beforeLoadDataTime = j2;
        return this;
    }

    public SplashMonitorInfo setBuriedPointOptimizeType(int i2) {
        this.buriedPointOptimizeType = i2;
        return this;
    }

    public SplashMonitorInfo setCacheValidTime(long j2) {
        this.cacheValidTime = j2;
        return this;
    }

    public SplashMonitorInfo setCallbackType(int i2) {
        this.callbackType = i2;
        return this;
    }

    public SplashMonitorInfo setCheckDataTime(long j2) {
        this.checkDataTime = j2;
        return this;
    }

    public SplashMonitorInfo setCheckStatus(int i2) {
        this.checkStatus = i2;
        return this;
    }

    public SplashMonitorInfo setClearCount(int i2) {
        this.clearCount = i2;
        return this;
    }

    public SplashMonitorInfo setClearImageCount(int i2) {
        this.clearImageCount = i2;
        return this;
    }

    public SplashMonitorInfo setClearVideoCount(int i2) {
        this.clearVideoCount = i2;
        return this;
    }

    public SplashMonitorInfo setCostTime(long j2) {
        this.costTime = j2;
        return this;
    }

    public SplashMonitorInfo setCount(int i2) {
        this.count = i2;
        return this;
    }

    public SplashMonitorInfo setCreativeId(long j2) {
        this.creativeId = j2;
        return this;
    }

    public SplashMonitorInfo setCreativeIds(List<String> list) {
        this.creativeIds = list;
        return this;
    }

    public SplashMonitorInfo setElementTypes(List<Integer> list) {
        this.elementTypes = list;
        return this;
    }

    public SplashMonitorInfo setHasUnbind(boolean z2) {
        this.hasUnbind = z2;
        return this;
    }

    public SplashMonitorInfo setIds(List<String> list) {
        this.ids = list;
        return this;
    }

    public SplashMonitorInfo setInteractiveStyle(int i2) {
        this.interactiveStyle = String.valueOf(i2);
        return this;
    }

    public SplashMonitorInfo setInteractivityDefaultStyle(int i2) {
        this.interactivityDefaultStyle = String.valueOf(i2);
        return this;
    }

    public SplashMonitorInfo setLoadAndCheckDataTime(long j2) {
        this.loadAndCheckDataTime = j2;
        return this;
    }

    public SplashMonitorInfo setLoadDataTime(long j2) {
        this.loadDataTime = j2;
        return this;
    }

    public SplashMonitorInfo setLoadProcessType(long j2) {
        this.loadProcessType = j2;
        return this;
    }

    public SplashMonitorInfo setLoadType(int i2) {
        this.loadType = i2;
        return this;
    }

    public SplashMonitorInfo setMaterialType(int i2) {
        this.materialType = i2;
        return this;
    }

    public SplashMonitorInfo setMaterialTypes(List<Integer> list) {
        this.materialTypes = list;
        return this;
    }

    public SplashMonitorInfo setNativeLoadTime(long j2) {
        this.nativeLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setOfflineLoadTime(long j2) {
        this.offlineLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setOfflineSource(int i2) {
        this.offlineSource = i2;
        return this;
    }

    public SplashMonitorInfo setParentVisible(boolean z2) {
        this.parentVisible = z2;
        return this;
    }

    public SplashMonitorInfo setPreloadId(String str) {
        this.preloadId = str;
        return this;
    }

    public SplashMonitorInfo setPreloadIds(List<String> list) {
        this.preloadIds = list;
        return this;
    }

    public SplashMonitorInfo setRequestLoadTime(long j2) {
        this.requestLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setRequestType(int i2) {
        this.requestType = i2;
        return this;
    }

    public SplashMonitorInfo setRootVisible(boolean z2) {
        this.rootVisible = z2;
        return this;
    }

    public SplashMonitorInfo setRotateComposeTimeout(boolean z2) {
        this.isRotateComposeTimeout = z2;
        return this;
    }

    public SplashMonitorInfo setShowDurationMs(long j2) {
        this.showDurationMs = j2;
        return this;
    }

    public SplashMonitorInfo setShowEndTime(long j2) {
        this.showEndTime = j2;
        return this;
    }

    public SplashMonitorInfo setShowType(int i2) {
        this.showType = i2;
        return this;
    }

    public SplashMonitorInfo setSize(long j2) {
        this.size = j2;
        return this;
    }

    public SplashMonitorInfo setSoLoadTime(long j2) {
        this.soLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setSoSource(int i2) {
        this.soSource = i2;
        return this;
    }

    public SplashMonitorInfo setStatus(int i2) {
        this.status = i2;
        return this;
    }

    public SplashMonitorInfo setTemplateId(String str) {
        this.templateId = str;
        return this;
    }

    public SplashMonitorInfo setTemplateVersionCode(int i2) {
        this.templateVersionCode = i2;
        return this;
    }

    public SplashMonitorInfo setTkDefaultTimeout(long j2) {
        this.tkDefaultTimeout = j2;
        return this;
    }

    public SplashMonitorInfo setTkFileLoadTime(long j2) {
        this.tkFileLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setTkInitTime(long j2) {
        this.tkInitTime = j2;
        return this;
    }

    public SplashMonitorInfo setTkRenderTime(long j2) {
        this.tkRenderTime = j2;
        return this;
    }

    public SplashMonitorInfo setTkRenderType(long j2) {
        this.tkRenderType = j2;
        return this;
    }

    public SplashMonitorInfo setTkTotalTime(long j2) {
        this.tkTotalTime = j2;
        return this;
    }

    public SplashMonitorInfo setTotalCount(int i2) {
        this.totalCount = i2;
        return this;
    }

    public SplashMonitorInfo setType(int i2) {
        this.type = i2;
        return this;
    }

    public SplashMonitorInfo setUpdateType(int i2) {
        this.updateType = i2;
        return this;
    }

    public SplashMonitorInfo setUrl(String str) {
        this.url = str;
        return this;
    }

    public SplashMonitorInfo setViewSource(int i2) {
        this.viewSource = i2;
        return this;
    }

    public SplashMonitorInfo setVisibleCheckDelayTime(long j2) {
        this.visibleCheckDelayTime = j2;
        return this;
    }

    public SplashMonitorInfo setWebLoadTime(long j2) {
        this.webLoadTime = j2;
        return this;
    }

    public SplashMonitorInfo setWebTimeout(boolean z2) {
        this.isWebTimeout = z2;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public SplashMonitorInfo setAdTemplate(AdTemplate adTemplate) {
        return (SplashMonitorInfo) super.setAdTemplate(adTemplate);
    }

    @Override // com.kwad.sdk.commercial.c.a
    public SplashMonitorInfo setErrorCode(int i2) {
        super.setErrorCode(i2);
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public SplashMonitorInfo setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }
}
