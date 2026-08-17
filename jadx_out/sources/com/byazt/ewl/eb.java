package com.byazt.ewl;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.qjq.e;
import com.byazt.qt.jl;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.r;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1118, 94})
/* loaded from: classes2.dex */
public class eb extends j {

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.cg.hp f19522e;
    public com.byazt.vne.jx gu;

    public eb(com.byazt.xl.hp hpVar, com.byazt.vne.jx jxVar) {
        super(hpVar);
        this.gu = jxVar;
    }

    private void hp(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, e eVar, List<View> list4) {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8159).hp(Void.class).hp(20033, activity).hp(8067, viewGroup).hp(8068, list).hp(8069, list2).hp(8070, list3).hp(8071, e.hp(eVar)).hp(8053, list4).l());
        }
    }

    @Override // com.byazt.ewl.j
    public <T> T callMethod(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        com.byazt.gpb.hp hpVar;
        com.byazt.gpb.hp hpVar2;
        if (i2 == 8130) {
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.gpb.hp hpVar3 = this.f25333a;
                    if (hpVar3 != null) {
                        hpVar3.hp(null);
                    }
                } else {
                    com.byazt.qjq.l lVar = this.hp;
                    if (lVar != null) {
                        lVar.hp(null);
                    }
                }
            } else if (getAdType() == 9 && (hpVar2 = this.f25333a) != null) {
                hpVar2.hp(null);
            }
        } else if (i2 == 8113) {
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.gpb.hp hpVar4 = this.f25333a;
                    if (hpVar4 != null) {
                        hpVar4.hp();
                    }
                } else {
                    com.byazt.qjq.l lVar2 = this.hp;
                    if (lVar2 != null) {
                        lVar2.hp();
                    }
                }
            } else if (getAdType() == 9 && (hpVar = this.f25333a) != null) {
                hpVar.hp();
            }
        } else if (i2 == 8131) {
            if (this.gu != null) {
                this.gu.nativeDislikeClick(this, pluginValueSet.stringValue(8036));
            }
        } else if (i2 == 8132) {
            com.byazt.xl.hp hpVar5 = ((j) this).f19527q;
            if (hpVar5 != null) {
                com.byazt.xoi.hp.hp(hpVar5.l());
            }
            if (this.f19522e != null) {
                this.f19522e.hp(pluginValueSet.intValue(8038), pluginValueSet.stringValue(8039), false);
            }
        } else if (i2 == 8133) {
            float fFloatValue = pluginValueSet.floatValue(8040);
            float fFloatValue2 = pluginValueSet.floatValue(8041);
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.gpb.hp hpVar6 = this.f25333a;
                    if (hpVar6 instanceof com.byazt.gpb.j) {
                        ((com.byazt.gpb.j) hpVar6).hp(fFloatValue, fFloatValue2);
                    }
                } else {
                    com.byazt.qjq.l lVar3 = this.hp;
                    if (lVar3 instanceof com.byazt.qjq.a) {
                        ((com.byazt.qjq.a) lVar3).hp(fFloatValue, fFloatValue2);
                    }
                }
            } else if (getAdType() == 9) {
                com.byazt.gpb.hp hpVar7 = this.f25333a;
                if (hpVar7 instanceof com.byazt.gpb.j) {
                    ((com.byazt.gpb.j) hpVar7).hp(fFloatValue, fFloatValue2);
                }
            }
        } else if (i2 == 8134) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            View view = (View) pluginValueSet.objectValue(8042, View.class);
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.gpb.hp hpVar8 = this.f25333a;
                    if (hpVar8 instanceof com.byazt.gpb.j) {
                        ((com.byazt.gpb.j) hpVar8).hp(view, strStringValue, iIntValue);
                    }
                } else {
                    com.byazt.qjq.l lVar4 = this.hp;
                    if (lVar4 instanceof com.byazt.qjq.a) {
                        ((com.byazt.qjq.a) lVar4).hp(view, strStringValue, iIntValue);
                    }
                }
            } else if (getAdType() == 9) {
                com.byazt.gpb.hp hpVar9 = this.f25333a;
                if (hpVar9 instanceof com.byazt.gpb.j) {
                    ((com.byazt.gpb.j) hpVar9).hp(view, strStringValue, iIntValue);
                }
            }
        } else if (i2 == 8140) {
            String strStringValue2 = pluginValueSet.stringValue(8045);
            String strStringValue3 = pluginValueSet.stringValue(8046);
            int iIntValue2 = pluginValueSet.intValue(8047);
            String strStringValue4 = pluginValueSet.stringValue(8048);
            String strStringValue5 = pluginValueSet.stringValue(8049);
            String strStringValue6 = pluginValueSet.stringValue(8050);
            int iIntValue3 = pluginValueSet.intValue(8051);
            int iIntValue4 = pluginValueSet.intValue(8052);
            List<String> list = (List) pluginValueSet.objectValue(8053, List.class);
            String strStringValue7 = pluginValueSet.stringValue(8054);
            boolean zBooleanValue = pluginValueSet.booleanValue(8055);
            String strStringValue8 = pluginValueSet.stringValue(8056);
            String strStringValue9 = pluginValueSet.stringValue(8057);
            Object objObjectValue = pluginValueSet.objectValue(8036, Object.class);
            String strStringValue10 = pluginValueSet.stringValue(8058);
            double dDoubleValue = pluginValueSet.doubleValue(8016);
            boolean zBooleanValue2 = pluginValueSet.booleanValue(8033);
            int iIntValue5 = pluginValueSet.intValue(8060);
            String strStringValue11 = pluginValueSet.stringValue(8061);
            String strStringValue12 = pluginValueSet.stringValue(8061);
            long jLongValue = pluginValueSet.longValue(8078);
            String strStringValue13 = pluginValueSet.stringValue(8079);
            Map<String, String> map = (Map) pluginValueSet.objectValue(8427, Map.class);
            String strStringValue14 = pluginValueSet.stringValue(8080);
            String strStringValue15 = pluginValueSet.stringValue(8081);
            double dDoubleValue2 = pluginValueSet.doubleValue(8082);
            int iIntValue6 = pluginValueSet.intValue(8059);
            String strStringValue16 = pluginValueSet.stringValue(8551);
            String strStringValue17 = pluginValueSet.stringValue(8559);
            int iIntValue7 = pluginValueSet.intValue(8553);
            setTitle(strStringValue2);
            setAdDescription(strStringValue3);
            setAppSize(iIntValue2);
            setIconUrl(strStringValue4);
            setSource(strStringValue5);
            setImageUrl(strStringValue6);
            setImageHeight(iIntValue3);
            setImageWidth(iIntValue4);
            setImages(list);
            setPackageName(strStringValue7);
            setIsAppDownload(zBooleanValue);
            setAppName(strStringValue8);
            setAuthorName(strStringValue9);
            if (TextUtils.equals(getAdNetWorkName(), "baidu")) {
                putExtraMsg(MediationConstant.BAIDU_DISLIKE_INFO, objObjectValue);
            }
            setLevelTag(strStringValue10);
            setCpm(dDoubleValue);
            setExpressAd(zBooleanValue2);
            setImageMode(iIntValue5);
            setActionText(strStringValue11);
            setStore(strStringValue12);
            setPackageSizeBytes(jLongValue);
            setPermissionsUrl(strStringValue13);
            setPermissionsMap(map);
            setPrivacyAgreement(strStringValue14);
            setVersionName(strStringValue15);
            setRating(dDoubleValue2);
            setInteractionType(iIntValue6);
            setFunctionDescUrl(strStringValue16);
            setRegUrl(strStringValue17);
            setSupportRender(iIntValue7);
        } else {
            if (i2 == 8143) {
                return (T) Double.valueOf(getCpm());
            }
            if (i2 == 8145) {
                com.byazt.qjq.s sVar = this.f25343l;
                if (sVar != null) {
                    sVar.l();
                }
            } else if (i2 == 8146) {
                com.byazt.qjq.s sVar2 = this.f25343l;
                if (sVar2 != null) {
                    sVar2.jx();
                }
            } else if (i2 == 8118) {
                com.byazt.qjq.s sVar3 = this.f25343l;
                if (sVar3 != null) {
                    sVar3.w();
                }
            } else if (i2 == 8117) {
                int iIntValue8 = pluginValueSet.intValue(8014);
                String strStringValue18 = pluginValueSet.stringValue(8015);
                com.byazt.qjq.s sVar4 = this.f25343l;
                if (sVar4 != null) {
                    sVar4.hp(new com.byazt.dq.hp(iIntValue8, strStringValue18));
                }
            } else if (i2 == 8150) {
                com.byazt.qjq.s sVar5 = this.f25343l;
                if (sVar5 != null) {
                    sVar5.j();
                }
            } else if (i2 == 1025) {
                if (this.f25343l != null) {
                    this.f25343l.hp(pluginValueSet.longValue(8072), pluginValueSet.longValue(8073));
                }
            } else if (i2 == 8152) {
                com.byazt.voc.l lVar5 = this.jx;
                if (lVar5 != null) {
                    lVar5.hp();
                }
            } else if (i2 == 8153) {
                com.byazt.voc.l lVar6 = this.jx;
                if (lVar6 != null) {
                    lVar6.l();
                }
            } else if (i2 == 8187) {
                if (this.jx != null) {
                    this.jx.hp(pluginValueSet.longValue(8062), pluginValueSet.longValue(8063), pluginValueSet.intValue(8064), pluginValueSet.intValue(8065), "", "");
                }
            } else if (i2 == 8155) {
                if (this.jx != null) {
                    this.jx.hp(pluginValueSet.longValue(8062), pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else if (i2 == 8156) {
                if (this.jx != null) {
                    this.jx.hp(pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else if (i2 == 8157) {
                if (this.jx != null) {
                    this.jx.l(pluginValueSet.longValue(8062), pluginValueSet.longValue(8063), pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else if (i2 == 8158) {
                if (this.jx != null) {
                    this.jx.hp(pluginValueSet.longValue(8062), pluginValueSet.longValue(8063), pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else {
                if (i2 == 8160) {
                    return (T) Boolean.valueOf(isUseCustomVideo());
                }
                if (i2 == 6069) {
                    return (T) Integer.valueOf(getImageMode());
                }
                if (i2 == 8185) {
                    com.byazt.cg.hp hpVar10 = this.f19522e;
                    if (hpVar10 != null) {
                        hpVar10.hp();
                    }
                } else if (i2 == 8184) {
                    com.byazt.cg.hp hpVar11 = this.f19522e;
                    if (hpVar11 != null) {
                        hpVar11.l();
                    }
                } else {
                    if (i2 == 8196) {
                        return (T) Boolean.valueOf(isExpressAd());
                    }
                    if (i2 == 8197) {
                        com.byazt.voc.w wVar = this.f25341j;
                        if (wVar != null) {
                            wVar.hp();
                        }
                    } else if (i2 == 8227) {
                        if (pluginValueSet != null) {
                            putExtraMsg((Map) pluginValueSet.objectValue(8075, Map.class));
                        }
                    } else if (i2 == 6107 && this.f25354w != null) {
                        this.f25354w.hp(pluginValueSet.intValue(20055));
                    }
                }
            }
        }
        return (T) com.byazt.ror.hp.hp(cls);
    }

    @Override // com.byazt.rt.jx
    public void cancelDownload() {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6093).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void dislikeClick(String str, Map<String, Object> map) {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8194).hp(Integer.class).hp(8036, str).hp(8075, map).l());
        }
    }

    @Override // com.byazt.rt.jx
    public Bitmap getAdLogo() {
        if (TextUtils.equals(getAdnName(), MediationConstant.ADN_GDT)) {
            return com.byazt.ij.j.hp(2);
        }
        if (((j) this).f19528s == null) {
            return super.getAdLogo();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8267).hp(Bitmap.class).l());
        if (objApply instanceof Bitmap) {
            return (Bitmap) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public View getAdView() {
        if (((j) this).f19528s == null) {
            return super.getAdView();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6081).hp(View.class).l());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public int getDownloadStatus() {
        if (((j) this).f19528s == null) {
            return super.getDownloadStatus();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(r.a.f49637r).hp(Integer.class).l());
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    @Override // com.byazt.rt.jx
    public com.byazt.qjq.w getGMNativeCustomVideoReporter() {
        if (((j) this).f19528s == null) {
            return null;
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8320).hp(Function.class).l());
        if (objApply instanceof Function) {
            return com.byazt.im.hp.hp((Function) objApply);
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public String getReqId() {
        if (((j) this).f19528s == null) {
            return super.getReqId();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8147).hp(String.class).l());
        if (objApply instanceof String) {
            return objApply.toString();
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public jl getVideoCoverImage() {
        if (((j) this).f19528s != null) {
            Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8269).hp(Map.class).l());
            if (objApply instanceof Map) {
                Map map = (Map) objApply;
                Object obj = map.get("imgUrl");
                final Object obj2 = map.get("width");
                final Object obj3 = map.get("height");
                final Object obj4 = map.get("valid");
                final Object obj5 = map.get("duration");
                if (obj instanceof String) {
                    final String str = (String) obj;
                    if (!TextUtils.isEmpty(str)) {
                        return new jl() { // from class: com.byazt.ewl.eb.1
                            @Override // com.byazt.qt.jl
                            public double getDuration() {
                                Object obj6 = obj5;
                                if (obj6 instanceof Double) {
                                    return ((Double) obj6).doubleValue();
                                }
                                return 0.0d;
                            }

                            @Override // com.byazt.qt.jl
                            public int getHeight() {
                                Object obj6 = obj3;
                                if (obj6 instanceof Integer) {
                                    return ((Integer) obj6).intValue();
                                }
                                return 0;
                            }

                            @Override // com.byazt.qt.jl
                            public String getImageUrl() {
                                return str;
                            }

                            @Override // com.byazt.qt.jl
                            public int getWidth() {
                                Object obj6 = obj2;
                                if (obj6 instanceof Integer) {
                                    return ((Integer) obj6).intValue();
                                }
                                return 0;
                            }

                            @Override // com.byazt.qt.jl
                            public boolean isValid() {
                                Object obj6 = obj4;
                                return (obj6 instanceof Boolean) && ((Boolean) obj6).booleanValue();
                            }
                        };
                    }
                }
            }
        }
        return super.getVideoCoverImage();
    }

    @Override // com.byazt.rt.jx
    public double getVideoDuration() {
        if (((j) this).f19528s == null) {
            return super.getVideoDuration();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8268).hp(Double.class).l());
        if (objApply instanceof Double) {
            return ((Double) objApply).doubleValue();
        }
        return 0.0d;
    }

    @Override // com.byazt.rt.jx
    public int getVideoHeight() {
        if (((j) this).f19528s == null) {
            return super.getVideoWidth();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8162).hp(Integer.class).l());
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    @Override // com.byazt.rt.jx
    public String getVideoUrl() {
        if (((j) this).f19528s == null) {
            return super.getVideoUrl();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8163).hp(String.class).l());
        return objApply instanceof String ? objApply.toString() : "";
    }

    @Override // com.byazt.rt.jx
    public View getVideoView() {
        if (((j) this).f19528s == null) {
            return super.getVideoView();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6164).hp(View.class).l());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public int getVideoWidth() {
        if (((j) this).f19528s == null) {
            return super.getVideoWidth();
        }
        Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8161).hp(Integer.class).l());
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    @Override // com.byazt.rt.jx
    public boolean hasDislike() {
        try {
            if (((j) this).f19528s != null) {
                Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8135).hp(Boolean.class).l());
                if (objApply instanceof Boolean) {
                    return ((Boolean) objApply).booleanValue();
                }
                return false;
            }
        } catch (Exception unused) {
        }
        return super.hasDislike();
    }

    @Override // com.byazt.rt.jx
    public Integer isReadyStatus() {
        return j.isReadyStatus(((j) this).f19528s);
    }

    @Override // com.byazt.rt.jx
    public void pauseAppDownload() {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8191).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, e eVar, List<View> list4) {
        super.registerViewForInteraction(activity, viewGroup, list, list2, list3, eVar, list4);
        hp(activity, viewGroup, list, list2, list3, eVar, list4);
    }

    @Override // com.byazt.rt.jx
    public void render() {
        super.render();
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6083).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void resumeAppDownload() {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(8192).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void setDislikeCallback(Activity activity, com.byazt.cg.hp hpVar) {
        this.f19522e = hpVar;
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6085).hp(Void.class).hp(20033, activity).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void unregisterView() {
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(r.a.f49639t).hp(Void.class).l());
        }
    }
}
