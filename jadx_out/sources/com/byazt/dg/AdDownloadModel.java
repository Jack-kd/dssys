package com.byazt.dg;

import android.text.TextUtils;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.kj.hp;
import com.byazt.pp.l;
import com.byazt.t.jl;
import com.byazt.v.DeepLink;
import com.byazt.v.j;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK, 1364})
/* loaded from: classes2.dex */
public class AdDownloadModel implements DownloadModel {
    public String mAppIcon;
    public String mAppName;
    public boolean mAutoInstallWithoutNotification;
    public List<String> mBackupUrls;
    public List<String> mClickTrackUrl;
    public DeepLink mDeepLink;
    public boolean mDistinctDir;
    public JSONObject mDownloadSettings;
    public String mDownloadUrl;
    public long mExpectFileLength;
    public JSONObject mExtra;
    public long mExtraValue;
    public String mFileName;
    public String mFilePath;
    public IDownloadFileUriProvider mFileUriProvider;
    public Map<String, String> mHeaders;
    public long mId;
    public boolean mIndependentProcess;

    @Deprecated
    public boolean mIsInExternalPublicDir;
    public String mLogExtra;
    public String mMd5;
    public String mMimeType;
    public int mModelType;
    public String mNotificationJumpUrl;
    public String mPackageName;
    public j mQuickAppModel;
    public String mSdkMonitorScene;
    public String mStartToast;
    public String mTaskKey;
    public int mVersionCode;
    public String mVersionName;
    public boolean mIsAd = true;
    public boolean mIsShowToast = true;
    public boolean mIsShowNotification = true;
    public boolean mAutoInstall = true;
    public boolean mNeedWifi = false;
    public int mExecutorGroup = 2;
    public boolean mEnablePause = true;
    public int mFunnelType = 1;

    @hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK, 1999})
    public static final class Builder {
        public AdDownloadModel model = new AdDownloadModel();

        public AdDownloadModel build() {
            return this.model;
        }

        @Deprecated
        public Builder setAdId(long j2) {
            return setId(j2);
        }

        public Builder setAppIcon(String str) {
            this.model.mAppIcon = str;
            return this;
        }

        public Builder setAppName(String str) {
            this.model.mAppName = str;
            return this;
        }

        public Builder setAutoInstall(boolean z2) {
            this.model.mAutoInstall = z2;
            return this;
        }

        public Builder setAutoInstallWithoutNotification(boolean z2) {
            this.model.mAutoInstallWithoutNotification = z2;
            return this;
        }

        public Builder setBackupUrls(List<String> list) {
            this.model.mBackupUrls = list;
            return this;
        }

        public Builder setClickTrackUrl(List<String> list) {
            this.model.mClickTrackUrl = list;
            return this;
        }

        public Builder setDeepLink(DeepLink deepLink) {
            this.model.mDeepLink = deepLink;
            return this;
        }

        public Builder setDistinctDir(boolean z2) {
            this.model.mDistinctDir = z2;
            return this;
        }

        public Builder setDownloadSettings(JSONObject jSONObject) {
            this.model.mDownloadSettings = jSONObject;
            return this;
        }

        public Builder setDownloadUrl(String str) {
            this.model.mDownloadUrl = str;
            return this;
        }

        public Builder setEnablePause(boolean z2) {
            this.model.mEnablePause = z2;
            return this;
        }

        public Builder setExecutorGroup(int i2) {
            this.model.mExecutorGroup = i2;
            return this;
        }

        public Builder setExpectFileLength(long j2) {
            this.model.mExpectFileLength = j2;
            return this;
        }

        public Builder setExtra(JSONObject jSONObject) {
            this.model.mExtra = jSONObject;
            return this;
        }

        public Builder setExtraValue(long j2) {
            this.model.mExtraValue = j2;
            return this;
        }

        public Builder setFileName(String str) {
            this.model.mFileName = str;
            return this;
        }

        public Builder setFilePath(String str) {
            this.model.mFilePath = str;
            return this;
        }

        public Builder setFileUriProvider(IDownloadFileUriProvider iDownloadFileUriProvider) {
            this.model.mFileUriProvider = iDownloadFileUriProvider;
            return this;
        }

        public Builder setHeaders(Map<String, String> map) {
            this.model.mHeaders = map;
            return this;
        }

        public Builder setId(long j2) {
            this.model.mId = j2;
            return this;
        }

        public Builder setIsAd(boolean z2) {
            this.model.mIsAd = z2;
            return this;
        }

        @Deprecated
        public Builder setIsInExternalPublicDir(boolean z2) {
            this.model.mIsInExternalPublicDir = z2;
            return this;
        }

        public Builder setIsShowNotification(boolean z2) {
            this.model.mIsShowNotification = z2;
            return this;
        }

        public Builder setIsShowToast(boolean z2) {
            this.model.mIsShowToast = z2;
            return this;
        }

        public Builder setLogExtra(String str) {
            this.model.mLogExtra = str;
            return this;
        }

        public Builder setMd5(String str) {
            this.model.mMd5 = str;
            return this;
        }

        public Builder setMimeType(String str) {
            this.model.mMimeType = str;
            return this;
        }

        public Builder setModelType(int i2) {
            this.model.mModelType = i2;
            return this;
        }

        public Builder setNeedIndependentProcess(boolean z2) {
            this.model.mIndependentProcess = z2;
            return this;
        }

        public Builder setNeedWifi(boolean z2) {
            this.model.mNeedWifi = z2;
            return this;
        }

        public Builder setNotificationJumpUrl(String str) {
            this.model.mNotificationJumpUrl = str;
            return this;
        }

        public Builder setPackageName(String str) {
            this.model.mPackageName = str;
            return this;
        }

        public Builder setQuickAppModel(j jVar) {
            this.model.mQuickAppModel = jVar;
            return this;
        }

        public Builder setSdkMonitorScene(String str) {
            this.model.mSdkMonitorScene = str;
            return this;
        }

        public Builder setStartToast(String str) {
            this.model.mStartToast = str;
            return this;
        }

        public Builder setTaskKey(String str) {
            this.model.mTaskKey = str;
            return this;
        }

        public Builder setVersionCode(int i2) {
            this.model.mVersionCode = i2;
            return this;
        }

        public Builder setVersionName(String str) {
            this.model.mVersionName = str;
            return this;
        }
    }

    private static void appendBackupUrlsFromJson(JSONObject jSONObject, Builder builder) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("backup_urls");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            arrayList.add(jSONArrayOptJSONArray.optString(i2));
        }
        builder.setBackupUrls(arrayList);
    }

    private static void appendDeepLinkFromJson(JSONObject jSONObject, Builder builder) {
        builder.setDeepLink(new DeepLink(jSONObject.optString(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL), jSONObject.optString("web_url"), null));
    }

    private static void appendHeaderMapFromJson(JSONObject jSONObject, Builder builder) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("header_keys");
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("header_values");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 == null) {
            return;
        }
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            map.put(jSONArrayOptJSONArray.optString(i2), jSONArrayOptJSONArray2.optString(i2));
        }
        builder.setHeaders(map);
    }

    private static void appendQuickAppUrlFromJson(JSONObject jSONObject, Builder builder) {
        String strOptString = jSONObject.optString("quick_app_url");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        builder.setQuickAppModel(new j.hp().hp(strOptString).hp());
    }

    private static void appendTrackUrlFromJson(JSONObject jSONObject, Builder builder) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("click_track_urls");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                arrayList.add(jSONArrayOptJSONArray.optString(i2));
            }
            builder.setClickTrackUrl(arrayList);
        }
    }

    public static AdDownloadModel fromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            boolean z2 = true;
            Builder distinctDir = builder.setAdId(l.hp(jSONObject, "id")).setIsAd(jSONObject.optInt("is_ad", 1) == 1).setModelType(jSONObject.optInt("model_type")).setMimeType(jSONObject.optString("mime_type")).setExtraValue(l.hp(jSONObject, "ext_value")).setLogExtra(jSONObject.optString("log_extra")).setPackageName(jSONObject.optString("package_name")).setDownloadUrl(jSONObject.optString("download_url")).setAppName(jSONObject.optString("app_name")).setAppIcon(jSONObject.optString("app_icon")).setIsShowToast(jSONObject.optInt("is_show_toast", 1) == 1).setIsShowNotification(jSONObject.optInt("show_notification", 1) == 1).setNeedWifi(jSONObject.optInt("need_wifi") == 1).setMd5(jSONObject.optString(TKDownloadReason.KSAD_TK_MD5)).setExpectFileLength(jSONObject.optLong("expect_file_length")).setNeedIndependentProcess(jSONObject.optInt("independent_process") == 1).setVersionCode(jSONObject.optInt("version_code")).setVersionName(jSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME)).setFilePath(jSONObject.optString("file_path")).setFileName(jSONObject.optString("file_name")).setNotificationJumpUrl(jSONObject.optString("notification_jump_url")).setAutoInstallWithoutNotification(jSONObject.optInt("auto_install_without_notify") == 1).setExecutorGroup(jSONObject.optInt("executor_group")).setDownloadSettings(jSONObject.optJSONObject("download_settings")).setExtra(jSONObject.optJSONObject("extra")).setStartToast(jSONObject.optString("start_toast")).setSdkMonitorScene(jSONObject.optString("sdk_monitor_scene")).setAutoInstall(jSONObject.optInt("auto_install", 1) == 1).setDistinctDir(jSONObject.optInt("distinct_dir") == 1);
            if (jSONObject.optInt("enable_pause", 1) != 1) {
                z2 = false;
            }
            distinctDir.setEnablePause(z2).setTaskKey(jSONObject.optString("task_key"));
            appendDeepLinkFromJson(jSONObject, builder);
            appendQuickAppUrlFromJson(jSONObject, builder);
            appendTrackUrlFromJson(jSONObject, builder);
            appendHeaderMapFromJson(jSONObject, builder);
            appendBackupUrlsFromJson(jSONObject, builder);
        } catch (Exception e2) {
            jl.sz().hp(e2, "AdDownloadModel fromJson");
        }
        return builder.build();
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean autoInstallWithoutNotification() {
        return this.mAutoInstallWithoutNotification;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean distinctDir() {
        return this.mDistinctDir;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean enablePause() {
        return this.mEnablePause;
    }

    @Override // com.byazt.yy.DownloadModel
    public void forceHideNotification() {
        this.mIsShowNotification = false;
    }

    @Override // com.byazt.yy.DownloadModel
    public void forceHideToast() {
        this.mIsShowToast = false;
    }

    @Override // com.byazt.yy.DownloadModel
    public void forceWifi() {
        this.mNeedWifi = true;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getAppIcon() {
        return this.mAppIcon;
    }

    @Override // com.byazt.yy.DownloadModel
    public List<String> getBackupUrls() {
        return this.mBackupUrls;
    }

    @Override // com.byazt.yy.DownloadModel
    public List<String> getClickTrackUrl() {
        return this.mClickTrackUrl;
    }

    @Override // com.byazt.yy.DownloadModel
    public DeepLink getDeepLink() {
        return this.mDeepLink;
    }

    @Override // com.byazt.yy.DownloadModel
    public IDownloadFileUriProvider getDownloadFileUriProvider() {
        return this.mFileUriProvider;
    }

    @Override // com.byazt.yy.DownloadModel
    public JSONObject getDownloadSettings() {
        return this.mDownloadSettings;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getDownloadUrl() {
        return this.mDownloadUrl;
    }

    @Override // com.byazt.yy.DownloadModel
    public int getExecutorGroup() {
        return this.mExecutorGroup;
    }

    @Override // com.byazt.yy.DownloadModel
    public long getExpectFileLength() {
        return this.mExpectFileLength;
    }

    @Override // com.byazt.yy.DownloadModel
    public JSONObject getExtra() {
        return this.mExtra;
    }

    @Override // com.byazt.yy.DownloadModel
    public long getExtraValue() {
        return this.mExtraValue;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getFileName() {
        return this.mFileName;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getFilePath() {
        return this.mFilePath;
    }

    @Override // com.byazt.yy.DownloadModel
    public int getFunnelType() {
        return this.mFunnelType;
    }

    @Override // com.byazt.yy.DownloadModel
    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    @Override // com.byazt.yy.DownloadModel
    public long getId() {
        return this.mId;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getLogExtra() {
        return this.mLogExtra;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getMd5() {
        return this.mMd5;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getMimeType() {
        return this.mMimeType;
    }

    @Override // com.byazt.yy.DownloadModel
    public int getModelType() {
        return this.mModelType;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getName() {
        return this.mAppName;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getNotificationJumpUrl() {
        return this.mNotificationJumpUrl;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getPackageName() {
        return this.mPackageName;
    }

    @Override // com.byazt.yy.DownloadModel
    public j getQuickAppModel() {
        return this.mQuickAppModel;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getSdkMonitorScene() {
        return this.mSdkMonitorScene;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getStartToast() {
        return this.mStartToast;
    }

    public String getTaskKey() {
        return this.mTaskKey;
    }

    @Override // com.byazt.yy.DownloadModel
    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // com.byazt.yy.DownloadModel
    public String getVersionName() {
        return this.mVersionName;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isAd() {
        return this.mIsAd;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isAutoInstall() {
        return this.mAutoInstall;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isInExternalPublicDir() {
        return this.mIsInExternalPublicDir;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isNeedWifi() {
        return this.mNeedWifi;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isShowNotification() {
        return this.mIsShowNotification;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isShowToast() {
        return this.mIsShowToast;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean isVisibleInDownloadsUi() {
        return true;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean needIndependentProcess() {
        return this.mIndependentProcess;
    }

    @Deprecated
    public AdDownloadModel setAdId(long j2) {
        return setId(j2);
    }

    public AdDownloadModel setAppIcon(String str) {
        this.mAppIcon = str;
        return this;
    }

    public void setAppName(String str) {
        this.mAppName = str;
    }

    public AdDownloadModel setAutoInstallWithoutNotification(boolean z2) {
        this.mAutoInstallWithoutNotification = z2;
        return this;
    }

    public AdDownloadModel setBackupUrls(List<String> list) {
        this.mBackupUrls = list;
        return this;
    }

    public AdDownloadModel setClickTrackUrl(List<String> list) {
        this.mClickTrackUrl = list;
        return this;
    }

    public AdDownloadModel setDeepLink(DeepLink deepLink) {
        this.mDeepLink = deepLink;
        return this;
    }

    public AdDownloadModel setDownloadUrl(String str) {
        this.mDownloadUrl = str;
        return this;
    }

    public void setExpectFileLength(long j2) {
        this.mExpectFileLength = j2;
    }

    public void setExtra(JSONObject jSONObject) {
        this.mExtra = jSONObject;
    }

    public void setExtraValue(long j2) {
        this.mExtraValue = j2;
    }

    public AdDownloadModel setFileName(String str) {
        this.mFileName = str;
        return this;
    }

    public AdDownloadModel setFileUriProvider(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.mFileUriProvider = iDownloadFileUriProvider;
        return this;
    }

    public AdDownloadModel setFunnelType(int i2) {
        this.mFunnelType = i2;
        return this;
    }

    public AdDownloadModel setHeaders(Map<String, String> map) {
        this.mHeaders = map;
        return this;
    }

    public AdDownloadModel setId(long j2) {
        this.mId = j2;
        return this;
    }

    public AdDownloadModel setIsAd(boolean z2) {
        this.mIsAd = z2;
        return this;
    }

    public AdDownloadModel setIsShowNotification(boolean z2) {
        this.mIsShowNotification = z2;
        return this;
    }

    public void setIsShowToast(boolean z2) {
        this.mIsShowToast = z2;
    }

    public AdDownloadModel setLogExtra(String str) {
        this.mLogExtra = str;
        return this;
    }

    public void setMd5(String str) {
        this.mMd5 = str;
    }

    public AdDownloadModel setMimeType(String str) {
        this.mMimeType = str;
        return this;
    }

    public AdDownloadModel setModelType(int i2) {
        this.mModelType = i2;
        return this;
    }

    public AdDownloadModel setNeedIndependentProcess(boolean z2) {
        this.mIndependentProcess = z2;
        return this;
    }

    public void setNeedWifi(boolean z2) {
        this.mNeedWifi = z2;
    }

    public AdDownloadModel setNotificationJumpUrl(String str) {
        this.mNotificationJumpUrl = str;
        return this;
    }

    public AdDownloadModel setPackageName(String str) {
        this.mPackageName = str;
        return this;
    }

    public AdDownloadModel setQuickAppModel(j jVar) {
        this.mQuickAppModel = jVar;
        return this;
    }

    public void setSdkMonitorScene(String str) {
        this.mSdkMonitorScene = str;
    }

    public void setStartToast(String str) {
        this.mStartToast = str;
    }

    public void setTaskKey(String str) {
        this.mTaskKey = str;
    }

    public AdDownloadModel setVersionCode(int i2) {
        this.mVersionCode = i2;
        return this;
    }

    public AdDownloadModel setVersionName(String str) {
        this.mVersionName = str;
        return this;
    }

    @Override // com.byazt.yy.DownloadModel
    public boolean shouldDownloadWithPatchApply() {
        return l.hp(com.byazt.jb.hp.hp(getDownloadSettings()), getMimeType());
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.mId);
            jSONObject.put("is_ad", this.mIsAd ? 1 : 0);
            jSONObject.putOpt("model_type", Integer.valueOf(this.mModelType));
            jSONObject.putOpt("mime_type", this.mMimeType);
            jSONObject.putOpt("ext_value", Long.valueOf(this.mExtraValue));
            jSONObject.putOpt("log_extra", this.mLogExtra);
            jSONObject.putOpt("package_name", this.mPackageName);
            jSONObject.putOpt("download_url", this.mDownloadUrl);
            jSONObject.putOpt("app_name", this.mAppName);
            jSONObject.putOpt("app_icon", this.mAppIcon);
            jSONObject.putOpt("is_show_toast", Integer.valueOf(this.mIsShowToast ? 1 : 0));
            jSONObject.putOpt("show_notification", Integer.valueOf(this.mIsShowNotification ? 1 : 0));
            jSONObject.put("need_wifi", this.mNeedWifi ? 1 : 0);
            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, this.mMd5);
            jSONObject.put("expect_file_length", this.mExpectFileLength);
            jSONObject.put("independent_process", this.mIndependentProcess ? 1 : 0);
            jSONObject.put("version_code", this.mVersionCode);
            jSONObject.putOpt(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, this.mVersionName);
            jSONObject.putOpt("file_path", this.mFilePath);
            jSONObject.putOpt("file_name", this.mFileName);
            jSONObject.putOpt("notification_jump_url", this.mNotificationJumpUrl);
            jSONObject.putOpt("auto_install_without_notify", Integer.valueOf(this.mAutoInstallWithoutNotification ? 1 : 0));
            jSONObject.putOpt("executor_group", Integer.valueOf(this.mExecutorGroup));
            jSONObject.putOpt("start_toast", this.mStartToast);
            jSONObject.putOpt("sdk_monitor_scene", this.mSdkMonitorScene);
            jSONObject.putOpt("auto_install", Integer.valueOf(this.mAutoInstall ? 1 : 0));
            jSONObject.putOpt("distinct_dir", Integer.valueOf(this.mDistinctDir ? 1 : 0));
            jSONObject.putOpt("enable_pause", Integer.valueOf(this.mEnablePause ? 1 : 0));
            jSONObject.putOpt("task_key", this.mTaskKey);
            Object obj = this.mDownloadSettings;
            if (obj != null) {
                jSONObject.put("download_settings", obj);
            }
            List<String> list = this.mBackupUrls;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (String str : this.mBackupUrls) {
                    if (!TextUtils.isEmpty(str)) {
                        jSONArray.put(str);
                    }
                }
                jSONObject.put("backup_urls", jSONArray);
            }
            DeepLink deepLink = this.mDeepLink;
            if (deepLink != null) {
                if (!TextUtils.isEmpty(deepLink.getOpenUrl())) {
                    jSONObject.put(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, this.mDeepLink.getOpenUrl());
                }
                if (!TextUtils.isEmpty(this.mDeepLink.getWebUrl())) {
                    jSONObject.put("web_url", this.mDeepLink.getWebUrl());
                }
            }
            j jVar = this.mQuickAppModel;
            if (jVar != null) {
                jSONObject.putOpt("quick_app_url", jVar.hp());
            }
            List<String> list2 = this.mClickTrackUrl;
            if (list2 != null && !list2.isEmpty()) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = this.mClickTrackUrl.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject.put("click_track_urls", jSONArray2);
            }
            Object obj2 = this.mExtra;
            if (obj2 != null) {
                jSONObject.put("extra", obj2);
            }
            Map<String, String> map = this.mHeaders;
            if (map != null && !map.isEmpty()) {
                JSONArray jSONArray3 = new JSONArray();
                JSONArray jSONArray4 = new JSONArray();
                for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
                    jSONArray3.put(entry.getKey());
                    jSONArray4.put(entry.getKey());
                }
                jSONObject.put("header_keys", jSONArray3);
                jSONObject.put("header_values", jSONArray4);
            }
            return jSONObject;
        } catch (Exception e2) {
            jl.sz().hp(e2, "AdDownloadModel toJson");
            return jSONObject;
        }
    }

    @Override // com.byazt.yy.DownloadModel
    public AdDownloadModel setFilePath(String str) {
        this.mFilePath = str;
        return this;
    }
}
