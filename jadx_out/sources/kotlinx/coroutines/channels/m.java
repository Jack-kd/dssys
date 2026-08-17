package kotlinx.coroutines.channels;

import java.util.Collection;
import java.util.Map;

/* loaded from: classes5.dex */
public abstract class m {
    public static final void b(ReceiveChannel receiveChannel, Throwable th) {
        ChannelsKt__Channels_commonKt.a(receiveChannel, th);
    }

    public static final Object s(ReceiveChannel receiveChannel, s sVar, kotlin.coroutines.e eVar) {
        return ChannelsKt__DeprecatedKt.s(receiveChannel, sVar, eVar);
    }

    public static final Object t(ReceiveChannel receiveChannel, Collection collection, kotlin.coroutines.e eVar) {
        return ChannelsKt__DeprecatedKt.t(receiveChannel, collection, eVar);
    }

    public static final Object u(ReceiveChannel receiveChannel, kotlin.coroutines.e eVar) {
        return ChannelsKt__Channels_commonKt.c(receiveChannel, eVar);
    }

    public static final Object v(ReceiveChannel receiveChannel, Map map, kotlin.coroutines.e eVar) {
        return ChannelsKt__DeprecatedKt.u(receiveChannel, map, eVar);
    }

    public static final Object w(s sVar, Object obj) {
        return ChannelsKt__ChannelsKt.a(sVar, obj);
    }
}
