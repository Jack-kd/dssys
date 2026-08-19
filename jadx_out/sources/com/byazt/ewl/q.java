package com.byazt.ewl;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.PluginValueSet;

@com.byazt.kj.hp(hp = {0, 1, 1118, 150})
/* loaded from: classes2.dex */
public class q extends j {

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.sdu.a f19529e;

    public q(com.byazt.xl.hp hpVar) {
        super(hpVar);
    }

    private com.byazt.sdu.w hp() {
        return (com.byazt.sdu.w) this.eb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.ewl.j
    public <T> T callMethod(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        String strStringValue;
        if (i2 == 8143) {
            return (T) Double.valueOf(getCpm());
        }
        int iIntValue = 0;
        if (i2 == 1009) {
            if (!(pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false)) {
                if (hp() == null) {
                    return null;
                }
                hp().j();
                return null;
            }
            com.byazt.sdu.a aVar = this.f19529e;
            if (!(aVar instanceof com.byazt.htw.l)) {
                return null;
            }
            ((com.byazt.htw.l) aVar).j();
            return null;
        }
        if (i2 == 1017) {
            if (hp() == null) {
                return null;
            }
            if (pluginValueSet != null) {
                iIntValue = pluginValueSet.intValue(8014, 0);
                strStringValue = pluginValueSet.stringValue(8015);
            } else {
                strStringValue = "";
            }
            hp().hp(new com.byazt.dq.hp(iIntValue, strStringValue));
            return null;
        }
        if (i2 == 1011) {
            boolean zBooleanValue = pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false;
            if (pluginValueSet != null) {
                pluginValueSet.intValue(8552);
            }
            if (!zBooleanValue) {
                if (hp() == null) {
                    return null;
                }
                hp().l(2);
                return null;
            }
            com.byazt.sdu.a aVar2 = this.f19529e;
            if (!(aVar2 instanceof com.byazt.htw.l)) {
                return null;
            }
            ((com.byazt.htw.l) aVar2).l(2);
            return null;
        }
        if (i2 == 1008) {
            if (!(pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false)) {
                if (hp() == null) {
                    return null;
                }
                hp().w();
                return null;
            }
            com.byazt.sdu.a aVar3 = this.f19529e;
            if (!(aVar3 instanceof com.byazt.htw.l)) {
                return null;
            }
            ((com.byazt.htw.l) aVar3).w();
            return null;
        }
        if (i2 == 1019) {
            boolean zBooleanValue2 = pluginValueSet != null ? pluginValueSet.booleanValue(20040, false) : false;
            if (pluginValueSet != null) {
                pluginValueSet.intValue(8552);
            }
            if (!zBooleanValue2) {
                if (hp() == null) {
                    return null;
                }
                hp().hp(1);
                return null;
            }
            com.byazt.sdu.a aVar4 = this.f19529e;
            if (!(aVar4 instanceof com.byazt.htw.l)) {
                return null;
            }
            ((com.byazt.htw.l) aVar4).hp(1);
            return null;
        }
        if (i2 == 1074) {
            if (hp() != null) {
                return (T) hp().getActivity();
            }
            return null;
        }
        if (i2 == 1051) {
            hp();
            return null;
        }
        if (i2 == 1052) {
            hp();
            return null;
        }
        if (i2 == 6156) {
            if (hp() == null) {
                return null;
            }
            hp().l_();
            return null;
        }
        if (i2 != 8111) {
            return null;
        }
        setCpm(pluginValueSet.doubleValue(8016));
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
    public Bitmap getSplashBitMap() {
        if (((j) this).f19528s != null) {
            Object objApply = ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6163).hp(Bitmap.class).l());
            if (objApply instanceof Bitmap) {
                return (Bitmap) objApply;
            }
        }
        return null;
    }

    @Override // com.byazt.rt.jx
    public void hideSkipBtn() {
        super.hideSkipBtn();
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6165).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public Integer isReadyStatus() {
        return j.isReadyStatus(((j) this).f19528s);
    }

    @Override // com.byazt.rt.jx
    public void showMinWindow(Rect rect, com.byazt.sdu.a aVar) {
        super.showMinWindow(rect, aVar);
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6161).hp(Void.class).hp(20067, rect).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void showSplashAd(ViewGroup viewGroup) {
        super.showSplashAd(viewGroup);
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6152).hp(Void.class).hp(20060, viewGroup).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
        super.showSplashCardView(viewGroup, activity);
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6154).hp(Void.class).hp(20060, viewGroup).hp(20033, activity).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void splashMinWindowAnimationFinish() {
        super.splashMinWindowAnimationFinish();
        if (((j) this).f19528s != null) {
            ((j) this).f19528s.apply(com.byazt.wi.j.hp().hp(6162).hp(Void.class).l());
        }
    }
}
