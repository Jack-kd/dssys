package com.byazt.aqw;

import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 38})
/* loaded from: classes2.dex */
public abstract class j implements Function<SparseArray<Object>, Object> {
    public PluginValueSet hp;

    private PluginValueSet hp() {
        return com.byazt.xi.hp.hp().l();
    }

    public abstract Map<String, Object> getMediationExtraInfo();

    public abstract void loadDrawToken(Context context, hp hpVar, com.byazt.lg.hp hpVar2, Function<SparseArray<Object>, Object> function);

    public abstract void loadNativeToken(Context context, hp hpVar, com.byazt.lg.jx jxVar, Function<SparseArray<Object>, Object> function);

    public abstract Object mtool(int i2, PluginValueSet pluginValueSet);

    public abstract void preload(Activity activity, List<w> list, int i2, int i3, Function<SparseArray<Object>, Object> function);

    public abstract void requestPermissionIfNecessary(Context context);

    public abstract void requestPermissionIfNecessary(Context context, int[] iArr);

    public abstract void setPulisherDid(String str);

    public abstract void setThemeStatus(int i2);

    public abstract void setUserInfoForSegment(com.byazt.bm.jx jxVar);

    public abstract int showOpenOrInstallAppDialog(com.byazt.lg.j jVar);

    public abstract void updateLocalExtra(Map<String, Object> map);

    public abstract void updatePrivacyConfig(com.byazt.jt.j jVar);

    public PluginValueSet values() {
        PluginValueSet pluginValueSet = this.hp;
        if (pluginValueSet != null) {
            return pluginValueSet;
        }
        PluginValueSet pluginValueSetHp = hp();
        this.hp = pluginValueSetHp;
        return pluginValueSetHp;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        pluginValueSetL.objectValue(-99999985, Class.class);
        switch (iIntValue) {
            case -99999986:
                return values().sparseArray();
            case 270024:
                return getMediationExtraInfo();
            case 271043:
                return mtool(pluginValueSetL.intValue(0), com.byazt.xi.hp.hp((SparseArray<Object>) pluginValueSetL.objectValue(1, SparseArray.class)).l());
            case 271050:
                updateLocalExtra((Map) pluginValueSetL.objectValue(0, Map.class));
                return null;
            default:
                switch (iIntValue) {
                    case 270013:
                        Activity activity = (Activity) pluginValueSetL.objectValue(0, Activity.class);
                        List arrayList = (List) pluginValueSetL.objectValue(1, List.class);
                        if (arrayList == null) {
                            arrayList = new ArrayList(0);
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(new w((Function) it.next()));
                        }
                        preload(activity, arrayList2, pluginValueSetL.intValue(2), pluginValueSetL.intValue(3), (Function) pluginValueSetL.objectValue(4, Function.class));
                        return null;
                    case 270014:
                        setUserInfoForSegment(new com.byazt.bm.jx((SparseArray) pluginValueSetL.objectValue(0, SparseArray.class)));
                        return null;
                    case 270015:
                        setPulisherDid((String) pluginValueSetL.objectValue(0, String.class));
                        return null;
                    case 270016:
                        updatePrivacyConfig(new com.byazt.jt.j((SparseArray) pluginValueSetL.objectValue(0, SparseArray.class)));
                        return null;
                    case 270017:
                        requestPermissionIfNecessary((Context) pluginValueSetL.objectValue(0, Context.class));
                        return null;
                    case 270018:
                        requestPermissionIfNecessary((Context) pluginValueSetL.objectValue(0, Context.class), (int[]) pluginValueSetL.objectValue(1, int[].class));
                        return null;
                    case 270019:
                        setThemeStatus(pluginValueSetL.intValue(0));
                        return null;
                    case 270020:
                        return Integer.class.cast(Integer.valueOf(showOpenOrInstallAppDialog(new com.byazt.lg.j((Function) pluginValueSetL.objectValue(0, Function.class)))));
                    case 270021:
                        Context context = (Context) pluginValueSetL.objectValue(0, Context.class);
                        Function<SparseArray<Object>, Object> function = (Function) pluginValueSetL.objectValue(3, Function.class);
                        loadNativeToken(context, new hp((SparseArray) pluginValueSetL.objectValue(1, SparseArray.class), null), new com.byazt.lg.jx((Function) pluginValueSetL.objectValue(2, Function.class)), function);
                        return null;
                    case 270022:
                        Context context2 = (Context) pluginValueSetL.objectValue(0, Context.class);
                        Function<SparseArray<Object>, Object> function2 = (Function) pluginValueSetL.objectValue(3, Function.class);
                        loadDrawToken(context2, new hp((SparseArray) pluginValueSetL.objectValue(1, SparseArray.class), null), new com.byazt.lg.hp((Function) pluginValueSetL.objectValue(2, Function.class)), function2);
                        return null;
                    default:
                        return null;
                }
        }
    }
}
