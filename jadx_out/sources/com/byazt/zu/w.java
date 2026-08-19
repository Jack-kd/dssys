package com.byazt.zu;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.byazt.fl.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1978, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements Function<SparseArray<Object>, Object> {
    public final TTAdNative.NativeExpressAdListener hp;

    public w(TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        this.hp = nativeExpressAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        switch (valueSetL.intValue(-99999987)) {
            case 153101:
                this.hp.onError(valueSetL.intValue(0), valueSetL.stringValue(1));
                return null;
            case 153102:
                List arrayList = (List) valueSetL.objectValue(0, List.class);
                if (arrayList == null) {
                    arrayList = new ArrayList(0);
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new zy(v.hp(it.next())));
                }
                this.hp.onNativeExpressAdLoad(arrayList2);
                return null;
            default:
                return null;
        }
    }
}
