package com.byazt.bzj;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 200, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends s {
    public w(com.byazt.rlh.l lVar, Function<SparseArray<Object>, Object> function) {
        super(lVar, function);
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(8127).hp(Void.class).hp(8034, this).l());
            hp();
        }
    }

    private void hp() {
        PluginValueSet pluginValueSetL = com.byazt.wi.jx.l(((jx) this).f18695q);
        if (pluginValueSetL != null) {
            Map<String, Object> map = (Map) pluginValueSetL.objectValue(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, Map.class);
            String strStringValue = pluginValueSetL.stringValue(8045);
            String strStringValue2 = pluginValueSetL.stringValue(8046);
            String strStringValue3 = pluginValueSetL.stringValue(8048);
            String strStringValue4 = pluginValueSetL.stringValue(8049);
            String strStringValue5 = pluginValueSetL.stringValue(8050);
            int iIntValue = pluginValueSetL.intValue(8051);
            int iIntValue2 = pluginValueSetL.intValue(8052);
            List<String> list = (List) pluginValueSetL.objectValue(8053, List.class);
            String strStringValue6 = pluginValueSetL.stringValue(8054);
            double dDoubleValue = pluginValueSetL.doubleValue(8016);
            boolean zBooleanValue = pluginValueSetL.booleanValue(8033);
            int iIntValue3 = pluginValueSetL.intValue(8060);
            String strStringValue7 = pluginValueSetL.stringValue(8061);
            double dDoubleValue2 = pluginValueSetL.doubleValue(8082);
            int iIntValue4 = pluginValueSetL.intValue(8420);
            int iIntValue5 = pluginValueSetL.intValue(8421);
            int iIntValue6 = pluginValueSetL.intValue(8059);
            Function function = (Function) pluginValueSetL.objectValue(8315, Function.class);
            if (dDoubleValue > 0.0d) {
                setCpm(dDoubleValue);
            }
            setMediaExtraInfo(map);
            setTitle(strStringValue);
            setAdDescription(strStringValue2);
            setIconUrl(strStringValue3);
            setImageUrl(strStringValue5);
            setImageWidth(iIntValue2);
            setImageHeight(iIntValue);
            setActionText(strStringValue7);
            setPackageName(strStringValue6);
            setVideoWidth(iIntValue4);
            setVideoHeight(iIntValue5);
            setRating(dDoubleValue2);
            setImages(list);
            setSource(strStringValue4);
            setExpressAd(zBooleanValue);
            setImageMode(iIntValue3);
            setInteractionType(iIntValue6);
            if (function != null) {
                com.byazt.fsc.hp hpVar = new com.byazt.fsc.hp(function);
                setAppName(hpVar.jx());
                setAuthorName(hpVar.j());
                setPackageSizeBytes(hpVar.w());
                setPermissionsUrl(hpVar.a());
                setPrivacyAgreement(hpVar.s());
                setVersionName(hpVar.q());
                setPermissionsMap(hpVar.eb());
                setFunctionDescUrl(hpVar.l());
                setRegUrl(hpVar.hp());
            }
        }
    }

    @Override // com.byazt.rt.jx, com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 8134) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            View view = (View) pluginValueSet.objectValue(8042, View.class);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeRenderFail code:" + iIntValue + " msg:" + strStringValue + " view" + view);
            callNativeRenderFail(view, strStringValue, iIntValue);
        } else if (i2 == 8133) {
            float fFloatValue = pluginValueSet.floatValue(8040);
            float fFloatValue2 = pluginValueSet.floatValue(8041);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeRenderSuccess width:" + fFloatValue + " height:" + fFloatValue2);
            callNativeRenderSuccess(fFloatValue, fFloatValue2);
        } else if (i2 == 8130) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeAdClick");
            callNativeAdClick();
        } else if (i2 == 8113) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeAdShow");
            callNativeAdShow();
        } else if (i2 == 8145) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeVideoStart");
            callNativeVideoStart();
        } else if (i2 == 8146) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeVideoPause");
            callNativeVideoPause();
        } else if (i2 == 8150) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeVideoResume");
            callNativeVideoResume();
        } else if (i2 == 8118) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeVideoCompleted");
            callNativeVideoCompleted();
        } else if (i2 == 8117) {
            int iIntValue2 = pluginValueSet.intValue(8014);
            String strStringValue2 = pluginValueSet.stringValue(8015);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeVideoError code:" + iIntValue2 + " msg:" + strStringValue2);
            callNativeVideoError(new com.byazt.hb.hp(iIntValue2, strStringValue2));
        } else if (i2 == 8154) {
            long jLongValue = pluginValueSet.longValue(8072);
            long jLongValue2 = pluginValueSet.longValue(8073);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeVideoError current:" + jLongValue + " duration:" + jLongValue2);
            callNativeVideoProgressUpdate(jLongValue, jLongValue2);
        } else if (i2 == 8152) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeOnIdle");
            callNativeOnIdle();
        } else if (i2 == 8187) {
            long jLongValue3 = pluginValueSet.longValue(8062);
            long jLongValue4 = pluginValueSet.longValue(8063);
            pluginValueSet.intValue(8064);
            pluginValueSet.intValue(8065);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeOnDownloadActive totalBytes:" + jLongValue3 + " curlBytes:" + jLongValue4);
            callNativeOnDownloadActive(jLongValue3, jLongValue4, "", "");
        } else if (i2 == 8158) {
            long jLongValue5 = pluginValueSet.longValue(8062);
            long jLongValue6 = pluginValueSet.longValue(8063);
            String strStringValue3 = pluginValueSet.stringValue(8066);
            String strStringValue4 = pluginValueSet.stringValue(8056);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeOnDownloadPaused totalBytes:" + jLongValue5 + " curlBytes:" + jLongValue6 + " fileName:" + strStringValue3 + " appName:" + strStringValue4);
            callNativeOnDownloadPaused(jLongValue5, jLongValue6, strStringValue3, strStringValue4);
        } else if (i2 == 8157) {
            long jLongValue7 = pluginValueSet.longValue(8062);
            long jLongValue8 = pluginValueSet.longValue(8063);
            String strStringValue5 = pluginValueSet.stringValue(8066);
            String strStringValue6 = pluginValueSet.stringValue(8056);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeOnDownloadFailed totalBytes:" + jLongValue7 + " curlBytes:" + jLongValue8 + " fileName:" + strStringValue5 + " appName:" + strStringValue6);
            callNativeOnDownloadFailed(jLongValue7, jLongValue8, strStringValue5, strStringValue6);
        } else if (i2 == 8155) {
            long jLongValue9 = pluginValueSet.longValue(8062);
            String strStringValue7 = pluginValueSet.stringValue(8066);
            String strStringValue8 = pluginValueSet.stringValue(8056);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeOnDownloadFinished totalBytes:" + jLongValue9 + " fileName:" + strStringValue7 + " appName:" + strStringValue8);
            callNativeOnDownloadFinished(jLongValue9, strStringValue7, strStringValue8);
        } else if (i2 == 8156) {
            String strStringValue9 = pluginValueSet.stringValue(8066);
            String strStringValue10 = pluginValueSet.stringValue(8056);
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeOnDownloadFinished  fileName:" + strStringValue9 + " appName:" + strStringValue10);
            callNativeOnInstalled(strStringValue9, strStringValue10);
        } else if (i2 == 8185) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeDislikeShow");
            callNativeDislikeShow();
        } else if (i2 == 8184) {
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeDislikeCancel");
            callNativeDislikeCancel();
        } else if (i2 != 6085) {
            if (i2 == 8110) {
                boolean zIsClientBiddingAd = isClientBiddingAd();
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : isClientBiddingAd :".concat(String.valueOf(zIsClientBiddingAd)));
                return (T) Boolean.valueOf(zIsClientBiddingAd);
            }
            if (i2 == 8136) {
                boolean zIsServerBiddingAd = isServerBiddingAd();
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : isServerBiddingAd :".concat(String.valueOf(zIsServerBiddingAd)));
                return (T) Boolean.valueOf(zIsServerBiddingAd);
            }
            if (i2 == 8160) {
                boolean zIsUseCustomVideo = isUseCustomVideo();
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : isUseCustomVideo :".concat(String.valueOf(zIsUseCustomVideo)));
                return (T) Boolean.valueOf(zIsUseCustomVideo);
            }
            if (i2 == 8226) {
                int adNetworkSlotType = getAdNetworkSlotType();
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : getBiddingType :".concat(String.valueOf(adNetworkSlotType)));
                return (T) Integer.valueOf(adNetworkSlotType);
            }
            if (i2 == 8132) {
                int iIntValue3 = pluginValueSet.intValue(8038);
                String strStringValue11 = pluginValueSet.stringValue(8039);
                com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed ad : callNativeDislikeSelected postion:" + iIntValue3 + " value:" + strStringValue11);
                callNativeDislikeSelected(iIntValue3, strStringValue11);
            }
        }
        return (T) com.byazt.ror.hp.hp(cls);
    }

    public void callNativeAdClick() {
        checkClick(new hp() { // from class: com.byazt.bzj.w.2
            @Override // com.byazt.bzj.hp
            public void hp() {
                if (w.this.getGMNativeAdListener() != null) {
                    w.this.getGMNativeAdListener().hp(null);
                }
            }
        });
    }

    public void callNativeAdShow() {
        checkShow(new hp() { // from class: com.byazt.bzj.w.3
            @Override // com.byazt.bzj.hp
            public void hp() {
                if (w.this.getGMNativeAdListener() != null) {
                    w.this.getGMNativeAdListener().hp();
                }
            }
        });
    }

    public void callNativeDislikeCancel() {
        if (getDislikeCallback() != null) {
            getDislikeCallback().l();
        }
    }

    public void callNativeDislikeSelected(int i2, String str) {
        com.byazt.rlh.l lVar = ((jx) this).f18696s;
        if (lVar != null) {
            lVar.nativeDislikeClick(this, str);
        }
        if (getDislikeCallback() != null) {
            getDislikeCallback().hp(i2, str, false);
        }
    }

    public void callNativeDislikeShow() {
        if (getDislikeCallback() != null) {
            getDislikeCallback().hp();
        }
    }

    public void callNativeOnDownloadActive(long j2, long j3, String str, String str2) {
        if (getGMAdAppDownloadListener() != null) {
            getGMAdAppDownloadListener().hp(j2, j3, -1, 1, str, str2);
        }
    }

    public void callNativeOnDownloadFailed(long j2, long j3, String str, String str2) {
        if (getGMAdAppDownloadListener() != null) {
            getGMAdAppDownloadListener().l(j2, j3, str, str2);
        }
    }

    public void callNativeOnDownloadFinished(long j2, String str, String str2) {
        if (getGMAdAppDownloadListener() != null) {
            getGMAdAppDownloadListener().hp(j2, str, str2);
        }
    }

    public void callNativeOnDownloadPaused(long j2, long j3, String str, String str2) {
        if (getGMAdAppDownloadListener() != null) {
            getGMAdAppDownloadListener().hp(j2, j3, str, str2);
        }
    }

    public void callNativeOnIdle() {
        if (getGMAdAppDownloadListener() != null) {
            getGMAdAppDownloadListener().hp();
        }
    }

    public void callNativeOnInstalled(String str, String str2) {
        if (getGMAdAppDownloadListener() != null) {
            getGMAdAppDownloadListener().hp(str, str2);
        }
    }

    public void callNativeRenderFail(View view, String str, int i2) {
        if (getGMNativeAdListener() instanceof com.byazt.qjq.a) {
            try {
                ((com.byazt.qjq.a) getGMNativeAdListener()).hp(view, str, i2);
            } catch (Exception unused) {
            }
        }
    }

    public void callNativeRenderSuccess(float f2, float f3) {
        if (getGMNativeAdListener() instanceof com.byazt.qjq.a) {
            try {
                ((com.byazt.qjq.a) getGMNativeAdListener()).hp(f2, f3);
            } catch (Exception unused) {
            }
        }
    }

    public void callNativeVideoCompleted() {
        if (getGMVideoListener() != null) {
            getGMVideoListener().w();
        }
    }

    public void callNativeVideoError(com.byazt.hb.hp hpVar) {
        if (getGMVideoListener() != null) {
            getGMVideoListener().hp(new com.byazt.dq.hp(49012, com.byazt.dq.hp.hp(49012), hpVar == null ? -1 : hpVar.hp(), hpVar == null ? "" : hpVar.l()));
        }
    }

    public void callNativeVideoPause() {
        if (getGMVideoListener() != null) {
            getGMVideoListener().jx();
        }
    }

    public void callNativeVideoProgressUpdate(long j2, long j3) {
        if (getGMVideoListener() != null) {
            getGMVideoListener().hp(j2, j3);
        }
    }

    public void callNativeVideoResume() {
        if (getGMVideoListener() != null) {
            getGMVideoListener().j();
        }
    }

    public void callNativeVideoStart() {
        if (getGMVideoListener() != null) {
            getGMVideoListener().l();
        }
    }

    @Override // com.byazt.rt.jx
    public void dislikeClick(String str, Map<String, Object> map) {
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8194).hp(Void.class).hp(8036, str).hp(8075, map).l());
        }
    }

    @Override // com.byazt.rt.jx
    public View getAdView() {
        if (((jx) this).f18695q == null) {
            return super.getAdView();
        }
        Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(6081).hp(View.class).l());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.qt.eb getDislikeDialog(Activity activity) {
        if (((jx) this).f18695q == null) {
            return null;
        }
        Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(6072).hp(Function.class).hp(20033, activity).l());
        if (!(objApply instanceof Function)) {
            return null;
        }
        final com.byazt.aqw.a aVar = new com.byazt.aqw.a((Function) objApply);
        return new com.byazt.qt.eb() { // from class: com.byazt.bzj.w.1
            @Override // com.byazt.qt.eb
            public boolean isShow() {
                return false;
            }

            @Override // com.byazt.qt.eb
            public void resetDislikeStatus() {
            }

            @Override // com.byazt.qt.eb
            public void setDislikeInteractionCallback(com.byazt.cg.hp hpVar) {
                aVar.hp(new com.byazt.fsc.l(hpVar));
            }

            @Override // com.byazt.qt.eb
            public void setDislikeSource(String str) {
            }

            @Override // com.byazt.qt.eb
            public void showDislikeDialog() {
                aVar.hp();
            }
        };
    }

    @Override // com.byazt.rt.jx
    public com.byazt.qjq.w getGMNativeCustomVideoReporter() {
        if (((jx) this).f18695q != null) {
            Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8320).hp(Function.class).l());
            if (objApply instanceof Function) {
                return com.byazt.im.hp.hp((Function) objApply);
            }
        }
        return super.getGMNativeCustomVideoReporter();
    }

    @Override // com.byazt.rt.jx
    public String getVideoUrl() {
        if (((jx) this).f18695q == null) {
            return super.getVideoUrl();
        }
        Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8228).hp(String.class).l());
        if (objApply instanceof String) {
            return objApply.toString();
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public View getVideoView() {
        if (((jx) this).f18695q == null) {
            return super.getVideoView();
        }
        Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(6164).hp(View.class).l());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public boolean hasDislike() {
        if (((jx) this).f18695q == null) {
            return super.hasDislike();
        }
        Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8135).hp(Boolean.class).l());
        return (objApply instanceof Boolean) && ((Boolean) objApply).booleanValue();
    }

    @Override // com.byazt.bzj.jx, com.byazt.rt.jx
    public Integer isReadyStatus() {
        if (((jx) this).f18695q != null) {
            Integer numHp = com.byazt.ktf.hp.hp(((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8121).hp(Object.class).hp(20068, 1).l()));
            if (numHp != null) {
                return numHp;
            }
        }
        return 1;
    }

    @Override // com.byazt.bzj.jx, com.byazt.rt.jx
    public void onDestroy() {
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8109).hp(Void.class).l());
        }
    }

    @Override // com.byazt.bzj.jx, com.byazt.rt.jx
    public void onPause() {
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8149).hp(Void.class).l());
        }
    }

    @Override // com.byazt.bzj.jx, com.byazt.rt.jx
    public void onResume() {
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8148).hp(Void.class).l());
        }
    }

    @Override // com.byazt.bzj.jx
    public void receiveBidResult(boolean z2, double d2, int i2, Map<String, Object> map) {
        super.receiveBidResult(z2, d2, i2, map);
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8225).hp(Void.class).hp(8406, Boolean.valueOf(z2)).hp(8407, Double.valueOf(d2)).hp(8408, Integer.valueOf(i2)).hp(8075, map).l());
        }
    }

    @Override // com.byazt.bzj.s
    public void register(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.qjq.e eVar) {
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8159).hp(Void.class).hp(20033, activity).hp(8067, viewGroup).hp(8068, list).hp(8069, list2).hp(8070, list3).hp(8071, com.byazt.qjq.e.hp(eVar)).l());
        }
    }
}
