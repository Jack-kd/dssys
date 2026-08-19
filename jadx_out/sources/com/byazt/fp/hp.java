package com.byazt.fp;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME, 28})
/* loaded from: classes2.dex */
public class hp<E> extends SparseArray<E> {
    public final ValueSet hp;

    /* renamed from: l, reason: collision with root package name */
    public final PluginValueSet f20086l;

    public hp(ValueSet valueSet) {
        this.hp = valueSet == null ? com.byazt.xi.jx.hp : valueSet;
        this.f20086l = com.byazt.xi.hp.hp;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [E, java.util.ArrayList, java.util.List] */
    private E hp(int i2) {
        List list = (E) this.hp.objectValue(i2, Object.class);
        if (list == null) {
            list = (E) this.f20086l.objectValue(i2, Object.class);
        }
        if (list != null) {
            if (i2 == 9) {
                if (list == Bridge.class) {
                    return Function.class;
                }
                if (list == ValueSet.class) {
                    return SparseArray.class;
                }
            } else {
                if (list instanceof Bridge) {
                    return (E) new jx((Bridge) list);
                }
                if (list instanceof ValueSet) {
                    return (E) new hp((ValueSet) list);
                }
                if (list instanceof EventListener) {
                    return (E) new j((EventListener) list);
                }
                if (list instanceof Result) {
                    return (E) com.byazt.da.hp.hp((Result) list);
                }
                if (list instanceof List) {
                    List list2 = list;
                    if (!list2.isEmpty() && (list2.get(0) instanceof Bridge)) {
                        ?? r02 = (E) new ArrayList();
                        Iterator<E> it = list2.iterator();
                        while (it.hasNext()) {
                            r02.add(new jx((Bridge) it.next()));
                        }
                        return r02;
                    }
                } else if (list instanceof Map) {
                    return (E) com.byazt.da.hp.j(list);
                }
            }
        }
        return (E) list;
    }

    @Override // android.util.SparseArray
    public boolean contains(int i2) {
        return super.contains(i2) || this.hp.containsKey(i2) || this.f20086l.containsKey(i2);
    }

    @Override // android.util.SparseArray
    public E get(int i2, E e2) {
        E e3 = (E) super.get(i2, null);
        if (e3 != null) {
            return e3;
        }
        E eHp = hp(i2);
        return eHp != null ? eHp : e2;
    }

    public hp(PluginValueSet pluginValueSet) {
        this.f20086l = pluginValueSet == null ? com.byazt.xi.hp.hp : pluginValueSet;
        this.hp = com.byazt.xi.jx.hp;
    }
}
