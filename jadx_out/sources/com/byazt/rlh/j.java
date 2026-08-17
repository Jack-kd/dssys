package com.byazt.rlh;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 38})
/* loaded from: classes3.dex */
public class j extends l {
    public j(String str, com.byazt.ewl.l lVar) {
        super(str, lVar);
    }

    public void callLoadFail(com.byazt.hb.hp hpVar) {
        if (hasNotifyFail()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter 加载成功或者失败回调只能调用一次");
        } else {
            notifyLoadFail(new com.byazt.dq.hp(49010, com.byazt.dq.hp.hp(49010), hpVar == null ? -1 : hpVar.hp(), hpVar == null ? "" : hpVar.l()));
        }
    }

    public void callLoadSucceed(List<Function<SparseArray<Object>, Object>> list) {
        if (list == null) {
            callLoadFail(new com.byazt.hb.hp(49010, "list is null"));
            return;
        }
        if (hasNotifySuccess()) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Function<SparseArray<Object>, Object>> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.byazt.bzj.w(this, it.next()));
        }
        notifyLoadSuccess(arrayList);
    }

    @Override // com.byazt.rlh.l
    public <T> T callManager(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == 8222) {
            boolean zIsExpressRender = isExpressRender();
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed loader : isExpressRender: " + zIsExpressRender);
            return (T) Boolean.valueOf(zIsExpressRender);
        }
        if (i2 == 8223) {
            boolean zIsNativeAd = isNativeAd();
            com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed loader : isNativeAd: " + zIsNativeAd);
            return (T) Boolean.valueOf(zIsNativeAd);
        }
        if (i2 != 8123) {
            if (i2 != 8107) {
                return null;
            }
            List<Function<SparseArray<Object>, Object>> list = (List) pluginValueSet.objectValue(8303, List.class);
            StringBuilder sb = new StringBuilder("Adn custom feed loader : callLoadSucceed  list size:");
            sb.append(list != null ? list.size() : 0);
            com.byazt.aw.l.l(MediationConstant.TAG, sb.toString());
            callLoadSucceed(list);
            return null;
        }
        int iIntValue = pluginValueSet.intValue(8014);
        String strStringValue = pluginValueSet.stringValue(8015);
        com.byazt.aw.l.l(MediationConstant.TAG, "Adn custom feed loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
        callLoaderFail(iIntValue, strStringValue);
        return null;
    }

    public boolean isExpressRender() {
        com.byazt.qy.jx jxVar = ((l) this).f25244l;
        return jxVar != null && jxVar.l() == 1;
    }

    public boolean isNativeAd() {
        com.byazt.qy.jx jxVar = ((l) this).f25244l;
        return jxVar != null && jxVar.l() == 2;
    }
}
