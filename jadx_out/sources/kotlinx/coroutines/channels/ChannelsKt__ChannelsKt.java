package kotlinx.coroutines.channels;

import kotlinx.coroutines.AbstractC1664h;
import kotlinx.coroutines.channels.j;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class ChannelsKt__ChannelsKt {
    public static final Object a(s sVar, Object obj) {
        Object objL = sVar.l(obj);
        if (objL instanceof j.c) {
            return ((j) AbstractC1664h.b(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sVar, obj, null), 1, null)).k();
        }
        return j.f51593b.c(kotlin.j.f51397a);
    }
}
