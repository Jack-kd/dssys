package com.byazt.po;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.b.DownloadMarketInterceptor;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.b.OnItemClickListener;
import com.byazt.dg.AdDownloadController;
import com.byazt.dg.AdDownloadEventConfig;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.ni.DownloadHandlerService;
import com.byazt.po.jx;
import com.byazt.pu.TTDownloadField;
import com.byazt.v.DeepLink;
import com.byazt.v.j;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.cl;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 212, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public final class u extends com.byazt.hde.j {
    public static volatile u hp;

    /* renamed from: l, reason: collision with root package name */
    public final Context f24472l;

    /* renamed from: q, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f24473q;
    public Map<Integer, AdDownloadModel.Builder> jx = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    public Map<Integer, AdDownloadModel> f24471j = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public Map<Integer, AdDownloadController.Builder> f24475w = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public Map<Integer, AdDownloadController> f24470a = new ConcurrentHashMap();
    public Map<Integer, AdDownloadEventConfig.Builder> eb = new ConcurrentHashMap();

    /* renamed from: s, reason: collision with root package name */
    public Map<Integer, AdDownloadEventConfig> f24474s = new ConcurrentHashMap();

    private u(Context context) {
        this.f24472l = context;
    }

    private int a(int i2) {
        return i2 + 1;
    }

    private OnItemClickListener e(Object obj) {
        if (obj instanceof OnItemClickListener) {
            return (OnItemClickListener) obj;
        }
        return null;
    }

    private boolean eb(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    private Activity getActivity(Object obj) {
        if (obj instanceof Activity) {
            return (Activity) obj;
        }
        return null;
    }

    private IDownloadButtonClickListener gu(Object obj) {
        if (obj instanceof IDownloadButtonClickListener) {
            return (IDownloadButtonClickListener) obj;
        }
        return null;
    }

    private Function<SparseArray<Object>, Object> hp() {
        Function<SparseArray<Object>, Object> function = this.f24473q;
        if (function != null) {
            return function;
        }
        Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(3);
        this.f24473q = functionA;
        if (functionA == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("n", com.byazt.jz.s.u().xh());
        this.f24473q.apply(com.byazt.wi.j.hp().hp(159).hp(Map.class).hp(0, map).l());
        return this.f24473q;
    }

    public static u instance(Context context) {
        if (hp == null) {
            synchronized (u.class) {
                try {
                    if (hp == null) {
                        hp = new u(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private AdDownloadController j(int i2) {
        return this.f24470a.get(Integer.valueOf(i2));
    }

    private AdDownloadModel jx(int i2) {
        return this.f24471j.get(Integer.valueOf(i2));
    }

    private AdDownloadModel.Builder l(int i2) {
        return this.jx.get(Integer.valueOf(i2));
    }

    private DownloadMarketInterceptor q(Object obj) {
        if (obj instanceof DownloadMarketInterceptor) {
            return (DownloadMarketInterceptor) obj;
        }
        return null;
    }

    private com.byazt.gu.hp s(Object obj) {
        if (obj instanceof Function) {
            return new com.byazt.gu.hp(obj);
        }
        return null;
    }

    private AdDownloadEventConfig w(int i2) {
        return this.f24474s.get(Integer.valueOf(i2));
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        return i2 == -99999986 ? (T) values().sparseArray() : (T) call(i2, pluginValueSet, cls);
    }

    public boolean autoInstallWithoutNotification(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return false;
        }
        return adDownloadModelJx.autoInstallWithoutNotification();
    }

    public <T> T call(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 != 20) {
            return (T) callMethod(cls, i2, (pluginValueSet == null || pluginValueSet.objectValue(0, Map.class) == null) ? new HashMap<>() : (Map) pluginValueSet.objectValue(0, Map.class));
        }
        init((Bundle) pluginValueSet.objectValue(0, Bundle.class));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.content.Context] */
    public <T> T callMethod(Class<T> cls, int i2, Map<String, Object> map) {
        Object obj = map.get("hashCode");
        int iIntValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        AdDownloadModel adDownloadModelJx = jx(iIntValue);
        switch (i2) {
            case 3:
                v.hp(((Integer) map.get("hid")).intValue());
                break;
            case 4:
                v.l().hp(adDownloadModelJx == null ? (String) map.get("downloadUrl") : adDownloadModelJx.getDownloadUrl(), iIntValue);
                hp(iIntValue);
                break;
            case 5:
                DownloadModel downloadModelJ = adDownloadModelJx == null ? j(map.get("downloadModel")) : adDownloadModelJx;
                DownloadStatusChangeListener downloadStatusChangeListenerL = l(map.get("downloadStatusChangeListener"));
                DownloadController downloadControllerJ = j(iIntValue);
                if (downloadControllerJ == null) {
                    downloadControllerJ = a(map.get("downloadController"));
                }
                com.byazt.yy.l lVarJx = jx(map.get("marketStatusChangeListener"));
                if (lVarJx != null && (downloadControllerJ instanceof AdDownloadController)) {
                    ((AdDownloadController) downloadControllerJ).setMarketStatusChangeListener(lVarJx);
                }
                v.l().hp(this.f24472l, iIntValue, downloadStatusChangeListenerL, downloadModelJ);
                break;
            case 6:
                break;
            case 7:
                v.jx();
                break;
            case 8:
                v.l().hp(adDownloadModelJx == null ? (String) map.get("downloadUrl") : adDownloadModelJx.getDownloadUrl(), ((Boolean) map.get("force")).booleanValue());
                break;
            case 9:
                v.hp(((Integer) map.get("hid")).intValue(), (jx.hp) map.get("onEventLogHandler"));
                break;
            case 10:
                v.hp((String) map.get("downloadPath"));
                break;
            case 12:
                Uri uri = (Uri) map.get(ContentProviderManager.PROVIDER_URI);
                AdDownloadModel adDownloadModelJ = adDownloadModelJx == null ? j(map.get("downloadModel")) : adDownloadModelJx;
                DownloadEventConfig downloadEventConfigW = w(iIntValue);
                if (downloadEventConfigW == null) {
                    downloadEventConfigW = w(map.get("downloadEventConfig"));
                }
                DownloadEventConfig downloadEventConfig = downloadEventConfigW;
                DownloadController downloadControllerJ2 = j(iIntValue);
                if (downloadControllerJ2 == null) {
                    downloadControllerJ2 = a(map.get("downloadController"));
                }
                Activity activity = getActivity(map.get(TTDownloadField.TT_ACTIVITY));
                Activity activity2 = ((downloadControllerJ2 instanceof AdDownloadController) && activity != null && eb(map.get("open_market_in_app"))) ? activity : this.f24472l;
                IDownloadButtonClickListener iDownloadButtonClickListenerGu = gu(map.get("downloadButtonClickListener"));
                if (!hp(iDownloadButtonClickListenerGu)) {
                    break;
                } else {
                    break;
                }
            case 13:
                boolean zBooleanValue = ((Boolean) map.get("isDisableDialog")).booleanValue();
                String str = (String) map.get("userAgent");
                AdDownloadModel adDownloadModelJ2 = adDownloadModelJx == null ? j(map.get("downloadModel")) : adDownloadModelJx;
                DownloadEventConfig downloadEventConfigW2 = w(iIntValue);
                if (downloadEventConfigW2 == null) {
                    downloadEventConfigW2 = w(map.get("downloadEventConfig"));
                }
                DownloadEventConfig downloadEventConfig2 = downloadEventConfigW2;
                DownloadController downloadControllerJ3 = j(iIntValue);
                if (downloadControllerJ3 == null) {
                    downloadControllerJ3 = a(map.get("downloadController"));
                }
                DownloadController downloadController = downloadControllerJ3;
                DownloadStatusChangeListener downloadStatusChangeListenerL2 = l(map.get("downloadStatusChangeListener"));
                IDownloadButtonClickListener iDownloadButtonClickListenerGu2 = gu(map.get("downloadButtonClickListener"));
                if (!hp(iDownloadButtonClickListenerGu2)) {
                    v.l().w().hp(this.f24472l, str, zBooleanValue, adDownloadModelJ2, downloadEventConfig2, downloadController, downloadStatusChangeListenerL2, iIntValue);
                    break;
                } else {
                    v.l().w().hp(this.f24472l, str, zBooleanValue, adDownloadModelJ2, downloadEventConfig2, downloadController, downloadStatusChangeListenerL2, iIntValue, iDownloadButtonClickListenerGu2);
                    break;
                }
            case 14:
                break;
            case 16:
                String downloadUrl = adDownloadModelJx == null ? (String) map.get("downloadUrl") : adDownloadModelJx.getDownloadUrl();
                long jLongValue = adDownloadModelJx == null ? ((Long) map.get("id")).longValue() : adDownloadModelJx.getId();
                int iIntValue2 = ((Integer) map.get("action_type_button")).intValue();
                DownloadEventConfig downloadEventConfigW3 = w(iIntValue);
                if (downloadEventConfigW3 == null) {
                    downloadEventConfigW3 = w(map.get("downloadEventConfig"));
                }
                DownloadEventConfig downloadEventConfig3 = downloadEventConfigW3;
                DownloadController downloadControllerJ4 = j(iIntValue);
                if (downloadControllerJ4 == null) {
                    downloadControllerJ4 = a(map.get("downloadController"));
                }
                Activity activity3 = getActivity(map.get(TTDownloadField.TT_ACTIVITY));
                boolean zEb = eb(map.get("open_market_in_app"));
                if ((downloadControllerJ4 instanceof AdDownloadController) && activity3 != null && zEb) {
                    ((AdDownloadController) downloadControllerJ4).setWeakActivity(activity3);
                }
                v.l().hp(downloadUrl, jLongValue, iIntValue2, downloadEventConfig3, downloadControllerJ4);
                break;
            case 17:
                String downloadUrl2 = adDownloadModelJx == null ? (String) map.get("downloadUrl") : adDownloadModelJx.getDownloadUrl();
                long jLongValue2 = ((Long) map.get("id")).longValue();
                int iIntValue3 = ((Integer) map.get("action_type_button")).intValue();
                DownloadEventConfig downloadEventConfigW4 = w(iIntValue);
                if (downloadEventConfigW4 == null) {
                    downloadEventConfigW4 = w(map.get("downloadEventConfig"));
                }
                DownloadEventConfig downloadEventConfig4 = downloadEventConfigW4;
                DownloadController downloadControllerJ5 = j(iIntValue);
                if (downloadControllerJ5 == null) {
                    downloadControllerJ5 = a(map.get("downloadController"));
                }
                OnItemClickListener onItemClickListenerE = e(map.get("itemClickListener"));
                IDownloadButtonClickListener iDownloadButtonClickListenerGu3 = gu(map.get("downloadButtonClickListener"));
                Activity activity4 = getActivity(map.get(TTDownloadField.TT_ACTIVITY));
                boolean zEb2 = eb(map.get("open_market_in_app"));
                if ((downloadControllerJ5 instanceof AdDownloadController) && activity4 != null && zEb2) {
                    ((AdDownloadController) downloadControllerJ5).setWeakActivity(activity4);
                }
                v.l().hp(downloadUrl2, jLongValue2, iIntValue3, downloadEventConfig4, downloadControllerJ5, onItemClickListenerE, iDownloadButtonClickListenerGu3);
                break;
            case 18:
                T t2 = (T) Boolean.valueOf(v.l().w().hp(adDownloadModelJx == null ? ((Long) map.get("id")).longValue() : adDownloadModelJx.getId(), iIntValue));
                hp(iIntValue);
                break;
            case 19:
                break;
            case 23:
                if (!((Boolean) map.get("mateIsEmpty")).booleanValue()) {
                    hp(iIntValue, map);
                    break;
                } else {
                    AdDownloadModel.Builder builder = new AdDownloadModel.Builder();
                    this.jx.put(Integer.valueOf(iIntValue), builder);
                    this.f24471j.put(Integer.valueOf(iIntValue), builder.build());
                    break;
                }
            case 24:
                hp(iIntValue, (String) map.get("appIcon"), (String) map.get(cl.f49061p), (String) map.get("packageName"));
                break;
            case 25:
                hp(iIntValue, ((Integer) map.get("autoOpen")).intValue(), ((Integer) map.get("downloadMode")).intValue(), ((Boolean) map.get("isHaveDownloadSdkConfig")).booleanValue(), ((Boolean) map.get("isEnableAH")).booleanValue(), ((Boolean) map.get("isEnableAM")).booleanValue());
                break;
            case 26:
                hp(iIntValue, ((Integer) map.get("downloadMode")).intValue());
                break;
            case 28:
                hp(iIntValue, ((Boolean) map.get("isEnableOppoAutoDownload")).booleanValue(), q(map.get("downloadMarketInterceptor")));
                break;
            case 29:
                jx(iIntValue, map);
                break;
            case 30:
                setDownloadScene(iIntValue, ((Integer) map.get("downloadScene")).intValue());
                break;
            case 31:
                setIsShowToast(iIntValue, ((Boolean) map.get("isShowToast")).booleanValue());
                break;
            case 32:
                l(iIntValue, map);
                break;
            case 44:
                setLinkMode(iIntValue, ((Integer) map.get("linkMode")).intValue());
                break;
            case 46:
                setEnableShowComplianceDialog(iIntValue, ((Boolean) map.get("enableShowComplianceDialog")).booleanValue());
                break;
            case 49:
                setIsAutoDownloadOnCardShow(iIntValue, ((Boolean) map.get("isAutoDownloadOnCardShow")).booleanValue());
                break;
            case 50:
                setEnableNewActivity(iIntValue, ((Boolean) map.get("enableNewActivity")).booleanValue());
                break;
            case 53:
                setExtraObject(iIntValue, map.get("extraObject"));
                break;
            case 54:
                setExtraJson(iIntValue, (JSONObject) map.get("extraJson"));
                break;
            case 56:
                j(iIntValue, map);
                break;
            case 72:
                setExtraEventObject(iIntValue, map.get("extraEventObject"));
                break;
            case 73:
                setClickButtonTag(iIntValue, (String) map.get("clickButtonTag"));
                break;
            case 74:
                setEventConfigExtraJson(iIntValue, (JSONObject) map.get("eventConfigExtraJson"));
                break;
            case 75:
                setParamsJson(iIntValue, (JSONObject) map.get("paramsJson"));
                break;
            case 76:
                setClickItemTag(iIntValue, (String) map.get("clickItemTag"));
                break;
            case 78:
                setRefer(iIntValue, (String) map.get("refer"));
                break;
            case 79:
                setQuickAppEventTag(iIntValue, (String) map.get("quickAppEventTag"));
                break;
            case 80:
                w(iIntValue, map);
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME /* 98 */:
                forceWifi(iIntValue);
                break;
            case 100:
                forceHideToast(iIntValue);
                break;
            case 101:
                forceHideNotification(iIntValue);
                break;
            case 123:
                setMd5(iIntValue, (String) map.get(TKDownloadReason.KSAD_TK_MD5));
                break;
            case 124:
                setExpectFileLength(iIntValue, ((Long) map.get("expectFileLength")).longValue());
                break;
            case 125:
                setNeedWifi(iIntValue, ((Boolean) map.get("needWifi")).booleanValue());
                break;
            case 127:
                setExtraValue(iIntValue, ((Long) map.get("extraValue")).longValue());
                break;
            case 128:
                setAppName(iIntValue, (String) map.get(cl.f49061p));
                break;
            case 129:
                setExtra(iIntValue, (JSONObject) map.get("extraJson"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE /* 130 */:
                setStartToast(iIntValue, (String) map.get("startToast"));
                break;
            case 131:
                setSdkMonitorScene(iIntValue, (String) map.get("sdkMonitorScene"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA /* 132 */:
                setId(iIntValue, ((Long) map.get("id")).longValue());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_ACCURATE_START /* 133 */:
                setIsAd(iIntValue, ((Boolean) map.get("isAd")).booleanValue());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_MAX_FPS /* 134 */:
                setModelType(iIntValue, ((Integer) map.get("modelType")).intValue());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET /* 135 */:
                setLogExtra(iIntValue, (String) map.get("logExtra"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH /* 136 */:
                setPackageName(iIntValue, (String) map.get("packageName"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME /* 137 */:
                setAppIcon(iIntValue, (String) map.get("appIcon"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE /* 139 */:
                setClickTrackUrl(iIntValue, (List) map.get("clickTrackUrl"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CODEC_ID /* 140 */:
                setDownloadUrl(iIntValue, (String) map.get("downloadUrl"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID /* 141 */:
                setBackupUrls(iIntValue, (List) map.get("backupUrls"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_META_DATA_INFO /* 142 */:
                setNotificationJumpUrl(iIntValue, (String) map.get("notificationJumpUrl"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SEEK_END_ENABLE /* 143 */:
                setMimeType(iIntValue, (String) map.get("mimeType"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SPADE /* 144 */:
                setHeaders(iIntValue, (Map) map.get("headers"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_SINGLE_PLAY_DOWNLOAD_BYTES /* 145 */:
                setIsShowNotification(iIntValue, ((Boolean) map.get("isShowNotification")).booleanValue());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_LAZY_SEEK /* 146 */:
                setFilePath(iIntValue, (String) map.get("filePath"));
                break;
            case 147:
                setFileName(iIntValue, (String) map.get("fileName"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_EANABLE_DROPPING_DTS_ROLLBACK /* 148 */:
                setNeedIndependentProcess(iIntValue, ((Boolean) map.get("isNeedIndependentProcess")).booleanValue());
                break;
            case 149:
                setVersionCode(iIntValue, ((Integer) map.get("versionCode")).intValue());
                break;
            case 150:
                setVersionName(iIntValue, (String) map.get("versionName"));
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS /* 151 */:
                setQuickAppModel(iIntValue, new j.hp().hp((String) map.get("quickAppModelOpenUrl")).l((String) map.get("quickAppModelExtraData")).hp());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF /* 152 */:
                setAutoInstallWithoutNotification(iIntValue, ((Boolean) map.get("isAutoInstallWithoutNotification")).booleanValue());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT /* 153 */:
                setFunnelType(iIntValue, ((Integer) map.get("funnelType")).intValue());
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_REUSE_SOCKET /* 154 */:
                hp(iIntValue, q(map.get("downloadMarketInterceptor")));
                break;
            case 157:
                Object obj2 = map.get("s");
                if (obj2 instanceof Service) {
                    com.byazt.yk.jx.hp((Context) obj2);
                    break;
                }
                break;
            case 158:
                try {
                    Object obj3 = map.get("i");
                    map.get("c");
                    if (obj3 instanceof Intent) {
                        if (TextUtils.equals(((Intent) obj3).getAction(), "com.csj.install")) {
                            hp((Intent) obj3);
                        } else {
                            ((Intent) obj3).setComponent(new ComponentName(com.byazt.yk.jx.mp(), (Class<?>) DownloadHandlerService.class));
                            com.byazt.yk.jx.mp().startService((Intent) obj3);
                        }
                    }
                    break;
                } catch (Exception e2) {
                    com.byazt.lf.k.hp().hp("start_service", e2);
                    break;
                }
            case 160:
                hp(map);
                break;
            case 162:
                Object obj4 = map.get("listener");
                if (obj4 instanceof com.byazt.gu.l) {
                    v.hp((com.byazt.gu.l) obj4);
                    break;
                }
                break;
        }
        return null;
        return null;
    }

    public boolean distinctDir(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return false;
        }
        return adDownloadModelJx.distinctDir();
    }

    public boolean enableAH(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.enableAH();
    }

    public boolean enableAM(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.enableAM();
    }

    public boolean enableNewActivity(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.enableNewActivity();
    }

    public boolean enableOppoAutoDownload(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.enableOppoAutoDownload();
    }

    public boolean enablePause(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return true;
        }
        return adDownloadModelJx.enablePause();
    }

    public boolean enableShowComplianceDialog(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.enableShowComplianceDialog();
    }

    public void forceHideNotification(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.forceHideNotification();
    }

    public void forceHideToast(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.forceHideToast();
    }

    public void forceWifi(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.forceWifi();
    }

    public String getAppIcon(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getAppIcon();
    }

    public List<String> getBackupUrls(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getBackupUrls();
    }

    public String getClickButtonTag(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickButtonTag();
    }

    public String getClickContinueLabel(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickPauseLabel();
    }

    public String getClickInstallLabel(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickInstallLabel();
    }

    public String getClickItemTag(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickItemTag();
    }

    public String getClickLabel(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickLabel();
    }

    public String getClickPauseLabel(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickPauseLabel();
    }

    public String getClickStartLabel(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getClickStartLabel();
    }

    public List<String> getClickTrackUrl(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getClickTrackUrl();
    }

    public DeepLink getDeepLink(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getDeepLink();
    }

    public int getDownloadChunkCount(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return 1;
        }
        return adDownloadControllerJ.getDowloadChunkCount();
    }

    public int getDownloadScene(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return 0;
        }
        return adDownloadEventConfigW.getDownloadScene();
    }

    public JSONObject getDownloadSettings(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getDownloadSettings();
    }

    public String getDownloadUrl(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getDownloadUrl();
    }

    public JSONObject getEventConfigExtraJson(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return null;
        }
        return adDownloadEventConfigW.getExtraJson();
    }

    public int getExecutorGroup(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 2;
        }
        return adDownloadModelJx.getExecutorGroup();
    }

    public long getExpectFileLength(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 0L;
        }
        return adDownloadModelJx.getExpectFileLength();
    }

    public JSONObject getExtra(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getExtra();
    }

    public Object getExtraClickOperation(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return null;
        }
        return adDownloadControllerJ.getExtraClickOperation();
    }

    public Object getExtraEventObject(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return null;
        }
        return adDownloadEventConfigW.getExtraEventObject();
    }

    public JSONObject getExtraJson(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return null;
        }
        return adDownloadControllerJ.getExtraJson();
    }

    public Object getExtraObject(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return null;
        }
        return adDownloadControllerJ.getExtraObject();
    }

    public long getExtraValue(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 0L;
        }
        return adDownloadModelJx.getExtraValue();
    }

    public String getFileName(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getFileName();
    }

    public String getFilePath(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getFilePath();
    }

    public int getFunnelType(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 1;
        }
        return adDownloadModelJx.getFunnelType();
    }

    public Map<String, String> getHeaders(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getHeaders();
    }

    public long getId(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 0L;
        }
        return adDownloadModelJx.getId();
    }

    public int getInterceptFlag(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return 0;
        }
        return adDownloadControllerJ.getInterceptFlag();
    }

    public int getLinkMode(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return 0;
        }
        return adDownloadControllerJ.getLinkMode();
    }

    public String getLogExtra(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getLogExtra();
    }

    public String getMd5(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getMd5();
    }

    public String getMimeType(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getMimeType();
    }

    public int getModelType(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 0;
        }
        return adDownloadModelJx.getModelType();
    }

    public String getName(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getName();
    }

    public String getNotificationJumpUrl(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getNotificationJumpUrl();
    }

    public String getPackageName(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getPackageName();
    }

    public JSONObject getParamsJson(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return null;
        }
        return adDownloadEventConfigW.getParamsJson();
    }

    public com.byazt.v.j getQuickAppModel(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.getQuickAppModel();
    }

    public String getRefer(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getRefer();
    }

    public String getSdkMonitorScene(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getStartToast();
    }

    public String getStartToast(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getStartToast();
    }

    public String getStorageDenyLabel(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        return adDownloadEventConfigW == null ? "" : adDownloadEventConfigW.getStorageDenyLabel();
    }

    public int getVersionCode(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return 0;
        }
        return adDownloadModelJx.getVersionCode();
    }

    public String getVersionName(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? "" : adDownloadModelJx.getVersionName();
    }

    public void init(Bundle bundle) {
        v.hp(this.f24472l);
        hp();
    }

    public boolean isAd(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return true;
        }
        return adDownloadModelJx.isAd();
    }

    public boolean isAddToDownloadManage(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.isAddToDownloadManage();
    }

    public boolean isAutoDownloadOnCardShow(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.isAutoDownloadOnCardShow();
    }

    public boolean isAutoInstall(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return true;
        }
        return adDownloadModelJx.isAutoInstall();
    }

    public boolean isEnableBackDialog(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.isEnableBackDialog();
    }

    public boolean isEnableClickEvent(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return true;
        }
        return adDownloadEventConfigW.isEnableClickEvent();
    }

    public boolean isEnableMultipleDownload(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.isEnableMultipleDownload();
    }

    public boolean isEnableV3Event(int i2) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return false;
        }
        return adDownloadEventConfigW.isEnableV3Event();
    }

    public boolean isInExternalPublicDir(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return false;
        }
        return adDownloadModelJx.isInExternalPublicDir();
    }

    public boolean isNeedWifi(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return false;
        }
        return adDownloadModelJx.isNeedWifi();
    }

    public boolean isShowNotification(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return true;
        }
        return adDownloadModelJx.isShowNotification();
    }

    public boolean isShowToast(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return true;
        }
        return adDownloadModelJx.isShowToast();
    }

    public boolean isVisibleInDownloadsUi(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return false;
        }
        return adDownloadModelJx.isInExternalPublicDir();
    }

    public boolean needIndependentProcess(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return false;
        }
        return adDownloadModelJx.needIndependentProcess();
    }

    @Deprecated
    public AdDownloadModel setAdId(int i2, long j2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setAdId(j2);
    }

    public AdDownloadModel setAppIcon(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setAppIcon(str);
    }

    public void setAppName(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setAppName(str);
    }

    public AdDownloadModel setAutoInstallWithoutNotification(int i2, boolean z2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setAutoInstallWithoutNotification(z2);
    }

    public AdDownloadModel setBackupUrls(int i2, List<String> list) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setBackupUrls(list);
    }

    public void setClickButtonTag(int i2, String str) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setClickButtonTag(str);
    }

    public void setClickItemTag(int i2, String str) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setClickItemTag(str);
    }

    public AdDownloadModel setClickTrackUrl(int i2, List<String> list) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setClickTrackUrl(list);
    }

    public AdDownloadModel setDeepLink(int i2, DeepLink deepLink) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setDeepLink(deepLink);
    }

    public void setDownloadScene(int i2, int i3) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setDownloadScene(i3);
    }

    public AdDownloadModel setDownloadUrl(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setDownloadUrl(str);
    }

    public void setEnableNewActivity(int i2, boolean z2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (this.f24470a == null) {
            return;
        }
        adDownloadControllerJ.setEnableNewActivity(z2);
    }

    public void setEnableShowComplianceDialog(int i2, boolean z2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setEnableShowComplianceDialog(z2);
    }

    public void setEventConfigExtraJson(int i2, JSONObject jSONObject) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setExtraJson(jSONObject);
    }

    public void setExpectFileLength(int i2, long j2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setExpectFileLength(j2);
    }

    public void setExtra(int i2, JSONObject jSONObject) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setExtra(jSONObject);
    }

    public void setExtraEventObject(int i2, Object obj) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setExtraEventObject(obj);
    }

    public void setExtraJson(int i2, JSONObject jSONObject) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setExtraJson(jSONObject);
    }

    public void setExtraObject(int i2, Object obj) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setExtraObject(obj);
    }

    public void setExtraValue(int i2, long j2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setExtraValue(j2);
    }

    public AdDownloadModel setFileName(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setFileName(str);
    }

    public AdDownloadModel setFilePath(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setFilePath(str);
    }

    public AdDownloadModel setFileUriProvider(int i2, IDownloadFileUriProvider iDownloadFileUriProvider) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setFileUriProvider(iDownloadFileUriProvider);
    }

    public AdDownloadModel setFunnelType(int i2, int i3) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setFunnelType(i3);
    }

    public AdDownloadModel setHeaders(int i2, Map<String, String> map) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setHeaders(map);
    }

    public AdDownloadModel setId(int i2, long j2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setId(j2);
    }

    public AdDownloadModel setIsAd(int i2, boolean z2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setIsAd(z2);
    }

    public void setIsAutoDownloadOnCardShow(int i2, boolean z2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setIsAutoDownloadOnCardShow(z2);
    }

    public AdDownloadModel setIsShowNotification(int i2, boolean z2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setIsShowNotification(z2);
    }

    public void setIsShowToast(int i2, boolean z2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setIsShowToast(z2);
    }

    public void setLinkMode(int i2, int i3) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setLinkMode(i3);
    }

    public AdDownloadModel setLogExtra(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setLogExtra(str);
    }

    public void setMd5(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setMd5(str);
    }

    public AdDownloadModel setMimeType(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setMimeType(str);
    }

    public AdDownloadModel setModelType(int i2, int i3) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setModelType(i3);
    }

    public AdDownloadModel setNeedIndependentProcess(int i2, boolean z2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setNeedIndependentProcess(z2);
    }

    public void setNeedWifi(int i2, boolean z2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setNeedWifi(z2);
    }

    public AdDownloadModel setNotificationJumpUrl(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setNotificationJumpUrl(str);
    }

    public AdDownloadModel setPackageName(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setPackageName(str);
    }

    public void setParamsJson(int i2, JSONObject jSONObject) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setParamsJson(jSONObject);
    }

    public void setQuickAppEventTag(int i2, String str) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setQuickAppEventTag(str);
    }

    public AdDownloadModel setQuickAppModel(int i2, com.byazt.v.j jVar) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setQuickAppModel(jVar);
    }

    public void setRefer(int i2, String str) {
        AdDownloadEventConfig adDownloadEventConfigW = w(i2);
        if (adDownloadEventConfigW == null) {
            return;
        }
        adDownloadEventConfigW.setRefer(str);
    }

    public void setSdkMonitorScene(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setSdkMonitorScene(str);
    }

    public void setStartToast(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return;
        }
        adDownloadModelJx.setStartToast(str);
    }

    public AdDownloadModel setVersionCode(int i2, int i3) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setVersionCode(i3);
    }

    public AdDownloadModel setVersionName(int i2, String str) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        if (adDownloadModelJx == null) {
            return null;
        }
        return adDownloadModelJx.setVersionName(str);
    }

    public boolean shouldDownloadWithPatchApply(int i2) {
        AdDownloadModel adDownloadModelJx = jx(i2);
        return adDownloadModelJx == null ? com.byazt.pp.l.hp(com.byazt.jb.hp.hp(getDownloadSettings(i2)), getMimeType(i2)) : adDownloadModelJx.shouldDownloadWithPatchApply();
    }

    public boolean shouldUseNewWebView(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return false;
        }
        return adDownloadControllerJ.shouldUseNewWebView();
    }

    public PluginValueSet values() {
        return com.byazt.xi.hp.hp().hp(0, v.hp).hp(1, Boolean.valueOf(v.f24478l)).hp(10000, 3).l();
    }

    private DownloadController a(Object obj) {
        if (obj instanceof DownloadController) {
            return (DownloadController) obj;
        }
        return null;
    }

    private DownloadModel j(Object obj) {
        if (obj instanceof DownloadModel) {
            return (DownloadModel) obj;
        }
        return null;
    }

    private com.byazt.yy.l jx(Object obj) {
        if (obj instanceof com.byazt.yy.l) {
            return (com.byazt.yy.l) obj;
        }
        return null;
    }

    private static boolean l() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Field declaredField;
        try {
            try {
                declaredField = com.byazt.l.j.class.getDeclaredField("l");
                declaredField.setAccessible(true);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            Field declaredField2 = com.byazt.l.j.class.getDeclaredField(com.byazt.t.hp.hp);
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(null);
            if (obj instanceof Integer) {
                int iIntValue = ((Integer) obj).intValue();
                return iIntValue > 107000925 || (iIntValue <= 4061200 && iIntValue > 3000000);
            }
        }
        return declaredField.get(null) instanceof Integer;
    }

    private DownloadEventConfig w(Object obj) {
        if (obj instanceof DownloadEventConfig) {
            return (DownloadEventConfig) obj;
        }
        return null;
    }

    private int eb(int i2) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return 0;
        }
        return adDownloadControllerJ.getDownloadMode();
    }

    private void j(int i2, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        String str = (String) map.get("clickButtonTag");
        String str2 = (String) map.get("clickItemTag");
        String str3 = (String) map.get("clickLabel");
        int iIntValue = ((Integer) map.get("downloadScene")).intValue();
        String str4 = (String) map.get("refer");
        JSONObject jSONObject = (JSONObject) map.get("extraJson");
        JSONObject jSONObject2 = (JSONObject) map.get("paramsJson");
        String str5 = (String) map.get("clickStartLabel");
        String str6 = (String) map.get("clickContinueLabel");
        String str7 = (String) map.get("clickPauseLabel");
        String str8 = (String) map.get("storageDenyLabel");
        String str9 = (String) map.get("clickInstallLabel");
        boolean zBooleanValue = ((Boolean) map.get("isEnableClickEvent")).booleanValue();
        boolean zBooleanValue2 = ((Boolean) map.get("isEnableV3Event")).booleanValue();
        JSONObject jSONObject3 = (JSONObject) map.get("extraEventObject");
        AdDownloadEventConfig.Builder paramsJson = new AdDownloadEventConfig.Builder().setClickButtonTag(str).setClickItemTag(str2).setClickLabel(str3).setClickStartLabel(str5).setClickContinueLabel(str6).setClickPauseLabel(str7).setStorageDenyLabel(str8).setClickInstallLabel(str9).setIsEnableClickEvent(zBooleanValue).setDownloadScene(iIntValue).setIsEnableV3Event(zBooleanValue2).setRefer(str4).setExtraJson(jSONObject).setParamsJson(jSONObject2);
        this.eb.put(Integer.valueOf(i2), paramsJson);
        if (jSONObject3 != null) {
            paramsJson.setExtraEventObject(jSONObject3);
        }
        this.f24474s.put(Integer.valueOf(i2), paramsJson.build());
    }

    private void jx(int i2, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        String str = (String) map.get("clickButtonTag");
        String str2 = (String) map.get("clickItemTag");
        String str3 = (String) map.get("clickStartLabel");
        String str4 = (String) map.get("clickContinueLabel");
        String str5 = (String) map.get("clickPauseLabel");
        String str6 = (String) map.get("storageDenyLabel");
        String str7 = (String) map.get("clickInstallLabel");
        boolean zBooleanValue = ((Boolean) map.get("isEnableClickEvent")).booleanValue();
        boolean zBooleanValue2 = ((Boolean) map.get("isEnableV3Event")).booleanValue();
        JSONObject jSONObject = (JSONObject) map.get("extraEventObject");
        AdDownloadEventConfig.Builder isEnableV3Event = new AdDownloadEventConfig.Builder().setClickButtonTag(str).setClickItemTag(str2).setClickStartLabel(str3).setClickContinueLabel(str4).setClickPauseLabel(str5).setStorageDenyLabel(str6).setClickInstallLabel(str7).setIsEnableClickEvent(zBooleanValue).setIsEnableV3Event(zBooleanValue2);
        this.eb.put(Integer.valueOf(i2), isEnableV3Event);
        if (jSONObject != null) {
            isEnableV3Event.setExtraEventObject(jSONObject);
        }
        this.f24474s.put(Integer.valueOf(i2), isEnableV3Event.build());
    }

    private void w(int i2, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        long jLongValue = ((Long) map.get("expectFileLength")).longValue();
        String str = (String) map.get(TKDownloadReason.KSAD_TK_MD5);
        long jLongValue2 = ((Long) map.get("extraValue")).longValue();
        boolean zBooleanValue = ((Boolean) map.get("isAd")).booleanValue();
        int iIntValue = ((Integer) map.get("modelType")).intValue();
        List<String> list = (List) map.get("clickTrackUrl");
        List<String> list2 = (List) map.get("backupUrls");
        String str2 = (String) map.get("notificationJumpUrl");
        String str3 = (String) map.get("mimeType");
        Map<String, String> map2 = (Map) map.get("headers");
        boolean zBooleanValue2 = ((Boolean) map.get("isShowToast")).booleanValue();
        boolean zBooleanValue3 = ((Boolean) map.get("needWifi")).booleanValue();
        String str4 = (String) map.get("fileName");
        int iIntValue2 = ((Integer) map.get("versionCode")).intValue();
        String str5 = (String) map.get("versionName");
        String str6 = (String) map.get("quickAppModelOpenUrl");
        com.byazt.v.j jVarHp = new j.hp().hp(str6).l((String) map.get("quickAppModelExtraData")).hp();
        int iIntValue3 = ((Integer) map.get("executorGroup")).intValue();
        String str7 = (String) map.get("startToast");
        String str8 = (String) map.get("sdkMonitorScene");
        boolean zBooleanValue4 = ((Boolean) map.get("autoInstall")).booleanValue();
        boolean zBooleanValue5 = ((Boolean) map.get("distinctDir")).booleanValue();
        boolean zBooleanValue6 = ((Boolean) map.get("enablePause")).booleanValue();
        long jLongValue3 = ((Long) map.get("id")).longValue();
        String str9 = (String) map.get("appIcon");
        boolean zBooleanValue7 = ((Boolean) map.get("isShowNotification")).booleanValue();
        boolean zBooleanValue8 = ((Boolean) map.get("isAutoInstallWithoutNotification")).booleanValue();
        String str10 = (String) map.get("logExtra");
        JSONObject jSONObject = (JSONObject) map.get("extraJson");
        JSONObject jSONObject2 = (JSONObject) map.get("downloadSettings");
        String str11 = (String) map.get("filePath");
        String str12 = (String) map.get("downloadUrl");
        String str13 = (String) map.get(cl.f49061p);
        String str14 = (String) map.get("packageName");
        boolean zBooleanValue9 = ((Boolean) map.get("isNeedIndependentProcess")).booleanValue();
        String str15 = (String) map.get("openUrl");
        String str16 = (String) map.get("webTitle");
        String str17 = (String) map.get("webUrl");
        AdDownloadModel.Builder fileUriProvider = new AdDownloadModel.Builder().setExpectFileLength(jLongValue).setMd5(str).setId(jLongValue3).setExtraValue(jLongValue2).setIsAd(zBooleanValue).setModelType(iIntValue).setLogExtra(str10).setAppIcon(str9).setBackupUrls(list2).setNotificationJumpUrl(str2).setClickTrackUrl(list).setMimeType(str3).setHeaders(map2).setIsShowToast(zBooleanValue2).setIsShowNotification(zBooleanValue7).setNeedWifi(zBooleanValue3).setFileName(str4).setVersionCode(iIntValue2).setVersionName(str5).setQuickAppModel(jVarHp).setAutoInstallWithoutNotification(zBooleanValue8).setExecutorGroup(iIntValue3).setStartToast(str7).setSdkMonitorScene(str8).setAutoInstall(zBooleanValue4).setDistinctDir(zBooleanValue5).setEnablePause(zBooleanValue6).setExtra(jSONObject).setFileUriProvider(new IDownloadFileUriProvider() { // from class: com.byazt.po.u.2
            @Override // com.byazt.fn.IDownloadFileUriProvider
            public Uri getUriForFile(String str18, String str19) {
                return u.this.hp(str18, str19);
            }
        });
        if (jSONObject2 != null) {
            fileUriProvider.setDownloadSettings(jSONObject2);
        }
        if (!TextUtils.isEmpty(str11)) {
            fileUriProvider.setFilePath(str11);
        }
        if (!TextUtils.isEmpty(str12)) {
            fileUriProvider.setDownloadUrl(str12);
        }
        if (!TextUtils.isEmpty(str13)) {
            fileUriProvider.setAppName(str13);
        }
        if (!TextUtils.isEmpty(str14)) {
            fileUriProvider.setPackageName(str14);
        }
        fileUriProvider.setNeedIndependentProcess(zBooleanValue9);
        fileUriProvider.setDeepLink(hp(jLongValue3, str15, str16, str17));
        this.jx.put(Integer.valueOf(i2), fileUriProvider);
        this.f24471j.put(Integer.valueOf(i2), fileUriProvider.build());
    }

    private void hp(int i2) {
        this.jx.remove(Integer.valueOf(i2));
        this.f24471j.remove(Integer.valueOf(i2));
        this.f24475w.remove(Integer.valueOf(i2));
        this.f24470a.remove(Integer.valueOf(i2));
        this.eb.remove(Integer.valueOf(i2));
        this.f24474s.remove(Integer.valueOf(i2));
    }

    private DownloadStatusChangeListener l(Object obj) {
        if (obj instanceof DownloadStatusChangeListener) {
            return (DownloadStatusChangeListener) obj;
        }
        return null;
    }

    private void l(int i2, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        int iIntValue = ((Integer) map.get("linkMode")).intValue();
        int iIntValue2 = ((Integer) map.get("downloadMode")).intValue();
        boolean zBooleanValue = ((Boolean) map.get("isEnableBackDialog")).booleanValue();
        boolean zBooleanValue2 = ((Boolean) map.get("isAddToDownloadManage")).booleanValue();
        map.get("extraOperation");
        boolean zBooleanValue3 = ((Boolean) map.get("shouldUseNewWebView")).booleanValue();
        int iIntValue3 = ((Integer) map.get("interceptFlag")).intValue();
        JSONObject jSONObject = (JSONObject) map.get("extraJson");
        Object obj = map.get("extraObject");
        boolean zBooleanValue4 = ((Boolean) map.get("enableShowComplianceDialog")).booleanValue();
        boolean zBooleanValue5 = ((Boolean) map.get("isAutoDownloadOnCardShow")).booleanValue();
        boolean zBooleanValue6 = ((Boolean) map.get("enableNewActivity")).booleanValue();
        boolean zBooleanValue7 = ((Boolean) map.get("isEnableAH")).booleanValue();
        boolean zBooleanValue8 = ((Boolean) map.get("isEnableAM")).booleanValue();
        AdDownloadController.Builder enableOppoAutoDownload = new AdDownloadController.Builder().setLinkMode(iIntValue).setDownloadMode(iIntValue2).setIsEnableBackDialog(zBooleanValue).setIsAddToDownloadManage(zBooleanValue2).setShouldUseNewWebView(zBooleanValue3).setInterceptFlag(iIntValue3).setExtraJson(jSONObject).setExtraObject(obj).setEnableShowComplianceDialog(zBooleanValue4).setIsAutoDownloadOnCardShow(zBooleanValue5).setEnableNewActivity(zBooleanValue6).setEnableAH(zBooleanValue7).setEnableAM(zBooleanValue8).setEnableOppoAutoDownload(((Boolean) map.get("isEnableOppoAutoDownload")).booleanValue());
        this.f24475w.put(Integer.valueOf(i2), enableOppoAutoDownload);
        this.f24470a.put(Integer.valueOf(i2), enableOppoAutoDownload.build());
    }

    private void hp(Intent intent) {
        String str;
        intent.getAction();
        int intExtra = intent.getIntExtra("extra_click_download_ids", -1);
        intent.getIntExtra("extra_click_download_type", -1);
        intent.getStringExtra("extra_tag");
        String stringExtra = intent.getStringExtra("extra_value");
        String stringExtra2 = intent.getStringExtra("extra_log_extra");
        String stringExtra3 = intent.getStringExtra("extra_package_name");
        boolean zL = ky.l(stringExtra3);
        NotificationManager notificationManager = (NotificationManager) this.f24472l.getSystemService("notification");
        com.byazt.hy.hp hpVar = new com.byazt.hy.hp();
        hpVar.eb(stringExtra);
        hpVar.j(stringExtra2);
        hpVar.jx(stringExtra3);
        String str2 = cb.f11292o;
        if (zL) {
            com.byazt.y.q.hp(stringExtra3);
            str = "open";
        } else {
            if (!com.byazt.ni.j.hp(this.f24472l, intExtra)) {
                str2 = "failure";
            }
            str = "install";
        }
        com.byazt.ff.w.hp("notification", hpVar, str, "click_other", null, str2);
        notificationManager.cancel(a(intExtra));
    }

    private void hp(int i2, DownloadMarketInterceptor downloadMarketInterceptor) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setDownloadMarketInterceptor(downloadMarketInterceptor);
    }

    private static boolean hp(IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (iDownloadButtonClickListener == null) {
            return false;
        }
        if (TextUtils.equals(d.f21859s, UMModuleRegister.INNER)) {
            return l();
        }
        return true;
    }

    private AdDownloadModel.Builder hp(long j2, String str, boolean z2, boolean z3, String str2, JSONObject jSONObject, JSONObject jSONObject2, String str3, String str4, String str5, String str6, boolean z4, String str7, String str8, String str9) {
        AdDownloadModel.Builder fileUriProvider = new AdDownloadModel.Builder().setAdId(j2).setAppIcon(str).setIsShowNotification(z2).setAutoInstallWithoutNotification(z3).setLogExtra(str2).setExtra(jSONObject).setDistinctDir(true).setIsAd(true).setFileUriProvider(new IDownloadFileUriProvider() { // from class: com.byazt.po.u.1
            @Override // com.byazt.fn.IDownloadFileUriProvider
            public Uri getUriForFile(String str10, String str11) {
                return u.this.hp(str10, str11);
            }
        });
        if (jSONObject2 != null) {
            fileUriProvider.setDownloadSettings(jSONObject2);
        }
        if (!TextUtils.isEmpty(str3)) {
            fileUriProvider.setFilePath(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            fileUriProvider.setDownloadUrl(str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            fileUriProvider.setAppName(str5);
        }
        if (!TextUtils.isEmpty(str6)) {
            fileUriProvider.setPackageName(str6);
        }
        fileUriProvider.setNeedIndependentProcess(z4);
        fileUriProvider.setDeepLink(hp(j2, str7, str8, str9));
        return fileUriProvider;
    }

    private void hp(Map<String, Object> map) {
        Function<SparseArray<Object>, Object> functionHp = hp();
        if (functionHp == null) {
            com.byazt.ymw.u.l("xgc_dl", "false");
            return;
        }
        try {
            Map map2 = (Map) functionHp.apply(com.byazt.wi.j.hp().hp(161).hp(Map.class).hp(0, map).l());
            if (map2 != null) {
                Notification notification = (Notification) map2.get("notification");
                NotificationManager notificationManager = (NotificationManager) sz.getContext().getSystemService("notification");
                Object obj = map.get("install_download_id");
                notificationManager.notify(a(obj instanceof Integer ? ((Integer) obj).intValue() : 0), notification);
            }
        } catch (Throwable th) {
            com.byazt.ymw.u.l("xgc_dl", "e:" + th.getMessage());
            com.byazt.lf.k.hp().hp("csj_install_notification", th);
        }
    }

    public Map<String, Object> hp(Object obj) {
        HashMap map = new HashMap();
        map.put("params", obj);
        Function<SparseArray<Object>, Object> functionHp = hp();
        if (functionHp == null) {
            return null;
        }
        return (Map) functionHp.apply(com.byazt.wi.j.hp().hp(156).hp(Map.class).hp(0, map).l());
    }

    public Uri hp(String str, String str2) {
        HashMap map = new HashMap();
        map.put("custom_authority", str);
        map.put("custom_file_path", str2);
        Function<SparseArray<Object>, Object> functionHp = hp();
        if (functionHp == null) {
            return null;
        }
        return (Uri) functionHp.apply(com.byazt.wi.j.hp().hp(155).hp(Uri.class).hp(0, map).l());
    }

    private DeepLink hp(long j2, String str, String str2, String str3) {
        DeepLink deepLink = new DeepLink();
        deepLink.setId(j2);
        deepLink.setOpenUrl(str);
        deepLink.setWebTitle(str2);
        deepLink.setWebUrl(str3);
        return deepLink;
    }

    private void hp(int i2, String str, String str2, String str3) {
        AdDownloadModel.Builder builderL = l(i2);
        if (builderL == null) {
            return;
        }
        this.f24471j.put(Integer.valueOf(i2), builderL.setAppIcon(str).setAppName(str2).setPackageName(str3).build());
    }

    private void hp(int i2, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        AdDownloadModel.Builder builderHp = hp(((Long) map.get("id")).longValue(), (String) map.get("appIcon"), ((Boolean) map.get("isShowNotification")).booleanValue(), ((Boolean) map.get("isAutoInstallWithoutNotification")).booleanValue(), (String) map.get("logExtra"), (JSONObject) map.get("extraJson"), (JSONObject) map.get("downloadSettings"), (String) map.get("filePath"), (String) map.get("downloadUrl"), (String) map.get(cl.f49061p), (String) map.get("packageName"), ((Boolean) map.get("isNeedIndependentProcess")).booleanValue(), (String) map.get("openUrl"), (String) map.get("webTitle"), (String) map.get("webUrl"));
        this.jx.put(Integer.valueOf(i2), builderHp);
        this.f24471j.put(Integer.valueOf(i2), builderHp.build());
    }

    private void hp(int i2, int i3, int i4, boolean z2, boolean z3, boolean z4) {
        AdDownloadController.Builder isAddToDownloadManage = new AdDownloadController.Builder().setLinkMode(i3).setDownloadMode(i4).setIsEnableBackDialog(true).setIsAddToDownloadManage(false);
        this.f24475w.put(Integer.valueOf(i2), isAddToDownloadManage);
        if (z2) {
            isAddToDownloadManage.setEnableAH(z3);
            isAddToDownloadManage.setEnableAM(z4);
        }
        this.f24470a.put(Integer.valueOf(i2), isAddToDownloadManage.build());
    }

    private void hp(int i2, int i3) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        adDownloadControllerJ.setDownloadMode(i3);
    }

    private void hp(int i2, boolean z2, DownloadMarketInterceptor downloadMarketInterceptor) {
        AdDownloadController adDownloadControllerJ = j(i2);
        if (adDownloadControllerJ == null) {
            return;
        }
        try {
            adDownloadControllerJ.setDownloadMarketInterceptor(downloadMarketInterceptor);
            adDownloadControllerJ.setEnableOppoAutoDownload(z2);
        } catch (Throwable unused) {
        }
    }
}
